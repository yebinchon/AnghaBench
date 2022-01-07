
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbu2ss_udc {int dummy; } ;


 int _nbu2ss_req_feature (struct nbu2ss_udc*,int) ;

__attribute__((used)) static int std_req_clear_feature(struct nbu2ss_udc *udc)
{
 return _nbu2ss_req_feature(udc, 0);
}
