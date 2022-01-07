
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct imgu_css_pipe {TYPE_1__* rect; } ;
struct imgu_css {struct imgu_css_pipe* pipes; } ;
struct TYPE_13__ {TYPE_5__* grd_config; } ;
struct TYPE_11__ {TYPE_3__* ops; TYPE_2__* process_lines_data; } ;
struct TYPE_14__ {TYPE_6__ cfg; TYPE_4__ operations_data; } ;
struct imgu_abi_acc_param {TYPE_7__ dvs_stat; } ;
struct TYPE_12__ {scalar_t__ enable; } ;
struct TYPE_10__ {int op_indicator; int op_type; } ;
struct TYPE_9__ {scalar_t__ cfg_set; int lines; } ;
struct TYPE_8__ {int height; } ;


 int IMGU_ABI_ACC_OPTYPE_PROCESS_LINES ;
 int IMGU_ABI_ACC_OP_NO_OPS ;
 unsigned int IMGU_ABI_DVS_STAT_LEVELS ;
 size_t IPU3_CSS_RECT_BDS ;

__attribute__((used)) static void imgu_css_cfg_acc_dvs(struct imgu_css *css,
     struct imgu_abi_acc_param *acc,
     unsigned int pipe)
{
 unsigned int i;
 struct imgu_css_pipe *css_pipe = &css->pipes[pipe];


 acc->dvs_stat.operations_data.process_lines_data[0].lines =
    css_pipe->rect[IPU3_CSS_RECT_BDS].height;
 acc->dvs_stat.operations_data.process_lines_data[0].cfg_set = 0;
 acc->dvs_stat.operations_data.ops[0].op_type =
  IMGU_ABI_ACC_OPTYPE_PROCESS_LINES;
 acc->dvs_stat.operations_data.ops[0].op_indicator =
  IMGU_ABI_ACC_OP_NO_OPS;
 for (i = 0; i < IMGU_ABI_DVS_STAT_LEVELS; i++)
  acc->dvs_stat.cfg.grd_config[i].enable = 0;
}
