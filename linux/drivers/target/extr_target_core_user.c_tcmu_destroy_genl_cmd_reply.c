
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_nl_cmd {int nl_list; } ;
struct tcmu_dev {scalar_t__ nl_reply_supported; struct tcmu_nl_cmd curr_nl_cmd; } ;


 int list_del (int *) ;
 int memset (struct tcmu_nl_cmd*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tcmu_kern_cmd_reply_supported ;
 int tcmu_nl_cmd_mutex ;

__attribute__((used)) static void tcmu_destroy_genl_cmd_reply(struct tcmu_dev *udev)
{
 struct tcmu_nl_cmd *nl_cmd = &udev->curr_nl_cmd;

 if (!tcmu_kern_cmd_reply_supported)
  return;

 if (udev->nl_reply_supported <= 0)
  return;

 mutex_lock(&tcmu_nl_cmd_mutex);

 list_del(&nl_cmd->nl_list);
 memset(nl_cmd, 0, sizeof(*nl_cmd));

 mutex_unlock(&tcmu_nl_cmd_mutex);
}
