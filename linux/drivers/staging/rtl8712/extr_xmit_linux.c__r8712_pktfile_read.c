
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
struct pkt_file {scalar_t__ buf_len; scalar_t__ pkt_len; int cur_addr; int pkt; } ;


 scalar_t__ remainder_len (struct pkt_file*) ;
 int skb_copy_bits (int ,scalar_t__,int *,scalar_t__) ;

uint _r8712_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen)
{
 uint len;

 len = remainder_len(pfile);
 len = (rlen > len) ? len : rlen;
 if (rmem)
  skb_copy_bits(pfile->pkt, pfile->buf_len - pfile->pkt_len,
         rmem, len);
 pfile->cur_addr += len;
 pfile->pkt_len -= len;
 return len;
}
