
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {int cyl; int sector; int end_cyl; int end_sector; int end_head; int nr_sects; int start_sect; int sys_ind; } ;


 unsigned int get_unaligned_le32 (int *) ;
 int printk (char*,unsigned int,...) ;

int scsi_partsize(unsigned char *buf, unsigned long capacity,
        unsigned int *cyls, unsigned int *hds, unsigned int *secs)
{
 struct partition *p = (struct partition *)buf, *largest = ((void*)0);
 int i, largest_cyl;
 int cyl, ext_cyl, end_head, end_cyl, end_sector;
 unsigned int logical_end, physical_end, ext_physical_end;


 if (*(unsigned short *) (buf + 64) == 0xAA55) {
  for (largest_cyl = -1, i = 0; i < 4; ++i, ++p) {
   if (!p->sys_ind)
    continue;




   cyl = p->cyl + ((p->sector & 0xc0) << 2);
   if (cyl > largest_cyl) {
    largest_cyl = cyl;
    largest = p;
   }
  }
 }
 if (largest) {
  end_cyl = largest->end_cyl + ((largest->end_sector & 0xc0) << 2);
  end_head = largest->end_head;
  end_sector = largest->end_sector & 0x3f;

  if (end_head + 1 == 0 || end_sector == 0)
   return -1;






  physical_end = end_cyl * (end_head + 1) * end_sector +
      end_head * end_sector + end_sector;


  logical_end = get_unaligned_le32(&largest->start_sect)
      + get_unaligned_le32(&largest->nr_sects);


  ext_cyl = (logical_end - (end_head * end_sector + end_sector))
      / (end_head + 1) / end_sector;
  ext_physical_end = ext_cyl * (end_head + 1) * end_sector +
      end_head * end_sector + end_sector;






  if ((logical_end == physical_end) ||
    (end_cyl == 1023 && ext_physical_end == logical_end)) {
   *secs = end_sector;
   *hds = end_head + 1;
   *cyls = capacity / ((end_head + 1) * end_sector);
   return 0;
  }




 }
 return -1;
}
