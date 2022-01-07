
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hs_header {scalar_t__ frame_content; } ;



__attribute__((used)) static unsigned char
mvumi_calculate_checksum(struct mvumi_hs_header *p_header,
       unsigned short len)
{
 unsigned char *ptr;
 unsigned char ret = 0, i;

 ptr = (unsigned char *) p_header->frame_content;
 for (i = 0; i < len; i++) {
  ret ^= *ptr;
  ptr++;
 }

 return ret;
}
