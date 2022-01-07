
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibmvfc_host {int state; } ;


 int DID_NO_CONNECT ;
 int DID_REQUEUE ;
__attribute__((used)) static inline int ibmvfc_host_chkready(struct ibmvfc_host *vhost)
{
 int result = 0;

 switch (vhost->state) {
 case 130:
 case 132:
  result = DID_NO_CONNECT << 16;
  break;
 case 128:
 case 131:
 case 133:
 case 129:
  result = DID_REQUEUE << 16;
  break;
 case 134:
  result = 0;
  break;
 }

 return result;
}
