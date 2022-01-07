
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int bt_device_info; } ;
struct btc_coexist {TYPE_1__ bt_info; } ;


 int BT_OP_GET_BT_DEVICE_INFO ;
 int halbtc_send_bt_mp_operation (struct btc_coexist*,int ,int *,int,int) ;

__attribute__((used)) static u32 halbtc_get_bt_device_info(void *btc_context)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)btc_context;
 u8 cmd_buffer[4] = {0};


 halbtc_send_bt_mp_operation(btcoexist,
        BT_OP_GET_BT_DEVICE_INFO,
        cmd_buffer, 4, 200);

 return btcoexist->bt_info.bt_device_info;
}
