
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct comedi_device {int dummy; } ;


 int ENODATA ;
 scalar_t__ read_idm_word (int const*,size_t,int*,unsigned int*) ;

__attribute__((used)) static int jr3_check_firmware(struct comedi_device *dev,
         const u8 *data, size_t size)
{
 int more = 1;
 int pos = 0;






 while (more) {
  unsigned int count = 0;
  unsigned int addr = 0;

  more = more && read_idm_word(data, size, &pos, &count);
  if (more && count == 0xffff)
   return 0;

  more = more && read_idm_word(data, size, &pos, &addr);
  while (more && count > 0) {
   unsigned int dummy = 0;

   more = more && read_idm_word(data, size, &pos, &dummy);
   count--;
  }
 }

 return -ENODATA;
}
