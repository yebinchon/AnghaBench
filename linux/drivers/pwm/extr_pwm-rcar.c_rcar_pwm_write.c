
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_pwm_chip {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void rcar_pwm_write(struct rcar_pwm_chip *rp, u32 data,
      unsigned int offset)
{
 writel(data, rp->base + offset);
}
