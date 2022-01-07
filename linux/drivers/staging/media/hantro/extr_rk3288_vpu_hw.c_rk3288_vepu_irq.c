
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hantro_dev {int dummy; } ;
typedef int irqreturn_t ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int H1_REG_AXI_CTRL ;
 int H1_REG_INTERRUPT ;
 int H1_REG_INTERRUPT_FRAME_RDY ;
 int H1_REG_STR_BUF_LIMIT ;
 int IRQ_HANDLED ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int hantro_irq_done (struct hantro_dev*,int,int) ;
 int vepu_read (struct hantro_dev*,int ) ;
 int vepu_write (struct hantro_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t rk3288_vepu_irq(int irq, void *dev_id)
{
 struct hantro_dev *vpu = dev_id;
 enum vb2_buffer_state state;
 u32 status, bytesused;

 status = vepu_read(vpu, H1_REG_INTERRUPT);
 bytesused = vepu_read(vpu, H1_REG_STR_BUF_LIMIT) / 8;
 state = (status & H1_REG_INTERRUPT_FRAME_RDY) ?
  VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;

 vepu_write(vpu, 0, H1_REG_INTERRUPT);
 vepu_write(vpu, 0, H1_REG_AXI_CTRL);

 hantro_irq_done(vpu, bytesused, state);

 return IRQ_HANDLED;
}
