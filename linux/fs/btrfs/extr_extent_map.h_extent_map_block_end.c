
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_map {scalar_t__ block_start; scalar_t__ block_len; } ;



__attribute__((used)) static inline u64 extent_map_block_end(struct extent_map *em)
{
 if (em->block_start + em->block_len < em->block_start)
  return (u64)-1;
 return em->block_start + em->block_len;
}
