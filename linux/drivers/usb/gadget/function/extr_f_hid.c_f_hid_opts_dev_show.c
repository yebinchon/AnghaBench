
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_hid_opts {int minor; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int major ;
 int sprintf (char*,char*,int,int) ;
 struct f_hid_opts* to_f_hid_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_hid_opts_dev_show(struct config_item *item, char *page)
{
 struct f_hid_opts *opts = to_f_hid_opts(item);

 return sprintf(page, "%d:%d\n", major, opts->minor);
}
