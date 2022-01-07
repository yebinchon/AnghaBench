
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct goldfish_audio {int buffer_status; int lock; int wait; } ;
typedef int irqreturn_t ;


 int AUDIO_INT_MASK ;
 int AUDIO_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int audio_read (struct goldfish_audio*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t goldfish_audio_interrupt(int irq, void *dev_id)
{
 unsigned long irq_flags;
 struct goldfish_audio *data = dev_id;
 u32 status;

 spin_lock_irqsave(&data->lock, irq_flags);


 status = audio_read(data, AUDIO_INT_STATUS);
 status &= AUDIO_INT_MASK;




 if (status) {
  data->buffer_status = status;
  wake_up(&data->wait);
 }

 spin_unlock_irqrestore(&data->lock, irq_flags);
 return status ? IRQ_HANDLED : IRQ_NONE;
}
