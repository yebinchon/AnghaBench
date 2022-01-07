
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int lun; } ;


 int fsg_store_nofua (int ,char const*,size_t) ;
 TYPE_1__* to_fsg_lun_opts (struct config_item*) ;

__attribute__((used)) static ssize_t fsg_lun_opts_nofua_store(struct config_item *item,
           const char *page, size_t len)
{
 return fsg_store_nofua(to_fsg_lun_opts(item)->lun, page, len);
}
