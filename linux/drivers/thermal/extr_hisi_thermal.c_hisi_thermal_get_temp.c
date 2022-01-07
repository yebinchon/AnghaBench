
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hisi_thermal_sensor {int thres_temp; int id; int tzd; struct hisi_thermal_data* data; } ;
struct hisi_thermal_data {TYPE_2__* pdev; TYPE_1__* ops; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* get_temp ) (struct hisi_thermal_sensor*) ;} ;


 int dev_dbg (int *,char*,int ,int ,int,int ) ;
 int stub1 (struct hisi_thermal_sensor*) ;

__attribute__((used)) static int hisi_thermal_get_temp(void *__data, int *temp)
{
 struct hisi_thermal_sensor *sensor = __data;
 struct hisi_thermal_data *data = sensor->data;

 *temp = data->ops->get_temp(sensor);

 dev_dbg(&data->pdev->dev, "tzd=%p, id=%d, temp=%d, thres=%d\n",
  sensor->tzd, sensor->id, *temp, sensor->thres_temp);

 return 0;
}
