
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int __tiqdio_inbound_processing (struct qdio_q*) ;

void tiqdio_inbound_processing(unsigned long data)
{
 struct qdio_q *q = (struct qdio_q *)data;
 __tiqdio_inbound_processing(q);
}
