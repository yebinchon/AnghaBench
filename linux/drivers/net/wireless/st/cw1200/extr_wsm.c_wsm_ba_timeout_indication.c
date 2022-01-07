
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int WSM_GET (struct wsm_buf*,int *,int) ;
 int WSM_GET32 (struct wsm_buf*) ;
 int WSM_GET8 (struct wsm_buf*) ;
 int pr_info (char*,int ,int *) ;

__attribute__((used)) static int wsm_ba_timeout_indication(struct cw1200_common *priv,
         struct wsm_buf *buf)
{
 u32 dummy;
 u8 tid;
 u8 dummy2;
 u8 addr[ETH_ALEN];

 dummy = WSM_GET32(buf);
 tid = WSM_GET8(buf);
 dummy2 = WSM_GET8(buf);
 WSM_GET(buf, addr, ETH_ALEN);

 pr_info("BlockACK timeout, tid %d, addr %pM\n",
  tid, addr);

 return 0;

underflow:
 return -EINVAL;
}
