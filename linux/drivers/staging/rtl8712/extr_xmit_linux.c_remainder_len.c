
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct pkt_file {scalar_t__ buf_start; scalar_t__ cur_addr; scalar_t__ buf_len; } ;
typedef scalar_t__ addr_t ;



__attribute__((used)) static uint remainder_len(struct pkt_file *pfile)
{
 return (uint)(pfile->buf_len - ((addr_t)(pfile->cur_addr) -
        (addr_t)(pfile->buf_start)));
}
