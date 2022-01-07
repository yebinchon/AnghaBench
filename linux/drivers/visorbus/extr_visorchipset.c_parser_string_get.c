
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int GFP_KERNEL ;
 void* kzalloc (int,int ) ;
 int memcpy (void*,int *,int) ;
 int strnlen (int *,int) ;

__attribute__((used)) static void *parser_string_get(u8 *pscan, int nscan)
{
 int value_length;
 void *value;

 if (nscan == 0)
  return ((void*)0);

 value_length = strnlen(pscan, nscan);
 value = kzalloc(value_length + 1, GFP_KERNEL);
 if (!value)
  return ((void*)0);
 if (value_length > 0)
  memcpy(value, pscan, value_length);
 return value;
}
