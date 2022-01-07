
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;
struct btc_coexist {int dummy; } ;





 int halbtc_display_bt_link_info (struct btc_coexist*,struct seq_file*) ;
 int halbtc_display_coex_statistics (struct btc_coexist*,struct seq_file*) ;
 int halbtc_display_wifi_status (struct btc_coexist*,struct seq_file*) ;

__attribute__((used)) static void halbtc_display_dbg_msg(void *bt_context, u8 disp_type,
       struct seq_file *m)
{
 struct btc_coexist *btcoexist = (struct btc_coexist *)bt_context;

 switch (disp_type) {
 case 129:
  halbtc_display_coex_statistics(btcoexist, m);
  break;
 case 130:
  halbtc_display_bt_link_info(btcoexist, m);
  break;
 case 128:
  halbtc_display_wifi_status(btcoexist, m);
  break;
 default:
  break;
 }
}
