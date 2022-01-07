
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {int dummy; } ;


 int __qdio_outbound_processing (struct qdio_q*) ;

void qdio_outbound_processing(unsigned long data)
{
 struct qdio_q *q = (struct qdio_q *)data;
 __qdio_outbound_processing(q);
}
