
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct scsi_cmnd {int device; } ;


 int DID_ERROR ;
 int KERN_INFO ;
 int atomic_rw ;
 int check_device_access_params (struct scsi_cmnd*,int,int,int) ;
 int do_div (int,int ) ;
 int * fake_storep ;
 int fetch_to_dev_buffer (struct scsi_cmnd*,int *,int) ;
 int map_region (int,int) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int my_name ;
 scalar_t__ scsi_debug_lbp () ;
 int sdebug_sector_size ;
 int sdebug_store_sectors ;
 scalar_t__ sdebug_verbose ;
 int sdev_printk (int ,int ,char*,int ,char*,int,int) ;
 int unmap_region (int,int) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int resp_write_same(struct scsi_cmnd *scp, u64 lba, u32 num,
      u32 ei_lba, bool unmap, bool ndob)
{
 int ret;
 unsigned long iflags;
 unsigned long long i;
 u32 lb_size = sdebug_sector_size;
 u64 block, lbaa;
 u8 *fs1p;

 ret = check_device_access_params(scp, lba, num, 1);
 if (ret)
  return ret;

 write_lock_irqsave(&atomic_rw, iflags);

 if (unmap && scsi_debug_lbp()) {
  unmap_region(lba, num);
  goto out;
 }
 lbaa = lba;
 block = do_div(lbaa, sdebug_store_sectors);

 fs1p = fake_storep + (block * lb_size);
 if (ndob) {
  memset(fs1p, 0, lb_size);
  ret = 0;
 } else
  ret = fetch_to_dev_buffer(scp, fs1p, lb_size);

 if (-1 == ret) {
  write_unlock_irqrestore(&atomic_rw, iflags);
  return DID_ERROR << 16;
 } else if (sdebug_verbose && !ndob && (ret < lb_size))
  sdev_printk(KERN_INFO, scp->device,
       "%s: %s: lb size=%u, IO sent=%d bytes\n",
       my_name, "write same", lb_size, ret);


 for (i = 1 ; i < num ; i++) {
  lbaa = lba + i;
  block = do_div(lbaa, sdebug_store_sectors);
  memmove(fake_storep + (block * lb_size), fs1p, lb_size);
 }
 if (scsi_debug_lbp())
  map_region(lba, num);
out:
 write_unlock_irqrestore(&atomic_rw, iflags);

 return 0;
}
