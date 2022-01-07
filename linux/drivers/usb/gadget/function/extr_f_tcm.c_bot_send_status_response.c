
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbg_cmd {int is_read; } ;


 int bot_send_status (struct usbg_cmd*,int) ;

__attribute__((used)) static int bot_send_status_response(struct usbg_cmd *cmd)
{
 bool moved_data = 0;

 if (!cmd->is_read)
  moved_data = 1;
 return bot_send_status(cmd, moved_data);
}
