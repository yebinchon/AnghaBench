
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_qdio {unsigned long long req_q_time; int req_q_util; int req_q_free; } ;


 int QDIO_MAX_BUFFERS_PER_Q ;
 int atomic_read (int *) ;
 unsigned long long get_tod_clock_monotonic () ;

__attribute__((used)) static inline void zfcp_qdio_account(struct zfcp_qdio *qdio)
{
 unsigned long long now, span;
 int used;

 now = get_tod_clock_monotonic();
 span = (now - qdio->req_q_time) >> 12;
 used = QDIO_MAX_BUFFERS_PER_Q - atomic_read(&qdio->req_q_free);
 qdio->req_q_util += used * span;
 qdio->req_q_time = now;
}
