
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_buffer {void* sccb; } ;



void *
sclp_unmake_buffer(struct sclp_buffer *buffer)
{
 return buffer->sccb;
}
