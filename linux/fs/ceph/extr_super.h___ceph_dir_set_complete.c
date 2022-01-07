
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_inode_info {int * i_complete_seq; } ;


 int atomic64_set (int *,long long) ;
 int smp_mb () ;

__attribute__((used)) static inline void __ceph_dir_set_complete(struct ceph_inode_info *ci,
        long long release_count,
        long long ordered_count)
{





 smp_mb();
 atomic64_set(&ci->i_complete_seq[0], release_count);
 atomic64_set(&ci->i_complete_seq[1], ordered_count);
}
