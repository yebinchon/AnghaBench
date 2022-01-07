
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct timestamp_t {int sec; int min; int hour; int day; int mon; int year; } ;
struct file_dentry_t {int access_date; int access_time; int modify_date; int modify_time; int create_date; int create_time; } ;
struct dentry_t {int dummy; } ;


 int GET16_A (int ) ;




void exfat_get_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
     u8 mode)
{
 u16 t = 0x00, d = 0x21;
 struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;

 switch (mode) {
 case 129:
  t = GET16_A(ep->create_time);
  d = GET16_A(ep->create_date);
  break;
 case 128:
  t = GET16_A(ep->modify_time);
  d = GET16_A(ep->modify_date);
  break;
 case 130:
  t = GET16_A(ep->access_time);
  d = GET16_A(ep->access_date);
  break;
 }

 tp->sec = (t & 0x001F) << 1;
 tp->min = (t >> 5) & 0x003F;
 tp->hour = (t >> 11);
 tp->day = (d & 0x001F);
 tp->mon = (d >> 5) & 0x000F;
 tp->year = (d >> 9);
}
