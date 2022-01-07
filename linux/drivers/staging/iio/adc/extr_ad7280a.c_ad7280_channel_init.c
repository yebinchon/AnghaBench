
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7280_state {int slave_num; int * channels; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ad7280_init_dev_channels (struct ad7280_state*,int,int*) ;
 int ad7280_timestamp_channel_init (int *,int) ;
 int ad7280_total_voltage_channel_init (int *,int,int) ;
 int * devm_kcalloc (int *,int,int,int ) ;

__attribute__((used)) static int ad7280_channel_init(struct ad7280_state *st)
{
 int dev, cnt = 0;

 st->channels = devm_kcalloc(&st->spi->dev, (st->slave_num + 1) * 12 + 2,
        sizeof(*st->channels), GFP_KERNEL);
 if (!st->channels)
  return -ENOMEM;

 for (dev = 0; dev <= st->slave_num; dev++)
  ad7280_init_dev_channels(st, dev, &cnt);

 ad7280_total_voltage_channel_init(&st->channels[cnt], cnt, dev);
 cnt++;
 ad7280_timestamp_channel_init(&st->channels[cnt], cnt);

 return cnt + 1;
}
