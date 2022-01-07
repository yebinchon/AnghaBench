
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QE_CR_PROTOCOL_UNSPECIFIED ;
 int QE_CR_SUBBLOCK_INVALID ;
 int QE_IMMAP_SIZE ;
 int QE_RESET ;
 int get_qe_base () ;
 int * ioremap (int ,int ) ;
 int panic (char*) ;
 int * qe_immr ;
 int qe_issue_cmd (int ,int ,int ,int ) ;
 int qe_muram_init () ;
 scalar_t__ qe_sdma_init () ;
 int qe_snums_init () ;

void qe_reset(void)
{
 if (qe_immr == ((void*)0))
  qe_immr = ioremap(get_qe_base(), QE_IMMAP_SIZE);

 qe_snums_init();

 qe_issue_cmd(QE_RESET, QE_CR_SUBBLOCK_INVALID,
       QE_CR_PROTOCOL_UNSPECIFIED, 0);


 qe_muram_init();

 if (qe_sdma_init())
  panic("sdma init failed!");
}
