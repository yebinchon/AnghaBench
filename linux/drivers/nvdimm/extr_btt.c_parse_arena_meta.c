
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btt_sb {scalar_t__ nextoff; scalar_t__ dataoff; scalar_t__ mapoff; scalar_t__ logoff; scalar_t__ info2off; int flags; int version_minor; int version_major; int nfree; int external_lbasize; int external_nlba; int internal_lbasize; int internal_nlba; } ;
struct arena_info {scalar_t__ infooff; scalar_t__ info2off; void* flags; scalar_t__ size; scalar_t__ logoff; scalar_t__ mapoff; scalar_t__ dataoff; scalar_t__ nextoff; void* version_minor; void* version_major; void* nfree; void* external_lbasize; void* external_nlba; void* internal_lbasize; void* internal_nlba; } ;


 scalar_t__ BTT_PG_SIZE ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;

__attribute__((used)) static void parse_arena_meta(struct arena_info *arena, struct btt_sb *super,
    u64 arena_off)
{
 arena->internal_nlba = le32_to_cpu(super->internal_nlba);
 arena->internal_lbasize = le32_to_cpu(super->internal_lbasize);
 arena->external_nlba = le32_to_cpu(super->external_nlba);
 arena->external_lbasize = le32_to_cpu(super->external_lbasize);
 arena->nfree = le32_to_cpu(super->nfree);
 arena->version_major = le16_to_cpu(super->version_major);
 arena->version_minor = le16_to_cpu(super->version_minor);

 arena->nextoff = (super->nextoff == 0) ? 0 : (arena_off +
   le64_to_cpu(super->nextoff));
 arena->infooff = arena_off;
 arena->dataoff = arena_off + le64_to_cpu(super->dataoff);
 arena->mapoff = arena_off + le64_to_cpu(super->mapoff);
 arena->logoff = arena_off + le64_to_cpu(super->logoff);
 arena->info2off = arena_off + le64_to_cpu(super->info2off);

 arena->size = (le64_to_cpu(super->nextoff) > 0)
  ? (le64_to_cpu(super->nextoff))
  : (arena->info2off - arena->infooff + BTT_PG_SIZE);

 arena->flags = le32_to_cpu(super->flags);
}
