
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_tape {TYPE_2__* buffer; TYPE_1__* device; } ;
struct TYPE_4__ {unsigned char* b_data; } ;
struct TYPE_3__ {scalar_t__ scsi_level; } ;


 int DEBC_printk (struct scsi_tape*,char*,...) ;
 int EINVAL ;
 int EIO ;
 int KERN_INFO ;
 size_t MH_OFF_BDESCS_LENGTH ;
 unsigned char MODE_HEADER_LENGTH ;
 int MP_OFF_PAGE_LENGTH ;
 int PART_PAGE ;
 unsigned char PART_PAGE_FIXED_LENGTH ;
 unsigned char PP_BIT_FDP ;
 int PP_BIT_IDP ;
 unsigned char PP_MSK_POFM ;
 int PP_MSK_PSUM_MB ;
 unsigned char PP_MSK_PSUM_UNITS ;
 int PP_OFF_FLAGS ;
 int PP_OFF_MAX_ADD_PARTS ;
 int PP_OFF_NBR_ADD_PARTS ;
 int PP_OFF_PART_UNITS ;
 int PP_OFF_RESERVED ;
 scalar_t__ SCSI_3 ;
 int format_medium (struct scsi_tape*,int) ;
 int memset (unsigned char*,int ,unsigned char) ;
 int read_mode_page (struct scsi_tape*,int ,int ) ;
 int st_printk (int ,struct scsi_tape*,char*) ;
 int write_mode_page (struct scsi_tape*,int ,int) ;

__attribute__((used)) static int partition_tape(struct scsi_tape *STp, int size)
{
 int result;
 int target_partition;
 bool scsi3 = STp->device->scsi_level >= SCSI_3, needs_format = 0;
 int pgo, psd_cnt, psdo;
 int psum = PP_MSK_PSUM_MB, units = 0;
 unsigned char *bp;

 result = read_mode_page(STp, PART_PAGE, 0);
 if (result) {
  DEBC_printk(STp, "Can't read partition mode page.\n");
  return result;
 }
 target_partition = 1;
 if (size < 0) {
  target_partition = 0;
  size = -size;
 }


 bp = (STp->buffer)->b_data;
 pgo = MODE_HEADER_LENGTH + bp[MH_OFF_BDESCS_LENGTH];
 DEBC_printk(STp, "Partition page length is %d bytes.\n",
      bp[pgo + MP_OFF_PAGE_LENGTH] + 2);

 psd_cnt = (bp[pgo + MP_OFF_PAGE_LENGTH] + 2 - PART_PAGE_FIXED_LENGTH) / 2;

 if (scsi3) {
  needs_format = (bp[pgo + PP_OFF_FLAGS] & PP_MSK_POFM) != 0;
  if (needs_format && size == 0) {



   DEBC_printk(STp, "Formatting tape with one partition.\n");
   result = format_medium(STp, 0);
   goto out;
  }
  if (needs_format)
   psd_cnt = 2;
  if ((bp[pgo + PP_OFF_FLAGS] & PP_MSK_PSUM_UNITS) == PP_MSK_PSUM_UNITS) {




   if (size >= 1000 && (size % 1000) == 0) {
    size /= 1000;
    psum = PP_MSK_PSUM_UNITS;
    units = 9;
   }
  }

  if (psum == PP_MSK_PSUM_MB && size >= 65534) {
   size /= 1000;
   psum = PP_MSK_PSUM_UNITS;
   units = 9;
  }
 }

 if (size >= 65535 ||
     (target_partition == 0 && psd_cnt < 2)) {
  result = -EINVAL;
  goto out;
 }

 psdo = pgo + PART_PAGE_FIXED_LENGTH;



 if (target_partition > 0 &&
     (psd_cnt > bp[pgo + PP_OFF_MAX_ADD_PARTS] ||
      bp[pgo + PP_OFF_MAX_ADD_PARTS] != 1)) {
  bp[psdo] = bp[psdo + 1] = 0xff;
  psdo += 2;
 }
 memset(bp + psdo, 0, bp[pgo + PP_OFF_NBR_ADD_PARTS] * 2);

 DEBC_printk(STp, "psd_cnt %d, max.parts %d, nbr_parts %d\n",
      psd_cnt, bp[pgo + PP_OFF_MAX_ADD_PARTS],
      bp[pgo + PP_OFF_NBR_ADD_PARTS]);

 if (size == 0) {
  bp[pgo + PP_OFF_NBR_ADD_PARTS] = 0;
  if (psd_cnt <= bp[pgo + PP_OFF_MAX_ADD_PARTS])
      bp[pgo + MP_OFF_PAGE_LENGTH] = 6;
  DEBC_printk(STp, "Formatting tape with one partition.\n");
 } else {
  bp[psdo] = (size >> 8) & 0xff;
  bp[psdo + 1] = size & 0xff;
  if (target_partition == 0)
   bp[psdo + 2] = bp[psdo + 3] = 0xff;
  bp[pgo + 3] = 1;
  if (bp[pgo + MP_OFF_PAGE_LENGTH] < 8)
      bp[pgo + MP_OFF_PAGE_LENGTH] = 8;
  DEBC_printk(STp,
       "Formatting tape with two partitions (%i = %d MB).\n",
       target_partition, units > 0 ? size * 1000 : size);
 }
 bp[pgo + PP_OFF_PART_UNITS] = 0;
 bp[pgo + PP_OFF_RESERVED] = 0;
 if (size != 1 || units != 0) {
  bp[pgo + PP_OFF_FLAGS] = PP_BIT_IDP | psum |
   (bp[pgo + PP_OFF_FLAGS] & 0x07);
  bp[pgo + PP_OFF_PART_UNITS] = units;
 } else
  bp[pgo + PP_OFF_FLAGS] = PP_BIT_FDP |
   (bp[pgo + PP_OFF_FLAGS] & 0x1f);
 bp[pgo + MP_OFF_PAGE_LENGTH] = 6 + psd_cnt * 2;

 result = write_mode_page(STp, PART_PAGE, 1);

 if (!result && needs_format)
  result = format_medium(STp, 1);

 if (result) {
  st_printk(KERN_INFO, STp, "Partitioning of tape failed.\n");
  result = (-EIO);
 }

out:
 return result;
}
