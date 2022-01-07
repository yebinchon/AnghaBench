
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int crc32c (int ,char const*,int) ;

__attribute__((used)) static inline u64 btrfs_extref_hash(u64 parent_objectid, const char *name,
                                   int len)
{
       return (u64) crc32c(parent_objectid, name, len);
}
