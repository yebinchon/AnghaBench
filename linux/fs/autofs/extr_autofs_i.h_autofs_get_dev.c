
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct autofs_sb_info {TYPE_1__* sb; } ;
struct TYPE_2__ {int s_dev; } ;


 int new_encode_dev (int ) ;

__attribute__((used)) static inline u32 autofs_get_dev(struct autofs_sb_info *sbi)
{
 return new_encode_dev(sbi->sb->s_dev);
}
