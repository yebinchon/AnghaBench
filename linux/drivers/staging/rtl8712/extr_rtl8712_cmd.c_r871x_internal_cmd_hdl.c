
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drvint_cmd_parm {int i_cid; int pbuf; } ;
struct _adapter {int dummy; } ;


 int StatusWatchdogCallback (struct _adapter*) ;

 int kfree (int ) ;

__attribute__((used)) static void r871x_internal_cmd_hdl(struct _adapter *padapter, u8 *pbuf)
{
 struct drvint_cmd_parm *pdrvcmd;

 if (!pbuf)
  return;
 pdrvcmd = (struct drvint_cmd_parm *)pbuf;
 switch (pdrvcmd->i_cid) {
 case 128:
  StatusWatchdogCallback(padapter);
  break;
 default:
  break;
 }
 kfree(pdrvcmd->pbuf);
}
