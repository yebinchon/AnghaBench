
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_qla_host {int dummy; } ;


 int FM93C56A_READ ;
 int fm93c56a_cmd (struct scsi_qla_host*,int ,int) ;
 int fm93c56a_datain (struct scsi_qla_host*,int *) ;
 int fm93c56a_deselect (struct scsi_qla_host*) ;
 int fm93c56a_select (struct scsi_qla_host*) ;

__attribute__((used)) static int eeprom_readword(int eepromAddr, u16 * value,
      struct scsi_qla_host * ha)
{
 fm93c56a_select(ha);
 fm93c56a_cmd(ha, FM93C56A_READ, eepromAddr);
 fm93c56a_datain(ha, value);
 fm93c56a_deselect(ha);
 return 1;
}
