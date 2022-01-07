
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



void scsi_build_sense_buffer(int desc, u8 *buf, u8 key, u8 asc, u8 ascq)
{
 if (desc) {
  buf[0] = 0x72;
  buf[1] = key;
  buf[2] = asc;
  buf[3] = ascq;
  buf[7] = 0;
 } else {
  buf[0] = 0x70;
  buf[2] = key;
  buf[7] = 0xa;
  buf[12] = asc;
  buf[13] = ascq;
 }
}
