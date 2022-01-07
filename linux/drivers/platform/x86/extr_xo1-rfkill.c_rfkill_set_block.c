
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char EC_WLAN_ENTER_RESET ;
 unsigned char EC_WLAN_LEAVE_RESET ;
 int card_blocked ;
 int olpc_ec_cmd (unsigned char,int *,int ,int *,int ) ;

__attribute__((used)) static int rfkill_set_block(void *data, bool blocked)
{
 unsigned char cmd;
 int r;

 if (blocked == card_blocked)
  return 0;

 if (blocked)
  cmd = EC_WLAN_ENTER_RESET;
 else
  cmd = EC_WLAN_LEAVE_RESET;

 r = olpc_ec_cmd(cmd, ((void*)0), 0, ((void*)0), 0);
 if (r == 0)
  card_blocked = blocked;

 return r;
}
