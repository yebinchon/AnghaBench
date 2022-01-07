
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtllib_device {int mode; int rate; int HTCurrentOperaRate; } ;


 int IEEE_MODE_MASK ;

__attribute__((used)) static u8 rtllib_current_rate(struct rtllib_device *ieee)
{
 if (ieee->mode & IEEE_MODE_MASK)
  return ieee->rate;

 if (ieee->HTCurrentOperaRate)
  return ieee->HTCurrentOperaRate;
 else
  return ieee->rate & 0x7F;
}
