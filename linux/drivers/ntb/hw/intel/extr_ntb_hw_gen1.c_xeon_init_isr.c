
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ntb_dev {int dummy; } ;


 int XEON_DB_MSIX_VECTOR_COUNT ;
 int XEON_DB_MSIX_VECTOR_SHIFT ;
 int XEON_DB_TOTAL_SHIFT ;
 int ndev_init_isr (struct intel_ntb_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int xeon_init_isr(struct intel_ntb_dev *ndev)
{
 return ndev_init_isr(ndev, XEON_DB_MSIX_VECTOR_COUNT,
        XEON_DB_MSIX_VECTOR_COUNT,
        XEON_DB_MSIX_VECTOR_SHIFT,
        XEON_DB_TOTAL_SHIFT);
}
