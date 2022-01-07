
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct MPT3SAS_ADAPTER {scalar_t__ sense_dma; } ;
typedef int __le32 ;


 int SCSI_SENSE_BUFFERSIZE ;
 int cpu_to_le32 (scalar_t__) ;

__le32
mpt3sas_base_get_sense_buffer_dma(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
 return cpu_to_le32(ioc->sense_dma + ((smid - 1) *
     SCSI_SENSE_BUFFERSIZE));
}
