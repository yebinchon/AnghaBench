
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pkt_file {int buf_start; int cur_buffer; int buf_len; int pkt_len; int cur_addr; TYPE_1__* pkt; } ;
struct TYPE_3__ {int len; int data; } ;
typedef TYPE_1__ _pkt ;



void _r8712_open_pktfile(_pkt *pktptr, struct pkt_file *pfile)
{
 pfile->pkt = pktptr;
 pfile->cur_addr = pfile->buf_start = pktptr->data;
 pfile->pkt_len = pfile->buf_len = pktptr->len;
 pfile->cur_buffer = pfile->buf_start;
}
