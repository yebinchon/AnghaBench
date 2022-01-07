
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct timestamp_t {int hour; int min; int sec; int year; int mon; int day; } ;
struct file_dentry_t {int access_date; int access_time; int modify_date; int modify_time; int create_date; int create_time; } ;
struct dentry_t {int dummy; } ;


 int SET16_A (int ,int) ;




void exfat_set_entry_time(struct dentry_t *p_entry, struct timestamp_t *tp,
     u8 mode)
{
 u16 t, d;
 struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;

 t = (tp->hour << 11) | (tp->min << 5) | (tp->sec >> 1);
 d = (tp->year << 9) | (tp->mon << 5) | tp->day;

 switch (mode) {
 case 129:
  SET16_A(ep->create_time, t);
  SET16_A(ep->create_date, d);
  break;
 case 128:
  SET16_A(ep->modify_time, t);
  SET16_A(ep->modify_date, d);
  break;
 case 130:
  SET16_A(ep->access_time, t);
  SET16_A(ep->access_date, d);
  break;
 }
}
