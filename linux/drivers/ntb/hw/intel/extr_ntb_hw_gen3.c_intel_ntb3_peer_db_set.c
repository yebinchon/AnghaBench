
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ntb_dev {int dummy; } ;
struct intel_ntb_dev {int db_valid_mask; TYPE_1__* peer_reg; scalar_t__ peer_mmio; } ;
struct TYPE_2__ {scalar_t__ db_bell; } ;


 int EINVAL ;
 int __ffs (int) ;
 int iowrite32 (int,scalar_t__) ;
 struct intel_ntb_dev* ntb_ndev (struct ntb_dev*) ;

__attribute__((used)) static int intel_ntb3_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
{
 struct intel_ntb_dev *ndev = ntb_ndev(ntb);
 int bit;

 if (db_bits & ~ndev->db_valid_mask)
  return -EINVAL;

 while (db_bits) {
  bit = __ffs(db_bits);
  iowrite32(1, ndev->peer_mmio +
    ndev->peer_reg->db_bell + (bit * 4));
  db_bits &= db_bits - 1;
 }

 return 0;
}
