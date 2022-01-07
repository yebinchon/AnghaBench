
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_lnode {int dummy; } ;
struct csio_hw {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 struct csio_lnode* csio_shost_init (struct csio_hw*,int *,int,int *) ;

struct csio_lnode *
csio_lnode_alloc(struct csio_hw *hw)
{
 return csio_shost_init(hw, &hw->pdev->dev, 0, ((void*)0));
}
