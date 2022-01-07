
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkt_file {scalar_t__ pkt_len; } ;
typedef int sint ;



sint rtw_endofpktfile(struct pkt_file *pfile)
{
 if (pfile->pkt_len == 0)
  return 1;
 return 0;
}
