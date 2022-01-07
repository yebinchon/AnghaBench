
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qdio_q {unsigned int first_to_check; unsigned int qdio_error; scalar_t__ is_input_q; } ;


 unsigned int add_buf (unsigned int,int) ;
 int qdio_inbound_q_moved (struct qdio_q*,unsigned int) ;
 int qdio_outbound_q_moved (struct qdio_q*,unsigned int) ;

__attribute__((used)) static int __qdio_inspect_queue(struct qdio_q *q, unsigned int *bufnr,
    unsigned int *error)
{
 unsigned int start = q->first_to_check;
 int count;

 count = q->is_input_q ? qdio_inbound_q_moved(q, start) :
    qdio_outbound_q_moved(q, start);
 if (count == 0)
  return 0;

 *bufnr = start;
 *error = q->qdio_error;


 q->first_to_check = add_buf(start, count);
 q->qdio_error = 0;

 return count;
}
