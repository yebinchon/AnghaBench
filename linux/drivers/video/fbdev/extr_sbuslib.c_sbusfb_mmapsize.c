
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long SBUS_MMAP_EMPTY ;

__attribute__((used)) static unsigned long sbusfb_mmapsize(long size, unsigned long fbsize)
{
 if (size == SBUS_MMAP_EMPTY) return 0;
 if (size >= 0) return size;
 return fbsize * (-size);
}
