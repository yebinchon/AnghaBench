
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ actual; } ;
struct net2280_request {TYPE_1__ req; } ;
struct net2280_ep {int dummy; } ;


 int DMA_BYTE_COUNT_MASK ;
 int done (struct net2280_ep*,struct net2280_request*,int) ;

__attribute__((used)) static inline void
dma_done(struct net2280_ep *ep, struct net2280_request *req, u32 dmacount,
  int status)
{
 req->req.actual = req->req.length - (DMA_BYTE_COUNT_MASK & dmacount);
 done(ep, req, status);
}
