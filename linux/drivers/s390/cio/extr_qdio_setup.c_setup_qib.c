
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long isliba; unsigned long osliba; int ebcnam; int qfmt; int rflags; } ;
struct qdio_irq {TYPE_3__ qib; TYPE_2__** output_qs; TYPE_1__** input_qs; } ;
struct qdio_initialize {int adapter_name; scalar_t__ no_output_qs; scalar_t__ no_input_qs; int q_format; int qib_rflags; } ;
struct TYPE_5__ {scalar_t__ slib; } ;
struct TYPE_4__ {scalar_t__ slib; } ;


 int QIB_RFLAGS_ENABLE_QEBSM ;
 int memcpy (int ,int ,int) ;
 scalar_t__ qebsm_possible () ;

__attribute__((used)) static void setup_qib(struct qdio_irq *irq_ptr,
        struct qdio_initialize *init_data)
{
 if (qebsm_possible())
  irq_ptr->qib.rflags |= QIB_RFLAGS_ENABLE_QEBSM;

 irq_ptr->qib.rflags |= init_data->qib_rflags;

 irq_ptr->qib.qfmt = init_data->q_format;
 if (init_data->no_input_qs)
  irq_ptr->qib.isliba =
   (unsigned long)(irq_ptr->input_qs[0]->slib);
 if (init_data->no_output_qs)
  irq_ptr->qib.osliba =
   (unsigned long)(irq_ptr->output_qs[0]->slib);
 memcpy(irq_ptr->qib.ebcnam, init_data->adapter_name, 8);
}
