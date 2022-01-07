
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_nl_cmd {int status; int cmd; int complete; } ;
struct tcmu_dev {scalar_t__ nl_reply_supported; struct tcmu_nl_cmd curr_nl_cmd; } ;


 int TCMU_CMD_UNSPEC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int tcmu_kern_cmd_reply_supported ;
 int tcmu_nl_cmd_mutex ;
 int wait_for_completion (int *) ;

__attribute__((used)) static int tcmu_wait_genl_cmd_reply(struct tcmu_dev *udev)
{
 struct tcmu_nl_cmd *nl_cmd = &udev->curr_nl_cmd;
 int ret;

 if (!tcmu_kern_cmd_reply_supported)
  return 0;

 if (udev->nl_reply_supported <= 0)
  return 0;

 pr_debug("sleeping for nl reply\n");
 wait_for_completion(&nl_cmd->complete);

 mutex_lock(&tcmu_nl_cmd_mutex);
 nl_cmd->cmd = TCMU_CMD_UNSPEC;
 ret = nl_cmd->status;
 mutex_unlock(&tcmu_nl_cmd_mutex);

 return ret;
}
