
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_portname; int nlp_nodename; } ;
struct lpfc_name {int dummy; } ;


 int NLP_RPI_REGISTERED ;
 scalar_t__ memcmp (struct lpfc_name*,int *,int) ;

__attribute__((used)) static int
lpfc_check_adisc(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
   struct lpfc_name *nn, struct lpfc_name *pn)
{

 if (!(ndlp->nlp_flag & NLP_RPI_REGISTERED))
  return 0;




 if (memcmp(nn, &ndlp->nlp_nodename, sizeof (struct lpfc_name)))
  return 0;

 if (memcmp(pn, &ndlp->nlp_portname, sizeof (struct lpfc_name)))
  return 0;


 return 1;
}
