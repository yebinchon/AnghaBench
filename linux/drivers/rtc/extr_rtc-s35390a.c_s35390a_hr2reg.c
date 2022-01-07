
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {scalar_t__ twentyfourhour; } ;


 int bin2bcd (int) ;

__attribute__((used)) static char s35390a_hr2reg(struct s35390a *s35390a, int hour)
{
 if (s35390a->twentyfourhour)
  return bin2bcd(hour);

 if (hour < 12)
  return bin2bcd(hour);

 return 0x40 | bin2bcd(hour - 12);
}
