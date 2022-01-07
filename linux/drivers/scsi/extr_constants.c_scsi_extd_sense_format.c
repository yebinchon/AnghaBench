
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned short code12; scalar_t__ size; } ;
struct TYPE_4__ {char* fmt; unsigned char code1; unsigned char code2_min; unsigned char code2_max; char const* str; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 TYPE_2__* additional ;
 TYPE_1__* additional2 ;
 char const* additional_text ;

const char *
scsi_extd_sense_format(unsigned char asc, unsigned char ascq, const char **fmt)
{
 int i;
 unsigned short code = ((asc << 8) | ascq);
 unsigned offset = 0;

 *fmt = ((void*)0);
 for (i = 0; i < ARRAY_SIZE(additional); i++) {
  if (additional[i].code12 == code)
   return additional_text + offset;
  offset += additional[i].size;
 }
 for (i = 0; additional2[i].fmt; i++) {
  if (additional2[i].code1 == asc &&
      ascq >= additional2[i].code2_min &&
      ascq <= additional2[i].code2_max) {
   *fmt = additional2[i].fmt;
   return additional2[i].str;
  }
 }
 return ((void*)0);
}
