
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_comm {int dummy; } ;
struct super_block {scalar_t__ s_fs_info; } ;



__attribute__((used)) static inline struct venus_comm *coda_vcp(struct super_block *sb)
{
 return (struct venus_comm *)((sb)->s_fs_info);
}
