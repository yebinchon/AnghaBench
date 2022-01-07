
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct tcmu_dev {int data_bitmap; } ;
struct tcmu_cmd {int * dbi; struct tcmu_dev* tcmu_dev; } ;


 int clear_bit (int ,int ) ;

__attribute__((used)) static void tcmu_cmd_free_data(struct tcmu_cmd *tcmu_cmd, uint32_t len)
{
 struct tcmu_dev *udev = tcmu_cmd->tcmu_dev;
 uint32_t i;

 for (i = 0; i < len; i++)
  clear_bit(tcmu_cmd->dbi[i], udev->data_bitmap);
}
