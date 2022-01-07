
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dummy; } ;
typedef int ssize_t ;


 int QEDI_NVM_TGT_SEC ;
 int qedi_show_boot_tgt_info (struct qedi_ctx*,int,char*,int ) ;

__attribute__((used)) static ssize_t qedi_show_boot_tgt_sec_info(void *data, int type, char *buf)
{
 struct qedi_ctx *qedi = data;

 return qedi_show_boot_tgt_info(qedi, type, buf, QEDI_NVM_TGT_SEC);
}
