
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANDROID_WIFI_CMD_MAX ;
 int * android_wifi_cmd_str ;
 int strlen (int ) ;
 int strncasecmp (char*,int ,int ) ;

int rtw_android_cmdstr_to_num(char *cmdstr)
{
 int cmd_num;

 for (cmd_num = 0; cmd_num < ANDROID_WIFI_CMD_MAX; cmd_num++)
  if (!strncasecmp(cmdstr, android_wifi_cmd_str[cmd_num],
      strlen(android_wifi_cmd_str[cmd_num])))
   break;
 return cmd_num;
}
