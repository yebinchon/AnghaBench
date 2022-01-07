
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* self_reg; scalar_t__ self_mmio; } ;
struct TYPE_2__ {scalar_t__ db_bell; } ;


 int ndev_db_read (struct intel_ntb_dev*,scalar_t__) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static u64 intel_ntb_db_read(struct ntb_dev *ntb)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 return ndev_db_read(ndev,
       ndev->self_mmio +
       ndev->self_reg->db_bell);
}
