
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static inline void copy_mac_addr(unsigned char *des, unsigned char *src)
{
 memcpy(des, src, 6);
}
