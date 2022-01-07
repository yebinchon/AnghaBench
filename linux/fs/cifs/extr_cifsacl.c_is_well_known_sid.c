
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct cifs_sid {int num_subauth; scalar_t__ revision; scalar_t__* authority; scalar_t__* sub_auth; } ;


 int FYI ;
 int NUM_AUTHS ;
 int cifs_dbg (int ,char*,int) ;
 int le32_to_cpu (scalar_t__) ;
 struct cifs_sid sid_unix_NFS_groups ;
 struct cifs_sid sid_unix_NFS_users ;
 struct cifs_sid sid_unix_groups ;
 struct cifs_sid sid_unix_users ;

__attribute__((used)) static bool
is_well_known_sid(const struct cifs_sid *psid, uint32_t *puid, bool is_group)
{
 int i;
 int num_subauth;
 const struct cifs_sid *pwell_known_sid;

 if (!psid || (puid == ((void*)0)))
  return 0;

 num_subauth = psid->num_subauth;


 if (num_subauth == 2) {
  if (is_group)
   pwell_known_sid = &sid_unix_groups;
  else
   pwell_known_sid = &sid_unix_users;
 } else if (num_subauth == 3) {
  if (is_group)
   pwell_known_sid = &sid_unix_NFS_groups;
  else
   pwell_known_sid = &sid_unix_NFS_users;
 } else
  return 0;


 if (psid->revision != pwell_known_sid->revision)
  return 0;


 for (i = 0; i < NUM_AUTHS; ++i) {
  if (psid->authority[i] != pwell_known_sid->authority[i]) {
   cifs_dbg(FYI, "auth %d did not match\n", i);
   return 0;
  }
 }

 if (num_subauth == 2) {
  if (psid->sub_auth[0] != pwell_known_sid->sub_auth[0])
   return 0;

  *puid = le32_to_cpu(psid->sub_auth[1]);
 } else {
  *puid = le32_to_cpu(psid->sub_auth[0]);
  if ((psid->sub_auth[0] != pwell_known_sid->sub_auth[0]) ||
      (psid->sub_auth[1] != pwell_known_sid->sub_auth[1]))
   return 0;

  *puid = le32_to_cpu(psid->sub_auth[2]);
 }

 cifs_dbg(FYI, "Unix UID %d returned from SID\n", *puid);
 return 1;
}
