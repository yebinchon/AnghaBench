
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int print_hex_dump (int ,char*,int ,int,int,char*,int,int) ;

__attribute__((used)) static void usbip_dump_buffer(char *buff, int bufflen)
{
 print_hex_dump(KERN_DEBUG, "usbip-core", DUMP_PREFIX_OFFSET, 16, 4,
         buff, bufflen, 0);
}
