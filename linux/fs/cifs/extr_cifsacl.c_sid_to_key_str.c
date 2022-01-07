
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sid {int num_subauth; int * sub_auth; scalar_t__* authority; int revision; } ;


 int GFP_KERNEL ;
 unsigned int SIDOWNER ;
 scalar_t__ SID_STRING_BASE_SIZE ;
 int SID_STRING_SUBAUTH_SIZE ;
 unsigned long long UINT_MAX ;
 char* kmalloc (scalar_t__,int ) ;
 unsigned int le32_to_cpu (int ) ;
 int sprintf (char*,char*,unsigned int,...) ;

__attribute__((used)) static char *
sid_to_key_str(struct cifs_sid *sidptr, unsigned int type)
{
 int i, len;
 unsigned int saval;
 char *sidstr, *strptr;
 unsigned long long id_auth_val;


 sidstr = kmalloc(3 + SID_STRING_BASE_SIZE +
    (SID_STRING_SUBAUTH_SIZE * sidptr->num_subauth),
    GFP_KERNEL);
 if (!sidstr)
  return sidstr;

 strptr = sidstr;
 len = sprintf(strptr, "%cs:S-%hhu", type == SIDOWNER ? 'o' : 'g',
   sidptr->revision);
 strptr += len;


 id_auth_val = (unsigned long long)sidptr->authority[5];
 id_auth_val |= (unsigned long long)sidptr->authority[4] << 8;
 id_auth_val |= (unsigned long long)sidptr->authority[3] << 16;
 id_auth_val |= (unsigned long long)sidptr->authority[2] << 24;
 id_auth_val |= (unsigned long long)sidptr->authority[1] << 32;
 id_auth_val |= (unsigned long long)sidptr->authority[0] << 48;





 if (id_auth_val <= UINT_MAX)
  len = sprintf(strptr, "-%llu", id_auth_val);
 else
  len = sprintf(strptr, "-0x%llx", id_auth_val);

 strptr += len;

 for (i = 0; i < sidptr->num_subauth; ++i) {
  saval = le32_to_cpu(sidptr->sub_auth[i]);
  len = sprintf(strptr, "-%u", saval);
  strptr += len;
 }

 return sidstr;
}
