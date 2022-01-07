
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_btc_ops {int dummy; } ;


 struct rtl_btc_ops rtl_btc_operation ;

struct rtl_btc_ops *rtl_btc_get_ops_pointer(void)
{
 return &rtl_btc_operation;
}
