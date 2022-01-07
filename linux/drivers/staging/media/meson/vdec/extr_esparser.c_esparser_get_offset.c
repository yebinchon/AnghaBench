
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amvdec_session {scalar_t__ vififo_paddr; scalar_t__ last_offset; int wrap_count; int vififo_size; struct amvdec_core* core; } ;
struct amvdec_core {int dummy; } ;


 int PARSER_VIDEO_WP ;
 scalar_t__ amvdec_read_parser (struct amvdec_core*,int ) ;

__attribute__((used)) static u32 esparser_get_offset(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;
 u32 offset = amvdec_read_parser(core, PARSER_VIDEO_WP) -
       sess->vififo_paddr;

 if (offset < sess->last_offset)
  sess->wrap_count++;

 sess->last_offset = offset;
 offset += (sess->wrap_count * sess->vififo_size);

 return offset;
}
