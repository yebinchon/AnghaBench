
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viafb_dev {int dummy; } ;


 int N_SUBDEVS ;
 int via_create_subdev (struct viafb_dev*,scalar_t__) ;
 scalar_t__ viafb_subdevs ;

__attribute__((used)) static int via_setup_subdevs(struct viafb_dev *vdev)
{
 int i;






 for (i = 0; i < N_SUBDEVS; i++)
  via_create_subdev(vdev, viafb_subdevs + i);
 return 0;
}
