
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxgbi_hba {TYPE_2__* ndev; int ipv4addr; TYPE_1__* cdev; } ;
typedef int __be32 ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int flags; } ;


 int CXGBI_FLAG_IPV4_SET ;
 int pr_info (char*,int ) ;

__attribute__((used)) static inline void cxgbi_set_iscsi_ipv4(struct cxgbi_hba *chba, __be32 ipaddr)
{
 if (chba->cdev->flags & CXGBI_FLAG_IPV4_SET)
  chba->ipv4addr = ipaddr;
 else
  pr_info("set iscsi ipv4 NOT supported, using %s ipv4.\n",
   chba->ndev->name);
}
