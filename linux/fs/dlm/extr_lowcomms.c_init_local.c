
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;


 int DLM_MAX_ADDR_COUNT ;
 int GFP_NOFS ;
 struct sockaddr_storage** dlm_local_addr ;
 scalar_t__ dlm_local_count ;
 scalar_t__ dlm_our_addr (struct sockaddr_storage*,int) ;
 struct sockaddr_storage* kmemdup (struct sockaddr_storage*,int,int ) ;

__attribute__((used)) static void init_local(void)
{
 struct sockaddr_storage sas, *addr;
 int i;

 dlm_local_count = 0;
 for (i = 0; i < DLM_MAX_ADDR_COUNT; i++) {
  if (dlm_our_addr(&sas, i))
   break;

  addr = kmemdup(&sas, sizeof(*addr), GFP_NOFS);
  if (!addr)
   break;
  dlm_local_addr[dlm_local_count++] = addr;
 }
}
