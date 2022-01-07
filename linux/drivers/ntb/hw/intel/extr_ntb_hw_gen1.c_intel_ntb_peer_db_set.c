
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {TYPE_1__* peer_reg; scalar_t__ peer_mmio; } ;
struct TYPE_2__ {scalar_t__ db_bell; } ;


 int ndev_db_write (struct intel_ntb_dev*,int ,scalar_t__) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static int intel_ntb_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);

 return ndev_db_write(ndev, db_bits,
        ndev->peer_mmio +
        ndev->peer_reg->db_bell);
}
