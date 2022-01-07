
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char ARRAY_SIZE (char const**) ;
 char const** snstext ;

const char *
scsi_sense_key_string(unsigned char key)
{
 if (key < ARRAY_SIZE(snstext))
  return snstext[key];
 return ((void*)0);
}
