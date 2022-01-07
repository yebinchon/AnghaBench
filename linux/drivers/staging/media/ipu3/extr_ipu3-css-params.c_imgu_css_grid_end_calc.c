
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu3_uapi_grid_config {int block_height_log2; int height; int y_start; void* y_end; int block_width_log2; int width; int x_start; void* x_end; } ;


 void* imgu_css_grid_end (int ,int ,int ) ;

__attribute__((used)) static void imgu_css_grid_end_calc(struct ipu3_uapi_grid_config *grid_cfg)
{
 grid_cfg->x_end = imgu_css_grid_end(grid_cfg->x_start, grid_cfg->width,
         grid_cfg->block_width_log2);
 grid_cfg->y_end = imgu_css_grid_end(grid_cfg->y_start, grid_cfg->height,
         grid_cfg->block_height_log2);
}
