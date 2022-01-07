
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fsg_lun {scalar_t__* inquiry_string; scalar_t__ removable; scalar_t__ cdrom; } ;
struct fsg_common {int bad_lun_okay; scalar_t__* inquiry_string; struct fsg_lun* curlun; } ;
struct fsg_buffhd {scalar_t__ buf; } ;


 int TYPE_DISK ;
 int TYPE_NO_LUN ;
 int TYPE_ROM ;
 int memcpy (int*,scalar_t__*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int do_inquiry(struct fsg_common *common, struct fsg_buffhd *bh)
{
 struct fsg_lun *curlun = common->curlun;
 u8 *buf = (u8 *) bh->buf;

 if (!curlun) {
  common->bad_lun_okay = 1;
  memset(buf, 0, 36);
  buf[0] = TYPE_NO_LUN;
  buf[4] = 31;
  return 36;
 }

 buf[0] = curlun->cdrom ? TYPE_ROM : TYPE_DISK;
 buf[1] = curlun->removable ? 0x80 : 0;
 buf[2] = 2;
 buf[3] = 2;
 buf[4] = 31;
 buf[5] = 0;
 buf[6] = 0;
 buf[7] = 0;
 if (curlun->inquiry_string[0])
  memcpy(buf + 8, curlun->inquiry_string,
         sizeof(curlun->inquiry_string));
 else
  memcpy(buf + 8, common->inquiry_string,
         sizeof(common->inquiry_string));
 return 36;
}
