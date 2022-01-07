
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* self_reg; scalar_t__ self_mmio; } ;
struct TYPE_2__ {scalar_t__ db_mask; } ;


 int ndev_db_set_mask (struct intel_ntb_dev*,int ,scalar_t__) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

int intel_ntb_db_set_mask(struct ntb_dev *ntb, u64 db_bits)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 return ndev_db_set_mask(ndev, db_bits,
    ndev->self_mmio +
    ndev->self_reg->db_mask);
}
