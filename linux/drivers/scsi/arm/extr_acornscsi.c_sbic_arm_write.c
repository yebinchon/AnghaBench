
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ base; } ;
typedef TYPE_1__ AS_Host ;


 scalar_t__ SBIC_REGIDX ;
 scalar_t__ SBIC_REGVAL ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void sbic_arm_write(AS_Host *host, unsigned int reg, unsigned int value)
{
    writeb(reg, host->base + SBIC_REGIDX);
    writeb(value, host->base + SBIC_REGVAL);
}
