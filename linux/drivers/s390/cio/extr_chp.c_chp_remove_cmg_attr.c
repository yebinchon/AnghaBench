
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_path {int dev; } ;


 int chp_measurement_attr ;
 int chp_measurement_chars_attr ;
 int device_remove_bin_file (int *,int *) ;

void chp_remove_cmg_attr(struct channel_path *chp)
{
 device_remove_bin_file(&chp->dev, &chp_measurement_chars_attr);
 device_remove_bin_file(&chp->dev, &chp_measurement_attr);
}
