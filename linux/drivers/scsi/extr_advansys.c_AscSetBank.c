
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int PortAddr ;


 int AscGetChipControl (int ) ;
 int AscSetChipControl (int ,int) ;
 int CC_BANK_ONE ;
 int CC_CHIP_RESET ;
 int CC_DIAG ;
 int CC_SCSI_RESET ;
 int CC_SINGLE_STEP ;
 int CC_TEST ;

__attribute__((used)) static void AscSetBank(PortAddr iop_base, uchar bank)
{
 uchar val;

 val = AscGetChipControl(iop_base) &
     (~
      (CC_SINGLE_STEP | CC_TEST | CC_DIAG | CC_SCSI_RESET |
       CC_CHIP_RESET));
 if (bank == 1) {
  val |= CC_BANK_ONE;
 } else if (bank == 2) {
  val |= CC_DIAG | CC_BANK_ONE;
 } else {
  val &= ~CC_BANK_ONE;
 }
 AscSetChipControl(iop_base, val);
}
