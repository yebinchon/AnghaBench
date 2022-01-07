
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;


 int OV9740_ISP_CTRL00 ;
 int OV9740_ISP_CTRL01 ;
 int OV9740_ISP_CTRL03 ;
 int OV9740_ISP_CTRL1E ;
 int OV9740_ISP_CTRL1F ;
 int OV9740_ISP_CTRL20 ;
 int OV9740_ISP_CTRL21 ;
 int OV9740_MAX_HEIGHT ;
 int OV9740_MAX_WIDTH ;
 int OV9740_VFIFO_READ_START_HI ;
 int OV9740_VFIFO_READ_START_LO ;
 int OV9740_X_ADDR_END_HI ;
 int OV9740_X_ADDR_END_LO ;
 int OV9740_X_ADDR_START_HI ;
 int OV9740_X_ADDR_START_LO ;
 int OV9740_X_OUTPUT_SIZE_HI ;
 int OV9740_X_OUTPUT_SIZE_LO ;
 int OV9740_Y_ADDR_END_HI ;
 int OV9740_Y_ADDR_END_LO ;
 int OV9740_Y_ADDR_START_HI ;
 int OV9740_Y_ADDR_START_LO ;
 int OV9740_Y_OUTPUT_SIZE_HI ;
 int OV9740_Y_OUTPUT_SIZE_LO ;
 int ov9740_reg_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int ov9740_set_res(struct i2c_client *client, u32 width, u32 height)
{
 u32 x_start;
 u32 y_start;
 u32 x_end;
 u32 y_end;
 bool scaling = 0;
 u32 scale_input_x;
 u32 scale_input_y;
 int ret;

 if ((width != OV9740_MAX_WIDTH) || (height != OV9740_MAX_HEIGHT))
  scaling = 1;
 if ((OV9740_MAX_WIDTH * height) > (OV9740_MAX_HEIGHT * width)) {
  scale_input_x = (OV9740_MAX_HEIGHT * width) / height;
  scale_input_y = OV9740_MAX_HEIGHT;
 } else {
  scale_input_x = OV9740_MAX_WIDTH;
  scale_input_y = (OV9740_MAX_WIDTH * height) / width;
 }


 x_start = (OV9740_MAX_WIDTH - scale_input_x) / 2;
 y_start = (OV9740_MAX_HEIGHT - scale_input_y) / 2;
 x_end = x_start + scale_input_x - 1;
 y_end = y_start + scale_input_y - 1;

 ret = ov9740_reg_write(client, OV9740_X_ADDR_START_HI, x_start >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_X_ADDR_START_LO, x_start & 0xff);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_Y_ADDR_START_HI, y_start >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_Y_ADDR_START_LO, y_start & 0xff);
 if (ret)
  goto done;

 ret = ov9740_reg_write(client, OV9740_X_ADDR_END_HI, x_end >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_X_ADDR_END_LO, x_end & 0xff);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_Y_ADDR_END_HI, y_end >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_Y_ADDR_END_LO, y_end & 0xff);
 if (ret)
  goto done;

 ret = ov9740_reg_write(client, OV9740_X_OUTPUT_SIZE_HI, width >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_X_OUTPUT_SIZE_LO, width & 0xff);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_Y_OUTPUT_SIZE_HI, height >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_Y_OUTPUT_SIZE_LO, height & 0xff);
 if (ret)
  goto done;

 ret = ov9740_reg_write(client, OV9740_ISP_CTRL1E, scale_input_x >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_ISP_CTRL1F, scale_input_x & 0xff);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_ISP_CTRL20, scale_input_y >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_ISP_CTRL21, scale_input_y & 0xff);
 if (ret)
  goto done;

 ret = ov9740_reg_write(client, OV9740_VFIFO_READ_START_HI,
          (scale_input_x - width) >> 8);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_VFIFO_READ_START_LO,
          (scale_input_x - width) & 0xff);
 if (ret)
  goto done;

 ret = ov9740_reg_write(client, OV9740_ISP_CTRL00, 0xff);
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_ISP_CTRL01, 0xef |
         (scaling << 4));
 if (ret)
  goto done;
 ret = ov9740_reg_write(client, OV9740_ISP_CTRL03, 0xff);

done:
 return ret;
}
