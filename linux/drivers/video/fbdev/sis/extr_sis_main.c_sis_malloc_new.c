
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis_video_info {int dummy; } ;
struct sis_memreq {int dummy; } ;
struct pci_dev {int dummy; } ;


 struct sis_video_info* pci_get_drvdata (struct pci_dev*) ;
 int sis_int_malloc (struct sis_video_info*,struct sis_memreq*) ;

void
sis_malloc_new(struct pci_dev *pdev, struct sis_memreq *req)
{
 struct sis_video_info *ivideo = pci_get_drvdata(pdev);

 sis_int_malloc(ivideo, req);
}
