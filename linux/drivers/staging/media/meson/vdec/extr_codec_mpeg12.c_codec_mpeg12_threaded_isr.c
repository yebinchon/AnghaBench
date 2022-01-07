
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amvdec_session {struct amvdec_core* core; } ;
struct amvdec_core {int dev; } ;
typedef int irqreturn_t ;


 int ASSIST_MBOX1_CLR_REG ;
 int GENMASK (int,int) ;
 int IRQ_HANDLED ;
 int MREG_BUFFEROUT ;
 int MREG_FATAL_ERROR ;
 int MREG_FRAME_OFFSET ;
 int MREG_PIC_INFO ;
 int PICINFO_PROG ;
 int PICINFO_TOP_FIRST ;
 int V4L2_FIELD_INTERLACED_BT ;
 int V4L2_FIELD_INTERLACED_TB ;
 int V4L2_FIELD_NONE ;
 int amvdec_abort (struct amvdec_session*) ;
 int amvdec_dst_buf_done_idx (struct amvdec_session*,int,int,int) ;
 int amvdec_read_dos (struct amvdec_core*,int ) ;
 int amvdec_write_dos (struct amvdec_core*,int ,int) ;
 int codec_mpeg12_update_dar (struct amvdec_session*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static irqreturn_t codec_mpeg12_threaded_isr(struct amvdec_session *sess)
{
 struct amvdec_core *core = sess->core;
 u32 reg;
 u32 pic_info;
 u32 is_progressive;
 u32 buffer_index;
 u32 field = V4L2_FIELD_NONE;
 u32 offset;

 amvdec_write_dos(core, ASSIST_MBOX1_CLR_REG, 1);
 reg = amvdec_read_dos(core, MREG_FATAL_ERROR);
 if (reg == 1) {
  dev_err(core->dev, "MPEG1/2 fatal error\n");
  amvdec_abort(sess);
  return IRQ_HANDLED;
 }

 reg = amvdec_read_dos(core, MREG_BUFFEROUT);
 if (!reg)
  return IRQ_HANDLED;


 if ((reg & GENMASK(23, 17)) == GENMASK(23, 17))
  goto end;

 pic_info = amvdec_read_dos(core, MREG_PIC_INFO);
 is_progressive = pic_info & PICINFO_PROG;

 if (!is_progressive)
  field = (pic_info & PICINFO_TOP_FIRST) ?
   V4L2_FIELD_INTERLACED_TB :
   V4L2_FIELD_INTERLACED_BT;

 codec_mpeg12_update_dar(sess);
 buffer_index = ((reg & 0xf) - 1) & 7;
 offset = amvdec_read_dos(core, MREG_FRAME_OFFSET);
 amvdec_dst_buf_done_idx(sess, buffer_index, offset, field);

end:
 amvdec_write_dos(core, MREG_BUFFEROUT, 0);
 return IRQ_HANDLED;
}
