
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hantro_dev {int dummy; } ;
typedef int irqreturn_t ;
typedef enum vb2_buffer_state { ____Placeholder_vb2_buffer_state } vb2_buffer_state ;


 int G1_REG_CONFIG ;
 int G1_REG_CONFIG_DEC_CLK_GATE_E ;
 int G1_REG_INTERRUPT ;
 int G1_REG_INTERRUPT_DEC_RDY_INT ;
 int IRQ_HANDLED ;
 int VB2_BUF_STATE_DONE ;
 int VB2_BUF_STATE_ERROR ;
 int hantro_irq_done (struct hantro_dev*,int ,int) ;
 int vdpu_read (struct hantro_dev*,int ) ;
 int vdpu_write (struct hantro_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t rk3288_vdpu_irq(int irq, void *dev_id)
{
 struct hantro_dev *vpu = dev_id;
 enum vb2_buffer_state state;
 u32 status;

 status = vdpu_read(vpu, G1_REG_INTERRUPT);
 state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
  VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;

 vdpu_write(vpu, 0, G1_REG_INTERRUPT);
 vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);

 hantro_irq_done(vpu, 0, state);

 return IRQ_HANDLED;
}
