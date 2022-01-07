
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct power_per_rate {scalar_t__ bw20; scalar_t__ bw40; int raw; } ;
typedef scalar_t__ s8 ;


 scalar_t__ s6_to_int (int) ;
 int s6_validate (int) ;

__attribute__((used)) static void
mt7601u_set_power_rate(struct power_per_rate *rate, s8 delta, u8 value)
{

 if (value == 0xff)
  return;

 rate->raw = s6_validate(value);
 rate->bw20 = s6_to_int(value);

 rate->bw40 = rate->bw20 + delta;
}
