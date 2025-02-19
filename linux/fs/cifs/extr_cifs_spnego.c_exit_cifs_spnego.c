
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int thread_keyring; } ;
struct TYPE_5__ {int name; } ;


 int FYI ;
 int cifs_dbg (int ,char*,int ) ;
 TYPE_1__ cifs_spnego_key_type ;
 int key_revoke (int ) ;
 int put_cred (TYPE_2__*) ;
 TYPE_2__* spnego_cred ;
 int unregister_key_type (TYPE_1__*) ;

void
exit_cifs_spnego(void)
{
 key_revoke(spnego_cred->thread_keyring);
 unregister_key_type(&cifs_spnego_key_type);
 put_cred(spnego_cred);
 cifs_dbg(FYI, "Unregistered %s key type\n", cifs_spnego_key_type.name);
}
