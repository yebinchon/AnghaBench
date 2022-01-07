
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline int nvme_dbbuf_need_event(u16 event_idx, u16 new_idx, u16 old)
{
 return (u16)(new_idx - event_idx - 1) < (u16)(new_idx - old);
}
