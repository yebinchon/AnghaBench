
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int toupper_t ;
struct super_block {int dummy; } ;
struct TYPE_2__ {int s_flags; } ;


 TYPE_1__* AFFS_SB (struct super_block*) ;
 int SF_INTL ;
 int affs_intl_toupper ;
 scalar_t__ affs_test_opt (int ,int ) ;
 int affs_toupper ;

__attribute__((used)) static inline toupper_t
affs_get_toupper(struct super_block *sb)
{
 return affs_test_opt(AFFS_SB(sb)->s_flags, SF_INTL) ?
        affs_intl_toupper : affs_toupper;
}
