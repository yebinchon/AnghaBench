
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cifs_ses* response; } ;
struct cifs_ses {int iface_list; TYPE_1__ auth_key; int domainName; int user_name; struct cifs_ses* password; int serverNOS; int serverDomain; int serverOS; } ;


 int FYI ;
 int atomic_dec (int *) ;
 int cifs_dbg (int ,char*) ;
 int kfree (int ) ;
 int kzfree (struct cifs_ses*) ;
 int sesInfoAllocCount ;

void
sesInfoFree(struct cifs_ses *buf_to_free)
{
 if (buf_to_free == ((void*)0)) {
  cifs_dbg(FYI, "Null buffer passed to sesInfoFree\n");
  return;
 }

 atomic_dec(&sesInfoAllocCount);
 kfree(buf_to_free->serverOS);
 kfree(buf_to_free->serverDomain);
 kfree(buf_to_free->serverNOS);
 kzfree(buf_to_free->password);
 kfree(buf_to_free->user_name);
 kfree(buf_to_free->domainName);
 kzfree(buf_to_free->auth_key.response);
 kfree(buf_to_free->iface_list);
 kzfree(buf_to_free);
}
