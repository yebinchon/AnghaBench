
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_pci_dev {int wrk; TYPE_1__* hbus; int state; } ;
struct TYPE_2__ {int wq; } ;


 int INIT_WORK (int *,int ) ;
 int get_hvpcibus (TYPE_1__*) ;
 int get_pcichild (struct hv_pci_dev*) ;
 int hv_eject_device_work ;
 int hv_pcichild_ejecting ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void hv_pci_eject_device(struct hv_pci_dev *hpdev)
{
 hpdev->state = hv_pcichild_ejecting;
 get_pcichild(hpdev);
 INIT_WORK(&hpdev->wrk, hv_eject_device_work);
 get_hvpcibus(hpdev->hbus);
 queue_work(hpdev->hbus->wq, &hpdev->wrk);
}
