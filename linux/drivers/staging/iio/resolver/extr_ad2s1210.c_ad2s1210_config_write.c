
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ad2s1210_state {int * tx; int sdev; } ;


 int MOD_CONFIG ;
 int ad2s1210_set_mode (int ,struct ad2s1210_state*) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad2s1210_config_write(struct ad2s1210_state *st, u8 data)
{
 int ret;

 ad2s1210_set_mode(MOD_CONFIG, st);
 st->tx[0] = data;
 ret = spi_write(st->sdev, st->tx, 1);
 if (ret < 0)
  return ret;

 return 0;
}
