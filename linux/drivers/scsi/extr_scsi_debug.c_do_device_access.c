
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int nents; int sgl; } ;
struct scsi_data_buffer {TYPE_1__ table; int length; } ;
struct scsi_cmnd {int sc_data_direction; struct scsi_data_buffer sdb; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ do_div (scalar_t__,scalar_t__) ;
 scalar_t__ fake_storep ;
 scalar_t__ sdebug_sector_size ;
 scalar_t__ sdebug_store_sectors ;
 int sg_copy_buffer (int ,int ,scalar_t__,scalar_t__,scalar_t__,int) ;
 int write_since_sync ;

__attribute__((used)) static int do_device_access(struct scsi_cmnd *scmd, u32 sg_skip, u64 lba,
       u32 num, bool do_write)
{
 int ret;
 u64 block, rest = 0;
 struct scsi_data_buffer *sdb = &scmd->sdb;
 enum dma_data_direction dir;

 if (do_write) {
  dir = DMA_TO_DEVICE;
  write_since_sync = 1;
 } else {
  dir = DMA_FROM_DEVICE;
 }

 if (!sdb->length)
  return 0;
 if (scmd->sc_data_direction != dir)
  return -1;

 block = do_div(lba, sdebug_store_sectors);
 if (block + num > sdebug_store_sectors)
  rest = block + num - sdebug_store_sectors;

 ret = sg_copy_buffer(sdb->table.sgl, sdb->table.nents,
     fake_storep + (block * sdebug_sector_size),
     (num - rest) * sdebug_sector_size, sg_skip, do_write);
 if (ret != (num - rest) * sdebug_sector_size)
  return ret;

 if (rest) {
  ret += sg_copy_buffer(sdb->table.sgl, sdb->table.nents,
       fake_storep, rest * sdebug_sector_size,
       sg_skip + ((num - rest) * sdebug_sector_size),
       do_write);
 }

 return ret;
}
