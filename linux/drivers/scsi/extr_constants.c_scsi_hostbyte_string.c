
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char**) ;
 int host_byte (int) ;
 char** hostbyte_table ;

const char *scsi_hostbyte_string(int result)
{
 const char *hb_string = ((void*)0);
 int hb = host_byte(result);

 if (hb < ARRAY_SIZE(hostbyte_table))
  hb_string = hostbyte_table[hb];
 return hb_string;
}
