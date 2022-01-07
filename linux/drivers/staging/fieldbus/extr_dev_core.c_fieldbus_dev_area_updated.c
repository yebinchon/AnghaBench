
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fieldbus_dev {int dc_wq; int dc_event; } ;


 int wake_up_all (int *) ;

void fieldbus_dev_area_updated(struct fieldbus_dev *fb)
{
 fb->dc_event++;
 wake_up_all(&fb->dc_wq);
}
