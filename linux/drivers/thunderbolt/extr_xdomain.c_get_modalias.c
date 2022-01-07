
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_service {char* key; int prtcid; int prtcvers; int prtcrevs; } ;


 int snprintf (char*,size_t,char*,char*,int,int,int) ;

__attribute__((used)) static int get_modalias(struct tb_service *svc, char *buf, size_t size)
{
 return snprintf(buf, size, "tbsvc:k%sp%08Xv%08Xr%08X", svc->key,
   svc->prtcid, svc->prtcvers, svc->prtcrevs);
}
