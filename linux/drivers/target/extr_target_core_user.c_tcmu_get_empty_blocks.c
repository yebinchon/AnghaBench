
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int dummy; } ;
struct tcmu_cmd {int dbi_cur; int dbi_cnt; } ;


 int tcmu_get_empty_block (struct tcmu_dev*,struct tcmu_cmd*) ;

__attribute__((used)) static bool tcmu_get_empty_blocks(struct tcmu_dev *udev,
      struct tcmu_cmd *tcmu_cmd)
{
 int i;

 for (i = tcmu_cmd->dbi_cur; i < tcmu_cmd->dbi_cnt; i++) {
  if (!tcmu_get_empty_block(udev, tcmu_cmd))
   return 0;
 }
 return 1;
}
