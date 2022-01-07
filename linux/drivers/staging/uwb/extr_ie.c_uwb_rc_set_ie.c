
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wEvent; int bEventType; } ;
struct uwb_rc_evt_set_ie {int bResultCode; TYPE_2__ rceb; } ;
struct uwb_rc_cmd_set_ie {int wIELength; int rccb; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
typedef int reply ;


 int EIO ;
 int UWB_RC_CET_GENERAL ;
 int UWB_RC_CMD_SET_IE ;
 int UWB_RC_RES_SUCCESS ;
 int dev_err (struct device*,char*,int,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int uwb_rc_cmd (struct uwb_rc*,char*,int *,scalar_t__,TYPE_2__*,int) ;
 int uwb_rc_strerror (int) ;

int uwb_rc_set_ie(struct uwb_rc *rc, struct uwb_rc_cmd_set_ie *cmd)
{
 int result;
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_rc_evt_set_ie reply;

 reply.rceb.bEventType = UWB_RC_CET_GENERAL;
 reply.rceb.wEvent = UWB_RC_CMD_SET_IE;
 result = uwb_rc_cmd(rc, "SET-IE", &cmd->rccb,
       sizeof(*cmd) + le16_to_cpu(cmd->wIELength),
       &reply.rceb, sizeof(reply));
 if (result < 0)
  goto error_cmd;
 else if (result != sizeof(reply)) {
  dev_err(dev, "SET-IE: not enough data to decode reply "
   "(%d bytes received vs %zu needed)\n",
   result, sizeof(reply));
  result = -EIO;
 } else if (reply.bResultCode != UWB_RC_RES_SUCCESS) {
  dev_err(dev, "SET-IE: command execution failed: %s (%d)\n",
   uwb_rc_strerror(reply.bResultCode), reply.bResultCode);
  result = -EIO;
 } else
  result = 0;
error_cmd:
 return result;
}
