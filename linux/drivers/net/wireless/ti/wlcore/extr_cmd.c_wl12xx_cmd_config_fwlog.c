
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wl12xx_cmd_config_fwlog {int threshold; int output; int timestamp; int log_severity; int logger_mode; } ;
struct TYPE_3__ {int threshold; int output; int timestamp; int severity; int mode; } ;
struct TYPE_4__ {TYPE_1__ fwlog; } ;
struct wl1271 {TYPE_2__ conf; } ;


 int CMD_CONFIG_FWLOGGER ;
 int DEBUG_CMD ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct wl12xx_cmd_config_fwlog*) ;
 struct wl12xx_cmd_config_fwlog* kzalloc (int,int ) ;
 int wl1271_cmd_send (struct wl1271*,int ,struct wl12xx_cmd_config_fwlog*,int,int ) ;
 int wl1271_debug (int ,char*) ;
 int wl1271_error (char*) ;

int wl12xx_cmd_config_fwlog(struct wl1271 *wl)
{
 struct wl12xx_cmd_config_fwlog *cmd;
 int ret = 0;

 wl1271_debug(DEBUG_CMD, "cmd config firmware logger");

 cmd = kzalloc(sizeof(*cmd), GFP_KERNEL);
 if (!cmd) {
  ret = -ENOMEM;
  goto out;
 }

 cmd->logger_mode = wl->conf.fwlog.mode;
 cmd->log_severity = wl->conf.fwlog.severity;
 cmd->timestamp = wl->conf.fwlog.timestamp;
 cmd->output = wl->conf.fwlog.output;
 cmd->threshold = wl->conf.fwlog.threshold;

 ret = wl1271_cmd_send(wl, CMD_CONFIG_FWLOGGER, cmd, sizeof(*cmd), 0);
 if (ret < 0) {
  wl1271_error("failed to send config firmware logger command");
  goto out_free;
 }

out_free:
 kfree(cmd);

out:
 return ret;
}
