
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ST_FIRST_SG ;
 int ST_KILOBYTE ;
 int buffer_kbs ;
 scalar_t__ max_sg_segs ;
 int st_fixed_buffer_size ;
 scalar_t__ st_max_sg_segs ;

__attribute__((used)) static void validate_options(void)
{
 if (buffer_kbs > 0)
  st_fixed_buffer_size = buffer_kbs * ST_KILOBYTE;
 if (max_sg_segs >= ST_FIRST_SG)
  st_max_sg_segs = max_sg_segs;
}
