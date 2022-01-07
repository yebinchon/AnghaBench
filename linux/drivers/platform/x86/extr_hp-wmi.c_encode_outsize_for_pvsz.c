
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int encode_outsize_for_pvsz(int outsize)
{
 if (outsize > 4096)
  return -EINVAL;
 if (outsize > 1024)
  return 5;
 if (outsize > 128)
  return 4;
 if (outsize > 4)
  return 3;
 if (outsize > 0)
  return 2;
 return 1;
}
