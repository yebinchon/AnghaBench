
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_nl_cmd {scalar_t__ cmd; int complete; int nl_list; int status; struct tcmu_dev* udev; } ;
struct tcmu_dev {int name; } ;


 int EBUSY ;
 int EINTR ;
 scalar_t__ TCMU_CMD_UNSPEC ;
 int complete (int *) ;
 int list_del (int *) ;
 int pr_debug (char*,scalar_t__,int ) ;
 int pr_err (char*) ;
 int tcmu_netlink_blocked ;

__attribute__((used)) static int tcmu_fail_netlink_cmd(struct tcmu_nl_cmd *nl_cmd)
{
 struct tcmu_dev *udev = nl_cmd->udev;

 if (!tcmu_netlink_blocked) {
  pr_err("Could not reset device's netlink interface. Netlink is not blocked.\n");
  return -EBUSY;
 }

 if (nl_cmd->cmd != TCMU_CMD_UNSPEC) {
  pr_debug("Aborting nl cmd %d on %s\n", nl_cmd->cmd, udev->name);
  nl_cmd->status = -EINTR;
  list_del(&nl_cmd->nl_list);
  complete(&nl_cmd->complete);
 }
 return 0;
}
