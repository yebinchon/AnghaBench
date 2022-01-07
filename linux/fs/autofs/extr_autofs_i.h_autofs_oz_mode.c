
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_sb_info {int flags; scalar_t__ oz_pgrp; } ;


 int AUTOFS_SBI_CATATONIC ;
 int current ;
 scalar_t__ task_pgrp (int ) ;

__attribute__((used)) static inline int autofs_oz_mode(struct autofs_sb_info *sbi)
{
 return ((sbi->flags & AUTOFS_SBI_CATATONIC) ||
   task_pgrp(current) == sbi->oz_pgrp);
}
