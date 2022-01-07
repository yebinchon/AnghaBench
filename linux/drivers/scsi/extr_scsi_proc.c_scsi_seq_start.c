
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
typedef void device ;
typedef int loff_t ;


 void* next_scsi_device (void*) ;

__attribute__((used)) static void *scsi_seq_start(struct seq_file *sfile, loff_t *pos)
{
 struct device *dev = ((void*)0);
 loff_t n = *pos;

 while ((dev = next_scsi_device(dev))) {
  if (!n--)
   break;
  sfile->private++;
 }
 return dev;
}
