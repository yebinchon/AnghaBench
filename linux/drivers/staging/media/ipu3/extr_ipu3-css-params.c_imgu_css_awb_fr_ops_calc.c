
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct process_lines {int block_height; int y_start; int acc_enable; int max_tr; int max_op; int grid_height_per_slice; int grid_height; int image_height; } ;
struct TYPE_18__ {int awb_fr_acc; } ;
struct TYPE_19__ {TYPE_7__ enable; } ;
struct TYPE_20__ {TYPE_8__ sp; } ;
struct TYPE_11__ {TYPE_9__ isp; } ;
struct imgu_fw_info {TYPE_10__ info; } ;
struct imgu_css_pipe {size_t bindex; TYPE_2__* rect; } ;
struct imgu_css {TYPE_1__* fwp; struct imgu_css_pipe* pipes; } ;
struct imgu_abi_awb_fr_intra_frame_operations_data {int process_lines_data; int ops; } ;
struct TYPE_14__ {int block_height_log2; int y_start; int height; } ;
struct TYPE_15__ {TYPE_3__ grid_cfg; } ;
struct imgu_abi_awb_fr_config {TYPE_6__* stripes; TYPE_4__ config; struct imgu_abi_awb_fr_intra_frame_operations_data operations_data; } ;
struct TYPE_16__ {int height_per_slice; } ;
struct TYPE_17__ {TYPE_5__ grid_cfg; } ;
struct TYPE_13__ {int height; } ;
struct TYPE_12__ {struct imgu_fw_info* binary_header; } ;


 int IMGU_ABI_AWB_FR_MAX_OPERATIONS ;
 int IMGU_ABI_AWB_FR_MAX_PROCESS_LINES ;
 size_t IPU3_CSS_RECT_BDS ;
 int IPU3_UAPI_GRID_START_MASK ;
 int imgu_css_acc_process_lines (struct process_lines*,int ,int ,int *) ;

__attribute__((used)) static int
imgu_css_awb_fr_ops_calc(struct imgu_css *css, unsigned int pipe,
    struct imgu_abi_awb_fr_config *awb_fr_config)
{
 struct imgu_abi_awb_fr_intra_frame_operations_data *to =
  &awb_fr_config->operations_data;
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
 struct imgu_fw_info *bi =
  &css->fwp->binary_header[css_pipe->bindex];
 struct process_lines pl = {
  .image_height = css_pipe->rect[IPU3_CSS_RECT_BDS].height,
  .grid_height = awb_fr_config->config.grid_cfg.height,
  .block_height =
   1 << awb_fr_config->config.grid_cfg.block_height_log2,
  .y_start = awb_fr_config->config.grid_cfg.y_start &
   IPU3_UAPI_GRID_START_MASK,
  .grid_height_per_slice =
   awb_fr_config->stripes[0].grid_cfg.height_per_slice,
  .max_op = IMGU_ABI_AWB_FR_MAX_OPERATIONS,
  .max_tr = IMGU_ABI_AWB_FR_MAX_PROCESS_LINES,
  .acc_enable = bi->info.isp.sp.enable.awb_fr_acc,
 };

 return imgu_css_acc_process_lines(&pl, to->ops, to->process_lines_data,
       ((void*)0));
}
