
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int pr_debug (char*,char*,int,void*) ;
 int print_hex_dump (int ,char*,int ,int,int,void*,int,int) ;

void
cifs_dump_mem(char *label, void *data, int length)
{
 pr_debug("%s: dump of %d bytes of data at 0x%p\n", label, length, data);
 print_hex_dump(KERN_DEBUG, "", DUMP_PREFIX_OFFSET, 16, 4,
         data, length, 1);
}
