
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_nl_cmd {int cmd; int nl_list; int complete; struct tcmu_dev* udev; } ;
struct tcmu_dev {scalar_t__ nl_reply_supported; int name; struct tcmu_nl_cmd curr_nl_cmd; } ;


 int EAGAIN ;
 int EBUSY ;
 int INIT_LIST_HEAD (int *) ;
 int TCMU_CMD_UNSPEC ;
 int init_completion (int *) ;
 int list_add_tail (int *,int *) ;
 int memset (struct tcmu_nl_cmd*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int,int ) ;
 int tcmu_kern_cmd_reply_supported ;
 scalar_t__ tcmu_netlink_blocked ;
 int tcmu_nl_cmd_list ;
 int tcmu_nl_cmd_mutex ;

__attribute__((used)) static int tcmu_init_genl_cmd_reply(struct tcmu_dev *udev, int cmd)
{
 struct tcmu_nl_cmd *nl_cmd = &udev->curr_nl_cmd;

 if (!tcmu_kern_cmd_reply_supported)
  return 0;

 if (udev->nl_reply_supported <= 0)
  return 0;

 mutex_lock(&tcmu_nl_cmd_mutex);

 if (tcmu_netlink_blocked) {
  mutex_unlock(&tcmu_nl_cmd_mutex);
  pr_warn("Failing nl cmd %d on %s. Interface is blocked.\n", cmd,
   udev->name);
  return -EAGAIN;
 }

 if (nl_cmd->cmd != TCMU_CMD_UNSPEC) {
  mutex_unlock(&tcmu_nl_cmd_mutex);
  pr_warn("netlink cmd %d already executing on %s\n",
    nl_cmd->cmd, udev->name);
  return -EBUSY;
 }

 memset(nl_cmd, 0, sizeof(*nl_cmd));
 nl_cmd->cmd = cmd;
 nl_cmd->udev = udev;
 init_completion(&nl_cmd->complete);
 INIT_LIST_HEAD(&nl_cmd->nl_list);

 list_add_tail(&nl_cmd->nl_list, &tcmu_nl_cmd_list);

 mutex_unlock(&tcmu_nl_cmd_mutex);
 return 0;
}
