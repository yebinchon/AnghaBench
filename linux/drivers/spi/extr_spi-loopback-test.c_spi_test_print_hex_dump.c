
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_INFO ;
 int pr_info (char*,char*,size_t) ;
 int print_hex_dump (int ,char*,int ,int,int,void const*,int,int ) ;

__attribute__((used)) static void spi_test_print_hex_dump(char *pre, const void *ptr, size_t len)
{

 if (len < 1024) {
  print_hex_dump(KERN_INFO, pre,
          DUMP_PREFIX_OFFSET, 16, 1,
          ptr, len, 0);
  return;
 }

 print_hex_dump(KERN_INFO, pre,
         DUMP_PREFIX_OFFSET, 16, 1,
         ptr, 512, 0);

 pr_info("%s truncated - continuing at offset %04zx\n",
  pre, len - 512);
 print_hex_dump(KERN_INFO, pre,
         DUMP_PREFIX_OFFSET, 16, 1,
         ptr + (len - 512), 512, 0);
}
