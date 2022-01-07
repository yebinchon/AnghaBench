
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_uio_dev {int list; } ;


 int __qedi_free_uio (struct qedi_uio_dev*) ;
 int list_del_init (int *) ;

__attribute__((used)) static void qedi_free_uio(struct qedi_uio_dev *udev)
{
 if (!udev)
  return;

 list_del_init(&udev->list);
 __qedi_free_uio(udev);
}
