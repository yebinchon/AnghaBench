
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int * tt_scsi_regp ;

__attribute__((used)) static u8 atari_scsi_tt_reg_read(unsigned int reg)
{
 return tt_scsi_regp[reg * 2];
}
