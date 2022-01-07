
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlcore_scan_channels {int channels_5; int channels_2; int passive_active; int dfs; int active; int passive; } ;
struct wl18xx_cmd_scan_params {int channels_5; int channels_2; int passive_active; int dfs; int active; int passive; } ;


 int memcpy (int ,int ,int) ;

__attribute__((used)) static void wl18xx_adjust_channels(struct wl18xx_cmd_scan_params *cmd,
       struct wlcore_scan_channels *cmd_channels)
{
 memcpy(cmd->passive, cmd_channels->passive, sizeof(cmd->passive));
 memcpy(cmd->active, cmd_channels->active, sizeof(cmd->active));
 cmd->dfs = cmd_channels->dfs;
 cmd->passive_active = cmd_channels->passive_active;

 memcpy(cmd->channels_2, cmd_channels->channels_2,
        sizeof(cmd->channels_2));
 memcpy(cmd->channels_5, cmd_channels->channels_5,
        sizeof(cmd->channels_5));

}
