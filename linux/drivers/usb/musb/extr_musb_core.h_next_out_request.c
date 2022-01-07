
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb_request {int dummy; } ;
struct musb_hw_ep {int ep_out; } ;


 struct musb_request* next_request (int *) ;

__attribute__((used)) static inline struct musb_request *next_out_request(struct musb_hw_ep *hw_ep)
{
 return next_request(&hw_ep->ep_out);
}
