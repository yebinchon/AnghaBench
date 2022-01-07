
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int is_usr_def_mapping(u32 format_id)
{
 return (format_id & 0xf0) == 0x40 ? 1 : 0;
}
