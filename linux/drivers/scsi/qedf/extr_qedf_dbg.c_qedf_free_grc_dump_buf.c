
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int vfree (int *) ;

void
qedf_free_grc_dump_buf(uint8_t **buf)
{
  vfree(*buf);
  *buf = ((void*)0);
}
