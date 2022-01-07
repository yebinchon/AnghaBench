
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cio_debug_trace_id ;
 int debug_event (int ,int,void*,int) ;

__attribute__((used)) static inline void CIO_HEX_EVENT(int level, void *data, int length)
{
 debug_event(cio_debug_trace_id, level, data, length);
}
