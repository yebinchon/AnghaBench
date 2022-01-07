
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int __data_mapped; } ;
struct device {int dummy; } ;


 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void __unmap_scsi_data(struct device *dev, struct scsi_cmnd *cmd)
{
 switch(cmd->__data_mapped) {
 case 2:
  scsi_dma_unmap(cmd);
  break;
 }
 cmd->__data_mapped = 0;
}
