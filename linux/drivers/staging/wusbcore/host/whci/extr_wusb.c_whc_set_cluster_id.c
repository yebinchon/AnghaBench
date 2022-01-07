
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct whc {int dummy; } ;


 int WUSBCMD_BCID (int ) ;
 int WUSBCMD_BCID_MASK ;
 int whc_write_wusbcmd (struct whc*,int ,int ) ;

int whc_set_cluster_id(struct whc *whc, u8 bcid)
{
 whc_write_wusbcmd(whc, WUSBCMD_BCID_MASK, WUSBCMD_BCID(bcid));
 return 0;
}
