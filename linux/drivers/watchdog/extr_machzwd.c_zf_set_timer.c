
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNTER_1 ;
 int COUNTER_2 ;


 int zf_writeb (int ,int) ;
 int zf_writew (int ,unsigned short) ;

__attribute__((used)) static inline void zf_set_timer(unsigned short new, unsigned char n)
{
 switch (n) {
 case 129:
  zf_writew(COUNTER_1, new);

 case 128:
  zf_writeb(COUNTER_2, new > 0xff ? 0xff : new);
 default:
  return;
 }
}
