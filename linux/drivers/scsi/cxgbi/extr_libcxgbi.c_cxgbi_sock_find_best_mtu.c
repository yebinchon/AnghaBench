
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxgbi_sock {TYPE_1__* cdev; } ;
struct TYPE_2__ {int nmtus; unsigned short* mtus; } ;



__attribute__((used)) static unsigned int cxgbi_sock_find_best_mtu(struct cxgbi_sock *csk,
          unsigned short mtu)
{
 int i = 0;

 while (i < csk->cdev->nmtus - 1 && csk->cdev->mtus[i + 1] <= mtu)
  ++i;

 return i;
}
