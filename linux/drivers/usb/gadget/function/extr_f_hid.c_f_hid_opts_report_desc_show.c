
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f_hid_opts {int report_desc_length; int lock; int report_desc; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int memcpy (char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct f_hid_opts* to_f_hid_opts (struct config_item*) ;

__attribute__((used)) static ssize_t f_hid_opts_report_desc_show(struct config_item *item, char *page)
{
 struct f_hid_opts *opts = to_f_hid_opts(item);
 int result;

 mutex_lock(&opts->lock);
 result = opts->report_desc_length;
 memcpy(page, opts->report_desc, opts->report_desc_length);
 mutex_unlock(&opts->lock);

 return result;
}
