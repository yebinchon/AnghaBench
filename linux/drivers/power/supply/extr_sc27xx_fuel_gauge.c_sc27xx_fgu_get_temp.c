
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_fgu_data {int channel; } ;


 int iio_read_channel_processed (int ,int*) ;

__attribute__((used)) static int sc27xx_fgu_get_temp(struct sc27xx_fgu_data *data, int *temp)
{
 return iio_read_channel_processed(data->channel, temp);
}
