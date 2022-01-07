
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_event (int ,int,void*,int) ;
 int vfio_ccw_debug_trace_id ;

__attribute__((used)) static inline void VFIO_CCW_HEX_EVENT(int level, void *data, int length)
{
 debug_event(vfio_ccw_debug_trace_id, level, data, length);
}
