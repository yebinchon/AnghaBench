
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis_video_info {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct sis_video_info* pci_get_drvdata (struct pci_dev*) ;
 int sis_int_free (struct sis_video_info*,int ) ;

void
sis_free_new(struct pci_dev *pdev, u32 base)
{
 struct sis_video_info *ivideo = pci_get_drvdata(pdev);

 sis_int_free(ivideo, base);
}
