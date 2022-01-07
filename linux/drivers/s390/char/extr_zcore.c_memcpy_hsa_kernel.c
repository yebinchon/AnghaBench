
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ENODATA ;
 unsigned long PAGE_SIZE ;
 int TRACE (char*) ;
 int hsa_available ;
 scalar_t__ hsa_buf ;
 int memcpy (void*,scalar_t__,unsigned long) ;
 unsigned long min (unsigned long,size_t) ;
 scalar_t__ sclp_sdias_copy (scalar_t__,unsigned long,int) ;

int memcpy_hsa_kernel(void *dest, unsigned long src, size_t count)
{
 unsigned long offset, bytes;

 if (!hsa_available)
  return -ENODATA;

 while (count) {
  if (sclp_sdias_copy(hsa_buf, src / PAGE_SIZE + 2, 1)) {
   TRACE("sclp_sdias_copy() failed\n");
   return -EIO;
  }
  offset = src % PAGE_SIZE;
  bytes = min(PAGE_SIZE - offset, count);
  memcpy(dest, hsa_buf + offset, bytes);
  src += bytes;
  dest += bytes;
  count -= bytes;
 }
 return 0;
}
