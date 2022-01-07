
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pwm_chip {scalar_t__ base; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 rcar_pwm_read(struct rcar_pwm_chip *rp, unsigned int offset)
{
 return readl(rp->base + offset);
}
