
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sc27xx_fgu_data {int vol_1000mv_adc; int cur_1000ma_adc; int dev; } ;
typedef void nvmem_cell ;


 int DIV_ROUND_CLOSEST (int,int) ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int kfree (void*) ;
 int memcpy (int*,void*,int ) ;
 int min (size_t,int) ;
 void* nvmem_cell_get (int ,char*) ;
 int nvmem_cell_put (void*) ;
 void* nvmem_cell_read (void*,size_t*) ;

__attribute__((used)) static int sc27xx_fgu_calibration(struct sc27xx_fgu_data *data)
{
 struct nvmem_cell *cell;
 int calib_data, cal_4200mv;
 void *buf;
 size_t len;

 cell = nvmem_cell_get(data->dev, "fgu_calib");
 if (IS_ERR(cell))
  return PTR_ERR(cell);

 buf = nvmem_cell_read(cell, &len);
 nvmem_cell_put(cell);

 if (IS_ERR(buf))
  return PTR_ERR(buf);

 memcpy(&calib_data, buf, min(len, sizeof(u32)));






 cal_4200mv = (calib_data & 0x1ff) + 6963 - 4096 - 256;
 data->vol_1000mv_adc = DIV_ROUND_CLOSEST(cal_4200mv * 10, 42);
 data->cur_1000ma_adc = data->vol_1000mv_adc * 4;

 kfree(buf);
 return 0;
}
