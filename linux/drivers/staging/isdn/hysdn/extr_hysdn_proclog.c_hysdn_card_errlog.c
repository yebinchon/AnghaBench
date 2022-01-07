
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ucText; int ulErrSubtype; int ulErrType; } ;
typedef TYPE_1__ tErrLogEntry ;
typedef int hysdn_card ;


 int ERRLOG_TEXT_SIZE ;
 int put_log_buffer (int *,char*) ;
 int sprintf (char*,char*,int ,int ,int ) ;

void
hysdn_card_errlog(hysdn_card *card, tErrLogEntry *logp, int maxsize)
{
 char buf[ERRLOG_TEXT_SIZE + 40];

 sprintf(buf, "LOG 0x%08lX 0x%08lX : %s\n", logp->ulErrType, logp->ulErrSubtype, logp->ucText);
 put_log_buffer(card, buf);
}
