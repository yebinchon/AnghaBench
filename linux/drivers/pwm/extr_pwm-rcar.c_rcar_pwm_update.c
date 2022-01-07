
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pwm_chip {int dummy; } ;


 int rcar_pwm_read (struct rcar_pwm_chip*,unsigned int) ;
 int rcar_pwm_write (struct rcar_pwm_chip*,int,unsigned int) ;

__attribute__((used)) static void rcar_pwm_update(struct rcar_pwm_chip *rp, u32 mask, u32 data,
       unsigned int offset)
{
 u32 value;

 value = rcar_pwm_read(rp, offset);
 value &= ~mask;
 value |= data & mask;
 rcar_pwm_write(rp, value, offset);
}
