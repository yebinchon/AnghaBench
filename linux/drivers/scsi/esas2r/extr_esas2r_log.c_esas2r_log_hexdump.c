
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 long const event_log_level ;
 int print_hex_dump (int ,char*,int ,int,int,void const*,size_t,int) ;
 int translate_esas2r_event_level_to_kernel (long const) ;

int esas2r_log_hexdump(const long level,
         const void *buf,
         size_t len)
{
 if (level <= event_log_level) {
  print_hex_dump(translate_esas2r_event_level_to_kernel(level),
          "", DUMP_PREFIX_OFFSET, 16, 1, buf,
          len, 1);
 }

 return 1;
}
