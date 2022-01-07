
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext_code {int subcode; } ;


 int IRQEXT_FTP ;
 int complete (int *) ;
 int diag_ftp_rx_complete ;
 int diag_ftp_subcode ;
 int inc_irq_stat (int ) ;

__attribute__((used)) static void diag_ftp_handler(struct ext_code extirq,
        unsigned int param32,
        unsigned long param64)
{
 if ((extirq.subcode >> 8) != 8)
  return;

 inc_irq_stat(IRQEXT_FTP);
 diag_ftp_subcode = extirq.subcode & 0xffU;
 complete(&diag_ftp_rx_complete);
}
