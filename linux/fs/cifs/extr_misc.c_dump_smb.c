
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_NONE ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;
 scalar_t__ traceSMB ;

void
dump_smb(void *buf, int smb_buf_length)
{
 if (traceSMB == 0)
  return;

 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_NONE, 8, 2, buf,
         smb_buf_length, 1);
}
