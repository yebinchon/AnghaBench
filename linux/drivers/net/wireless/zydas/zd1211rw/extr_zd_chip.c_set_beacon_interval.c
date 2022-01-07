
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct zd_chip {int mutex; } ;
struct aw_pt_bi {int dummy; } ;


 int BCN_MODE_AP ;
 int BCN_MODE_IBSS ;
 int CR_BCN_INTERVAL ;



 int ZD_ASSERT (int ) ;
 int get_aw_pt_bi (struct zd_chip*,struct aw_pt_bi*) ;
 int mutex_is_locked (int *) ;
 int set_aw_pt_bi (struct zd_chip*,struct aw_pt_bi*) ;
 int zd_iowrite32_locked (struct zd_chip*,int,int ) ;

__attribute__((used)) static int set_beacon_interval(struct zd_chip *chip, u16 interval,
          u8 dtim_period, int type)
{
 int r;
 struct aw_pt_bi s;
 u32 b_interval, mode_flag;

 ZD_ASSERT(mutex_is_locked(&chip->mutex));

 if (interval > 0) {
  switch (type) {
  case 130:
  case 128:
   mode_flag = BCN_MODE_IBSS;
   break;
  case 129:
   mode_flag = BCN_MODE_AP;
   break;
  default:
   mode_flag = 0;
   break;
  }
 } else {
  dtim_period = 0;
  mode_flag = 0;
 }

 b_interval = mode_flag | (dtim_period << 16) | interval;

 r = zd_iowrite32_locked(chip, b_interval, CR_BCN_INTERVAL);
 if (r)
  return r;
 r = get_aw_pt_bi(chip, &s);
 if (r)
  return r;
 return set_aw_pt_bi(chip, &s);
}
