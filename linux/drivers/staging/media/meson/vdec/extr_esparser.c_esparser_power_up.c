
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amvdec_session {int vififo_paddr; int vififo_size; TYPE_1__* fmt_out; struct amvdec_core* core; } ;
struct amvdec_ops {int (* conf_esparser ) (struct amvdec_session*) ;} ;
struct amvdec_core {int esparser_reset; } ;
struct TYPE_2__ {struct amvdec_ops* vdec_ops; } ;


 int BIT (int ) ;
 int ES_PARSER_START ;
 int ES_SEARCH ;
 int ES_START_CODE_MASK ;
 int ES_START_CODE_PATTERN ;
 int PARSER_CONFIG ;
 int PARSER_CONTROL ;
 int PARSER_ES_CONTROL ;
 int PARSER_INT_ENABLE ;
 int PARSER_INT_HOST_EN_BIT ;
 int PARSER_INT_STATUS ;
 int PARSER_SEARCH_MASK ;
 int PARSER_SEARCH_PATTERN ;
 int PARSER_VIDEO_END_PTR ;
 int PARSER_VIDEO_START_PTR ;
 int PFIFO_RD_PTR ;
 int PFIFO_WR_PTR ;
 int PS_CFG_MAX_ES_WR_CYCLE_BIT ;
 int PS_CFG_MAX_FETCH_CYCLE_BIT ;
 int PS_CFG_PFIFO_EMPTY_CNT_BIT ;
 int PS_CFG_STARTCODE_WID_24_BIT ;
 int amvdec_read_parser (struct amvdec_core*,int ) ;
 int amvdec_write_parser (struct amvdec_core*,int ,int) ;
 int reset_control_reset (int ) ;
 int stub1 (struct amvdec_session*) ;

int esparser_power_up(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;
 struct amvdec_ops *vdec_ops = sess->fmt_out->vdec_ops;

 reset_control_reset(core->esparser_reset);
 amvdec_write_parser(core, PARSER_CONFIG,
       (10 << PS_CFG_PFIFO_EMPTY_CNT_BIT) |
       (1 << PS_CFG_MAX_ES_WR_CYCLE_BIT) |
       (16 << PS_CFG_MAX_FETCH_CYCLE_BIT));

 amvdec_write_parser(core, PFIFO_RD_PTR, 0);
 amvdec_write_parser(core, PFIFO_WR_PTR, 0);

 amvdec_write_parser(core, PARSER_SEARCH_PATTERN,
       ES_START_CODE_PATTERN);
 amvdec_write_parser(core, PARSER_SEARCH_MASK, ES_START_CODE_MASK);

 amvdec_write_parser(core, PARSER_CONFIG,
       (10 << PS_CFG_PFIFO_EMPTY_CNT_BIT) |
       (1 << PS_CFG_MAX_ES_WR_CYCLE_BIT) |
       (16 << PS_CFG_MAX_FETCH_CYCLE_BIT) |
       (2 << PS_CFG_STARTCODE_WID_24_BIT));

 amvdec_write_parser(core, PARSER_CONTROL,
       (ES_SEARCH | ES_PARSER_START));

 amvdec_write_parser(core, PARSER_VIDEO_START_PTR, sess->vififo_paddr);
 amvdec_write_parser(core, PARSER_VIDEO_END_PTR,
       sess->vififo_paddr + sess->vififo_size - 8);
 amvdec_write_parser(core, PARSER_ES_CONTROL,
       amvdec_read_parser(core, PARSER_ES_CONTROL) & ~1);

 if (vdec_ops->conf_esparser)
  vdec_ops->conf_esparser(sess);

 amvdec_write_parser(core, PARSER_INT_STATUS, 0xffff);
 amvdec_write_parser(core, PARSER_INT_ENABLE,
       BIT(PARSER_INT_HOST_EN_BIT));

 return 0;
}
