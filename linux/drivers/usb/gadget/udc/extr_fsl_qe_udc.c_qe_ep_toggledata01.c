
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qe_ep {int data01; } ;



__attribute__((used)) static int qe_ep_toggledata01(struct qe_ep *ep)
{
 ep->data01 ^= 0x1;
 return 0;
}
