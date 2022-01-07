
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct scsi_qla_host {int dummy; } ;


 int le16_to_cpu (int ) ;
 int rd_nvram_word (struct scsi_qla_host*,int) ;

u8 rd_nvram_byte(struct scsi_qla_host *ha, int offset)
{
 u16 val = 0;
 u8 rval = 0;
 int index = 0;

 if (offset & 0x1)
  index = (offset - 1) / 2;
 else
  index = offset / 2;

 val = le16_to_cpu(rd_nvram_word(ha, index));

 if (offset & 0x1)
  rval = (u8)((val & 0xff00) >> 8);
 else
  rval = (u8)((val & 0x00ff));

 return rval;
}
