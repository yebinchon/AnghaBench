
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hantro_dev {int dummy; } ;
typedef int irqreturn_t ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int IRQ_HANDLED ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int VDPU_REG_AXI_CTRL ;
 int VDPU_REG_INTERRUPT ;
 int VDPU_REG_INTERRUPT_DEC_IRQ ;
 int hantro_irq_done (struct hantro_dev*,int ,int) ;
 int vdpu_read (struct hantro_dev*,int ) ;
 int vdpu_write (struct hantro_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t rk3399_vdpu_irq(int irq, void *dev_id)
{
 struct hantro_dev *vpu = dev_id;
 enum vb2_buffer_state state;
 u32 status;

 status = vdpu_read(vpu, VDPU_REG_INTERRUPT);
 state = (status & VDPU_REG_INTERRUPT_DEC_IRQ) ?
  VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;

 vdpu_write(vpu, 0, VDPU_REG_INTERRUPT);
 vdpu_write(vpu, 0, VDPU_REG_AXI_CTRL);

 hantro_irq_done(vpu, 0, state);

 return IRQ_HANDLED;
}
