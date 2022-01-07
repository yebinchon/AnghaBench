
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smcd_dev {struct ism_dev* priv; } ;
struct ism_dev {int dummy; } ;


 int ISM_CREATE_REQ (int ,unsigned int,int,unsigned int) ;
 int PAGE_SIZE ;
 int __ism_move (struct ism_dev*,int ,void*,unsigned int) ;
 unsigned int max_bytes (unsigned int,unsigned int,int ) ;

__attribute__((used)) static int ism_move(struct smcd_dev *smcd, u64 dmb_tok, unsigned int idx,
      bool sf, unsigned int offset, void *data, unsigned int size)
{
 struct ism_dev *ism = smcd->priv;
 unsigned int bytes;
 u64 dmb_req;
 int ret;

 while (size) {
  bytes = max_bytes(offset, size, PAGE_SIZE);
  dmb_req = ISM_CREATE_REQ(dmb_tok, idx, size == bytes ? sf : 0,
      offset);

  ret = __ism_move(ism, dmb_req, data, bytes);
  if (ret)
   return ret;

  size -= bytes;
  data += bytes;
  offset += bytes;
 }

 return 0;
}
