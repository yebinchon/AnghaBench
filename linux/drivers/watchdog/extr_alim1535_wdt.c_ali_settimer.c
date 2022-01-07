
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ali_timeout_bits ;
 int timeout ;

__attribute__((used)) static int ali_settimer(int t)
{
 if (t < 0)
  return -EINVAL;
 else if (t < 60)
  ali_timeout_bits = t|(1 << 6);
 else if (t < 3600)
  ali_timeout_bits = (t / 60)|(1 << 7);
 else if (t < 18000)
  ali_timeout_bits = (t / 300)|(1 << 6)|(1 << 7);
 else
  return -EINVAL;

 timeout = t;
 return 0;
}
