
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ bt_real_fw_ver; } ;
struct btc_coexist {TYPE_1__ bt_info; } ;


 int BT_OP_GET_BT_VERSION ;
 int halbtc_send_bt_mp_operation (struct btc_coexist*,int ,int *,int,int) ;

__attribute__((used)) static u32 halbtc_get_bt_patch_version(struct btc_coexist *btcoexist)
{
 u8 cmd_buffer[4] = {0};

 if (btcoexist->bt_info.bt_real_fw_ver)
  goto label_done;


 halbtc_send_bt_mp_operation(btcoexist, BT_OP_GET_BT_VERSION,
        cmd_buffer, 4, 200);

label_done:
 return btcoexist->bt_info.bt_real_fw_ver;
}
