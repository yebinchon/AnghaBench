
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct timespec64 {int dummy; } ;
struct ntlmssp2_name {int length; int type; } ;
struct TYPE_2__ {int len; unsigned char* response; } ;
struct cifs_ses {TYPE_1__ auth_key; } ;
typedef int __le64 ;


 unsigned int NTLMSSP_AV_EOL ;
 unsigned int NTLMSSP_AV_TIMESTAMP ;
 int cifs_UnixTimeToNT (struct timespec64) ;
 int cpu_to_le64 (int ) ;
 int ktime_get_real_ts64 (struct timespec64*) ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static __le64
find_timestamp(struct cifs_ses *ses)
{
 unsigned int attrsize;
 unsigned int type;
 unsigned int onesize = sizeof(struct ntlmssp2_name);
 unsigned char *blobptr;
 unsigned char *blobend;
 struct ntlmssp2_name *attrptr;
 struct timespec64 ts;

 if (!ses->auth_key.len || !ses->auth_key.response)
  return 0;

 blobptr = ses->auth_key.response;
 blobend = blobptr + ses->auth_key.len;

 while (blobptr + onesize < blobend) {
  attrptr = (struct ntlmssp2_name *) blobptr;
  type = le16_to_cpu(attrptr->type);
  if (type == NTLMSSP_AV_EOL)
   break;
  blobptr += 2;
  attrsize = le16_to_cpu(attrptr->length);
  blobptr += 2;
  if (blobptr + attrsize > blobend)
   break;
  if (type == NTLMSSP_AV_TIMESTAMP) {
   if (attrsize == sizeof(u64))
    return *((__le64 *)blobptr);
  }
  blobptr += attrsize;
 }

 ktime_get_real_ts64(&ts);
 return cpu_to_le64(cifs_UnixTimeToNT(ts));
}
