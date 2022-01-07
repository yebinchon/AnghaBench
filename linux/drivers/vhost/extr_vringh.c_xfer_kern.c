
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static inline int xfer_kern(void *src, void *dst, size_t len)
{
 memcpy(dst, src, len);
 return 0;
}
