
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __le64 ;


 int BIT_MASK (int const) ;
 int DPSW_MAX_IF ;
 int cpu_to_le64 (int ) ;

__attribute__((used)) static void build_if_id_bitmap(__le64 *bmap,
          const u16 *id,
          const u16 num_ifs)
{
 int i;

 for (i = 0; (i < num_ifs) && (i < DPSW_MAX_IF); i++) {
  if (id[i] < DPSW_MAX_IF)
   bmap[id[i] / 64] |= cpu_to_le64(BIT_MASK(id[i] % 64));
 }
}
