
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_lun_opts {int dummy; } ;
struct config_item {int dummy; } ;


 int kfree (struct fsg_lun_opts*) ;
 struct fsg_lun_opts* to_fsg_lun_opts (struct config_item*) ;

__attribute__((used)) static void fsg_lun_attr_release(struct config_item *item)
{
 struct fsg_lun_opts *lun_opts;

 lun_opts = to_fsg_lun_opts(item);
 kfree(lun_opts);
}
