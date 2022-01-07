
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnx2i_endpoint {int ep_cid; TYPE_1__* hba; } ;
struct TYPE_2__ {int cnic_dev_type; } ;


 int BNX2I_NX2_DEV_57710 ;
 int GET_CID_NUM (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u32 bnx2i_get_cid_num(struct bnx2i_endpoint *ep)
{
 u32 cid;

 if (test_bit(BNX2I_NX2_DEV_57710, &ep->hba->cnic_dev_type))
  cid = ep->ep_cid;
 else
  cid = GET_CID_NUM(ep->ep_cid);
 return cid;
}
