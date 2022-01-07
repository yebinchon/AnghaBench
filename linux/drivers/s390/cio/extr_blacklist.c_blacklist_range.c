
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ range_action ;


 unsigned int __MAX_SUBCHANNEL ;
 scalar_t__ add ;
 int * bl_dev ;
 int clear_bit (unsigned int,int ) ;
 int pr_warn (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static int blacklist_range(range_action action, unsigned int from_ssid,
      unsigned int to_ssid, unsigned int from,
      unsigned int to, int msgtrigger)
{
 if ((from_ssid > to_ssid) || ((from_ssid == to_ssid) && (from > to))) {
  if (msgtrigger)
   pr_warn("0.%x.%04x to 0.%x.%04x is not a valid range for cio_ignore\n",
    from_ssid, from, to_ssid, to);

  return 1;
 }

 while ((from_ssid < to_ssid) || ((from_ssid == to_ssid) &&
        (from <= to))) {
  if (action == add)
   set_bit(from, bl_dev[from_ssid]);
  else
   clear_bit(from, bl_dev[from_ssid]);
  from++;
  if (from > __MAX_SUBCHANNEL) {
   from_ssid++;
   from = 0;
  }
 }

 return 0;
}
