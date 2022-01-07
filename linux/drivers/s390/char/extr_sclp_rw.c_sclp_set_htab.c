
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_buffer {unsigned short htab; } ;



void
sclp_set_htab(struct sclp_buffer *buffer, unsigned short htab)
{
 buffer->htab = htab;
}
