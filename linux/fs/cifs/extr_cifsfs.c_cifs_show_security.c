
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct cifs_ses {int sectype; scalar_t__ sign; int cred_uid; int * user_name; } ;







 int Unspecified ;
 int from_kuid_munged (int *,int ) ;
 int init_user_ns ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void
cifs_show_security(struct seq_file *s, struct cifs_ses *ses)
{
 if (ses->sectype == Unspecified) {
  if (ses->user_name == ((void*)0))
   seq_puts(s, ",sec=none");
  return;
 }

 seq_puts(s, ",sec=");

 switch (ses->sectype) {
 case 131:
  seq_puts(s, "lanman");
  break;
 case 129:
  seq_puts(s, "ntlmv2");
  break;
 case 130:
  seq_puts(s, "ntlm");
  break;
 case 132:
  seq_printf(s, "krb5,cruid=%u", from_kuid_munged(&init_user_ns,ses->cred_uid));
  break;
 case 128:
  seq_puts(s, "ntlmssp");
  break;
 default:

  seq_puts(s, "unknown");
  break;
 }

 if (ses->sign)
  seq_puts(s, "i");
}
