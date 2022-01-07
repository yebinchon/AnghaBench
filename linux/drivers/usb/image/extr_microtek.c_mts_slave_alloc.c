
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int inquiry_len; } ;



__attribute__((used)) static int mts_slave_alloc (struct scsi_device *s)
{
 s->inquiry_len = 0x24;
 return 0;
}
