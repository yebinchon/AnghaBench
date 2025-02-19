
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {unsigned int opt_xfer_blocks; int physical_block_size; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;


 int KERN_INFO ;
 int KERN_WARNING ;
 unsigned int PAGE_SIZE ;
 unsigned int SD_DEF_XFER_BLOCKS ;
 unsigned int logical_to_bytes (struct scsi_device*,unsigned int) ;
 int sd_first_printk (int ,struct scsi_disk*,char*,unsigned int,...) ;

__attribute__((used)) static bool sd_validate_opt_xfer_size(struct scsi_disk *sdkp,
          unsigned int dev_max)
{
 struct scsi_device *sdp = sdkp->device;
 unsigned int opt_xfer_bytes =
  logical_to_bytes(sdp, sdkp->opt_xfer_blocks);

 if (sdkp->opt_xfer_blocks == 0)
  return 0;

 if (sdkp->opt_xfer_blocks > dev_max) {
  sd_first_printk(KERN_WARNING, sdkp,
    "Optimal transfer size %u logical blocks " "> dev_max (%u logical blocks)\n",

    sdkp->opt_xfer_blocks, dev_max);
  return 0;
 }

 if (sdkp->opt_xfer_blocks > SD_DEF_XFER_BLOCKS) {
  sd_first_printk(KERN_WARNING, sdkp,
    "Optimal transfer size %u logical blocks " "> sd driver limit (%u logical blocks)\n",

    sdkp->opt_xfer_blocks, SD_DEF_XFER_BLOCKS);
  return 0;
 }

 if (opt_xfer_bytes < PAGE_SIZE) {
  sd_first_printk(KERN_WARNING, sdkp,
    "Optimal transfer size %u bytes < " "PAGE_SIZE (%u bytes)\n",

    opt_xfer_bytes, (unsigned int)PAGE_SIZE);
  return 0;
 }

 if (opt_xfer_bytes & (sdkp->physical_block_size - 1)) {
  sd_first_printk(KERN_WARNING, sdkp,
    "Optimal transfer size %u bytes not a " "multiple of physical block size (%u bytes)\n",

    opt_xfer_bytes, sdkp->physical_block_size);
  return 0;
 }

 sd_first_printk(KERN_INFO, sdkp, "Optimal transfer size %u bytes\n",
   opt_xfer_bytes);
 return 1;
}
