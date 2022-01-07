
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IIO_EVENT_CODE_AD7816_OTI ;
 int IRQ_HANDLED ;
 int iio_get_time_ns (void*) ;
 int iio_push_event (void*,int ,int ) ;

__attribute__((used)) static irqreturn_t ad7816_event_handler(int irq, void *private)
{
 iio_push_event(private, IIO_EVENT_CODE_AD7816_OTI,
         iio_get_time_ns(private));
 return IRQ_HANDLED;
}
