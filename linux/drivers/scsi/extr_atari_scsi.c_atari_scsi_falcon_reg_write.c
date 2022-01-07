
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_short ;
typedef scalar_t__ u8 ;
struct TYPE_2__ {void* fdc_acces_seccount; void* dma_mode_status; } ;


 TYPE_1__ dma_wd ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void atari_scsi_falcon_reg_write(unsigned int reg, u8 value)
{
 unsigned long flags;

 reg += 0x88;
 local_irq_save(flags);
 dma_wd.dma_mode_status = (u_short)reg;
 dma_wd.fdc_acces_seccount = (u_short)value;
 local_irq_restore(flags);
}
