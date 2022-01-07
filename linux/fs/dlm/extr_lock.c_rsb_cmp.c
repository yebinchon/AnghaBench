
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_name; } ;


 int DLM_RESNAME_MAXLEN ;
 int memcmp (int ,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int rsb_cmp(struct dlm_rsb *r, const char *name, int nlen)
{
 char maxname[DLM_RESNAME_MAXLEN];

 memset(maxname, 0, DLM_RESNAME_MAXLEN);
 memcpy(maxname, name, nlen);
 return memcmp(r->res_name, maxname, DLM_RESNAME_MAXLEN);
}
