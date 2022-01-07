
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ fdc_acces_seccount; scalar_t__ dma_mode_status; } ;


 TYPE_1__ dma_wd ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static u8 atari_scsi_falcon_reg_read(unsigned int reg)
{
 unsigned long flags;
 u8 result;

 reg += 0x88;
 local_irq_save(flags);
 dma_wd.dma_mode_status = (u_short)reg;
 result = (u8)dma_wd.fdc_acces_seccount;
 local_irq_restore(flags);
 return result;
}
