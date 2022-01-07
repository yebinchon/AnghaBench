
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_config {unsigned int flags; int type; } ;


 unsigned int EINVAL ;

 unsigned long V4L2_MBUS_CSI2_CONTINUOUS_CLOCK ;

 unsigned long V4L2_MBUS_CSI2_LANES ;
 unsigned long V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK ;
 unsigned long V4L2_MBUS_DATA_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_DATA_ACTIVE_LOW ;
 unsigned long V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 unsigned long V4L2_MBUS_MASTER ;

 unsigned long V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 unsigned long V4L2_MBUS_PCLK_SAMPLE_RISING ;
 unsigned long V4L2_MBUS_SLAVE ;
 unsigned long V4L2_MBUS_VSYNC_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int WARN_ON (int) ;

unsigned int soc_mbus_config_compatible(const struct v4l2_mbus_config *cfg,
     unsigned int flags)
{
 unsigned long common_flags;
 bool hsync = 1, vsync = 1, pclk, data, mode;
 bool mipi_lanes, mipi_clock;

 common_flags = cfg->flags & flags;

 switch (cfg->type) {
 case 128:
  hsync = common_flags & (V4L2_MBUS_HSYNC_ACTIVE_HIGH |
     V4L2_MBUS_HSYNC_ACTIVE_LOW);
  vsync = common_flags & (V4L2_MBUS_VSYNC_ACTIVE_HIGH |
     V4L2_MBUS_VSYNC_ACTIVE_LOW);

 case 130:
  pclk = common_flags & (V4L2_MBUS_PCLK_SAMPLE_RISING |
           V4L2_MBUS_PCLK_SAMPLE_FALLING);
  data = common_flags & (V4L2_MBUS_DATA_ACTIVE_HIGH |
           V4L2_MBUS_DATA_ACTIVE_LOW);
  mode = common_flags & (V4L2_MBUS_MASTER | V4L2_MBUS_SLAVE);
  return (!hsync || !vsync || !pclk || !data || !mode) ?
   0 : common_flags;
 case 129:
  mipi_lanes = common_flags & V4L2_MBUS_CSI2_LANES;
  mipi_clock = common_flags & (V4L2_MBUS_CSI2_NONCONTINUOUS_CLOCK |
          V4L2_MBUS_CSI2_CONTINUOUS_CLOCK);
  return (!mipi_lanes || !mipi_clock) ? 0 : common_flags;
 default:
  WARN_ON(1);
  return -EINVAL;
 }
 return 0;
}
