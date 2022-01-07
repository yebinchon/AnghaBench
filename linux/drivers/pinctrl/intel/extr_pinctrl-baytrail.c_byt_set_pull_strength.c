
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int BYT_PULL_STR_10K ;
 int BYT_PULL_STR_20K ;
 int BYT_PULL_STR_2K ;
 int BYT_PULL_STR_40K ;
 int BYT_PULL_STR_MASK ;
 int EINVAL ;

__attribute__((used)) static int byt_set_pull_strength(u32 *reg, u16 strength)
{
 *reg &= ~BYT_PULL_STR_MASK;

 switch (strength) {
 case 2000:
  *reg |= BYT_PULL_STR_2K;
  break;
 case 10000:
  *reg |= BYT_PULL_STR_10K;
  break;
 case 20000:
  *reg |= BYT_PULL_STR_20K;
  break;
 case 40000:
  *reg |= BYT_PULL_STR_40K;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
