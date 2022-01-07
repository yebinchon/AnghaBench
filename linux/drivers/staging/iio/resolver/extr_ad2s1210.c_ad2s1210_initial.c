
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad2s1210_state {int resolution; int lock; } ;


 unsigned char AD2S1210_DEF_CONTROL ;
 int AD2S1210_MSB_IS_HIGH ;
 unsigned char AD2S1210_REG_CONTROL ;
 unsigned char AD2S1210_SET_RESOLUTION ;
 int EIO ;
 int ad2s1210_config_read (struct ad2s1210_state*,unsigned char) ;
 int ad2s1210_config_write (struct ad2s1210_state*,unsigned char) ;
 int ad2s1210_set_resolution_pin (struct ad2s1210_state*) ;
 int ad2s1210_soft_reset (struct ad2s1210_state*) ;
 int ad2s1210_update_frequency_control_word (struct ad2s1210_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ad2s1210_initial(struct ad2s1210_state *st)
{
 unsigned char data;
 int ret;

 mutex_lock(&st->lock);
 ad2s1210_set_resolution_pin(st);

 ret = ad2s1210_config_write(st, AD2S1210_REG_CONTROL);
 if (ret < 0)
  goto error_ret;
 data = AD2S1210_DEF_CONTROL & ~(AD2S1210_SET_RESOLUTION);
 data |= (st->resolution - 10) >> 1;
 ret = ad2s1210_config_write(st, data);
 if (ret < 0)
  goto error_ret;
 ret = ad2s1210_config_read(st, AD2S1210_REG_CONTROL);
 if (ret < 0)
  goto error_ret;

 if (ret & AD2S1210_MSB_IS_HIGH) {
  ret = -EIO;
  goto error_ret;
 }

 ret = ad2s1210_update_frequency_control_word(st);
 if (ret < 0)
  goto error_ret;
 ret = ad2s1210_soft_reset(st);
error_ret:
 mutex_unlock(&st->lock);
 return ret;
}
