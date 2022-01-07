
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int adfs_readval(unsigned char *p, int len)
{
 unsigned int val = 0;

 switch (len) {
 case 4: val |= p[3] << 24;

 case 3: val |= p[2] << 16;

 case 2: val |= p[1] << 8;

 default: val |= p[0];
 }
 return val;
}
