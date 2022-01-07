
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
typedef unsigned char __u8 ;


 int EINVAL ;
 int EIO ;


 int __gb_hid_get_raw_report (struct hid_device*,unsigned char,unsigned char*,size_t,unsigned char) ;
 int __gb_hid_output_raw_report (struct hid_device*,unsigned char*,size_t,unsigned char) ;

__attribute__((used)) static int gb_hid_raw_request(struct hid_device *hid, unsigned char reportnum,
         __u8 *buf, size_t len, unsigned char rtype,
         int reqtype)
{
 switch (reqtype) {
 case 129:
  return __gb_hid_get_raw_report(hid, reportnum, buf, len, rtype);
 case 128:
  if (buf[0] != reportnum)
   return -EINVAL;
  return __gb_hid_output_raw_report(hid, buf, len, rtype);
 default:
  return -EIO;
 }
}
