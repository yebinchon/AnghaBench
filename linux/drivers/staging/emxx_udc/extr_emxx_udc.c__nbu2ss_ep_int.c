
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nbu2ss_udc {int dummy; } ;


 int _nbu2ss_ep0_int (struct nbu2ss_udc*) ;
 int _nbu2ss_epn_int (struct nbu2ss_udc*,int ) ;

__attribute__((used)) static inline void _nbu2ss_ep_int(struct nbu2ss_udc *udc, u32 epnum)
{
 if (epnum == 0)
  _nbu2ss_ep0_int(udc);
 else
  _nbu2ss_epn_int(udc, epnum);
}
