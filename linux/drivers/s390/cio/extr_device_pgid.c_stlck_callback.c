
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlck_data {int rc; int done; } ;
struct ccw_device {int dummy; } ;


 int complete (int *) ;

__attribute__((used)) static void stlck_callback(struct ccw_device *cdev, void *data, int rc)
{
 struct stlck_data *sdata = data;

 sdata->rc = rc;
 complete(&sdata->done);
}
