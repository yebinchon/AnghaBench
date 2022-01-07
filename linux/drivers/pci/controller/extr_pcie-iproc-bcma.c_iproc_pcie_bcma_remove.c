
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie {int dummy; } ;
struct bcma_device {int dummy; } ;


 struct iproc_pcie* bcma_get_drvdata (struct bcma_device*) ;
 int iproc_pcie_remove (struct iproc_pcie*) ;

__attribute__((used)) static void iproc_pcie_bcma_remove(struct bcma_device *bdev)
{
 struct iproc_pcie *pcie = bcma_get_drvdata(bdev);

 iproc_pcie_remove(pcie);
}
