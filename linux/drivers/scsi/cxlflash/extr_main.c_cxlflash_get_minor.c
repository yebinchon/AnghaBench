
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long CXLFLASH_MAX_ADAPTERS ;
 long MINORMASK ;
 int cxlflash_minor ;
 long find_first_zero_bit (int ,long) ;
 int set_bit (int,int ) ;

__attribute__((used)) static int cxlflash_get_minor(void)
{
 int minor;
 long bit;

 bit = find_first_zero_bit(cxlflash_minor, CXLFLASH_MAX_ADAPTERS);
 if (bit >= CXLFLASH_MAX_ADAPTERS)
  return -1;

 minor = bit & MINORMASK;
 set_bit(minor, cxlflash_minor);
 return minor;
}
