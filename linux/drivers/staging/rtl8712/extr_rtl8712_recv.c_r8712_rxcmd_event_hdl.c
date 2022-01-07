
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct recv_stat {int rxdw0; } ;
struct _adapter {int dummy; } ;
typedef int __le32 ;


 int BIT (int) ;
 scalar_t__ RXDESC_SIZE ;
 int le32_to_cpu (int ) ;
 int r8712_event_handle (struct _adapter*,int *) ;

void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
{
 __le32 voffset;
 u8 *poffset;
 u16 cmd_len, drvinfo_sz;
 struct recv_stat *prxstat;

 poffset = prxcmdbuf;
 voffset = *(__le32 *)poffset;
 prxstat = prxcmdbuf;
 drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
 drvinfo_sz <<= 3;
 poffset += RXDESC_SIZE + drvinfo_sz;
 do {
  voffset = *(__le32 *)poffset;
  cmd_len = (u16)(le32_to_cpu(voffset) & 0xffff);
  r8712_event_handle(padapter, (__le32 *)poffset);
  poffset += (cmd_len + 8);
 } while (le32_to_cpu(voffset) & BIT(31));

}
