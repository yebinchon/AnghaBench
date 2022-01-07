
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timestamp_t {int dummy; } ;
struct file_dentry_t {scalar_t__ access_time_ms; scalar_t__ modify_time_ms; scalar_t__ create_time_ms; } ;
struct dentry_t {int dummy; } ;


 int TM_ACCESS ;
 int TM_CREATE ;
 int TM_MODIFY ;
 int exfat_set_entry_time (struct dentry_t*,struct timestamp_t*,int ) ;
 int exfat_set_entry_type (struct dentry_t*,int ) ;
 struct timestamp_t* tm_current (struct timestamp_t*) ;

void init_file_entry(struct file_dentry_t *ep, u32 type)
{
 struct timestamp_t tm, *tp;

 exfat_set_entry_type((struct dentry_t *)ep, type);

 tp = tm_current(&tm);
 exfat_set_entry_time((struct dentry_t *)ep, tp, TM_CREATE);
 exfat_set_entry_time((struct dentry_t *)ep, tp, TM_MODIFY);
 exfat_set_entry_time((struct dentry_t *)ep, tp, TM_ACCESS);
 ep->create_time_ms = 0;
 ep->modify_time_ms = 0;
 ep->access_time_ms = 0;
}
