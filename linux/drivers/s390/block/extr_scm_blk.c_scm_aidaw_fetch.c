
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {struct aidaw* next_aidaw; } ;
struct aidaw {int dummy; } ;


 int PAGE_SIZE ;
 int memset (struct aidaw*,int ,int ) ;
 struct aidaw* scm_aidaw_alloc () ;
 unsigned int scm_aidaw_bytes (struct aidaw*) ;

struct aidaw *scm_aidaw_fetch(struct scm_request *scmrq, unsigned int bytes)
{
 struct aidaw *aidaw;

 if (scm_aidaw_bytes(scmrq->next_aidaw) >= bytes)
  return scmrq->next_aidaw;

 aidaw = scm_aidaw_alloc();
 if (aidaw)
  memset(aidaw, 0, PAGE_SIZE);
 return aidaw;
}
