
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u8 ;


 int ENOMEM ;
 int memset (int *,int ,int ) ;
 int * vmalloc (int ) ;

int
qedf_alloc_grc_dump_buf(u8 **buf, uint32_t len)
{
  *buf = vmalloc(len);
  if (!(*buf))
   return -ENOMEM;

  memset(*buf, 0, len);
  return 0;
}
