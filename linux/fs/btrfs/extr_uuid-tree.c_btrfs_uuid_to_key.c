
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct btrfs_key {void* offset; void* objectid; int type; } ;


 void* get_unaligned_le64 (int *) ;

__attribute__((used)) static void btrfs_uuid_to_key(u8 *uuid, u8 type, struct btrfs_key *key)
{
 key->type = type;
 key->objectid = get_unaligned_le64(uuid);
 key->offset = get_unaligned_le64(uuid + sizeof(u64));
}
