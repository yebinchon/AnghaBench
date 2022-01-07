
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct qla82xx_uri_table_desc {int entry_size; int findex; int num_entries; } ;
typedef size_t __le32 ;


 size_t cpu_to_le32 (int ) ;

__attribute__((used)) static struct qla82xx_uri_table_desc *
qla82xx_get_table_desc(const u8 *unirom, int section)
{
 uint32_t i;
 struct qla82xx_uri_table_desc *directory =
  (struct qla82xx_uri_table_desc *)&unirom[0];
 __le32 offset;
 __le32 tab_type;
 __le32 entries = cpu_to_le32(directory->num_entries);

 for (i = 0; i < entries; i++) {
  offset = cpu_to_le32(directory->findex) +
      (i * cpu_to_le32(directory->entry_size));
  tab_type = cpu_to_le32(*((u32 *)&unirom[offset] + 8));

  if (tab_type == section)
   return (struct qla82xx_uri_table_desc *)&unirom[offset];
 }

 return ((void*)0);
}
