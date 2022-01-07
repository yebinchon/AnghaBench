
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ ext_compat_id; } ;


 int memcpy (char*,scalar_t__,int) ;
 TYPE_1__* to_usb_os_desc (struct config_item*) ;

__attribute__((used)) static ssize_t interf_grp_sub_compatible_id_show(struct config_item *item,
       char *page)
{
 memcpy(page, to_usb_os_desc(item)->ext_compat_id + 8, 8);
 return 8;
}
