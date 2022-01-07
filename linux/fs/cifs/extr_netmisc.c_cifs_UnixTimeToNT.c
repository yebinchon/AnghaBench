
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;


 int NTFS_TIME_OFFSET ;

u64
cifs_UnixTimeToNT(struct timespec64 t)
{

 return (u64) t.tv_sec * 10000000 + t.tv_nsec/100 + NTFS_TIME_OFFSET;
}
