
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gvp11_scsiregs {unsigned char SASR; unsigned char SCMD; } ;


 int ENODEV ;
 unsigned char volatile WD_AUXILIARY_STATUS ;
 unsigned char WD_SCSI_STATUS ;
 unsigned char WD_TIMEOUT_PERIOD ;

__attribute__((used)) static int check_wd33c93(struct gvp11_scsiregs *regs)
{
 return 0;
}
