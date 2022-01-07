
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMEDIUMTYPE ;
 int is_power_of_2 (int) ;

__attribute__((used)) static inline int
dasd_check_blocksize(int bsize)
{
 if (bsize < 512 || bsize > 4096 || !is_power_of_2(bsize))
  return -EMEDIUMTYPE;
 return 0;
}
