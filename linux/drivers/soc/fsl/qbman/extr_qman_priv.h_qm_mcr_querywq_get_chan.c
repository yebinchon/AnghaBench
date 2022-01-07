
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qm_mcr_querywq {int channel_wq; } ;



__attribute__((used)) static inline u16 qm_mcr_querywq_get_chan(const struct qm_mcr_querywq *wq)
{
 return wq->channel_wq >> 3;
}
