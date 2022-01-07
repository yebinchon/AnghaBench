
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_ntb_dev {int db_vec_shift; } ;


 int BIT_ULL (int) ;

__attribute__((used)) static inline u64 ndev_vec_mask(struct intel_ntb_dev *ndev, int db_vector)
{
 u64 shift, mask;

 shift = ndev->db_vec_shift;
 mask = BIT_ULL(shift) - 1;

 return mask << (shift * db_vector);
}
