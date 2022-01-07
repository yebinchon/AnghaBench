
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_dev {int dummy; } ;


 int AMD_DB_CNT ;
 int AMD_MSIX_VECTOR_CNT ;
 int ndev_init_isr (struct amd_ntb_dev*,int ,int ) ;

__attribute__((used)) static int amd_init_isr(struct amd_ntb_dev *ndev)
{
 return ndev_init_isr(ndev, AMD_DB_CNT, AMD_MSIX_VECTOR_CNT);
}
