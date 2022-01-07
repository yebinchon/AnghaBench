
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,unsigned int) ;

__attribute__((used)) static void copy_from_cb(void *dst, const void *base, unsigned offset,
    unsigned len, unsigned limit)
{
 unsigned copy = len;

 if ((copy + offset) > limit)
  copy = limit - offset;
 memcpy(dst, base + offset, copy);
 len -= copy;
 if (len)
  memcpy(dst + copy, base, len);
}
