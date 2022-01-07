
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {struct r3964_client_info* firstClient; } ;
struct r3964_client_info {struct pid* pid; struct r3964_client_info* next; } ;
struct pid {int dummy; } ;



__attribute__((used)) static struct r3964_client_info *findClient(struct r3964_info *pInfo,
  struct pid *pid)
{
 struct r3964_client_info *pClient;

 for (pClient = pInfo->firstClient; pClient; pClient = pClient->next) {
  if (pClient->pid == pid) {
   return pClient;
  }
 }
 return ((void*)0);
}
