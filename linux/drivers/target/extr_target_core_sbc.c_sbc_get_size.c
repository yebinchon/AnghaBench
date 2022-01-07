
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct se_cmd {TYPE_2__* se_dev; } ;
struct TYPE_3__ {int block_size; } ;
struct TYPE_4__ {TYPE_1__ dev_attrib; } ;



__attribute__((used)) static inline u32 sbc_get_size(struct se_cmd *cmd, u32 sectors)
{
 return cmd->se_dev->dev_attrib.block_size * sectors;
}
