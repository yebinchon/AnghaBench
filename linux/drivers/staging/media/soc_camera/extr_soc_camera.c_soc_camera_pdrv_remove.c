
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_device {int list; } ;
struct platform_device {int id; } ;


 int EINVAL ;
 int clear_bit (int,int ) ;
 int device_map ;
 int list_del (int *) ;
 struct soc_camera_device* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int soc_camera_pdrv_remove(struct platform_device *pdev)
{
 struct soc_camera_device *icd = platform_get_drvdata(pdev);
 int i;

 if (!icd)
  return -EINVAL;

 i = pdev->id;
 if (i < 0)
  i = 0;







 if (test_bit(i, device_map)) {
  clear_bit(i, device_map);
  list_del(&icd->list);
 }

 return 0;
}
