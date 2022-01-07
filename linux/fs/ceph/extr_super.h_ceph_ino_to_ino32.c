
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __u64 ;



__attribute__((used)) static inline u32 ceph_ino_to_ino32(__u64 vino)
{
 u32 ino = vino & 0xffffffff;
 ino ^= vino >> 32;
 if (!ino)
  ino = 2;
 return ino;
}
