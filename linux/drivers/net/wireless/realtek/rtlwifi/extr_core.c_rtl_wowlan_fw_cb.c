
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int rtl_fw_do_work (struct firmware const*,void*,int) ;

void rtl_wowlan_fw_cb(const struct firmware *firmware, void *context)
{
 rtl_fw_do_work(firmware, context, 1);
}
