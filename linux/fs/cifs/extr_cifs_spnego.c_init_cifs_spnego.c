
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct key {int flags; } ;
struct cred {int jit_keyring; struct key* thread_keyring; } ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int FYI ;
 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 scalar_t__ IS_ERR (struct key*) ;
 int KEY_ALLOC_NOT_IN_QUOTA ;
 int KEY_FLAG_ROOT_CAN_CLEAR ;
 int KEY_POS_ALL ;
 int KEY_POS_SETATTR ;
 int KEY_REQKEY_DEFL_THREAD_KEYRING ;
 int KEY_USR_READ ;
 int KEY_USR_VIEW ;
 int PTR_ERR (struct key*) ;
 int cifs_dbg (int ,char*,int ) ;
 TYPE_1__ cifs_spnego_key_type ;
 int key_put (struct key*) ;
 int key_serial (struct key*) ;
 struct key* keyring_alloc (char*,int ,int ,struct cred*,int,int ,int *,int *) ;
 struct cred* prepare_kernel_cred (int *) ;
 int put_cred (struct cred*) ;
 int register_key_type (TYPE_1__*) ;
 int set_bit (int ,int *) ;
 struct cred* spnego_cred ;

int
init_cifs_spnego(void)
{
 struct cred *cred;
 struct key *keyring;
 int ret;

 cifs_dbg(FYI, "Registering the %s key type\n",
   cifs_spnego_key_type.name);






 cred = prepare_kernel_cred(((void*)0));
 if (!cred)
  return -ENOMEM;

 keyring = keyring_alloc(".cifs_spnego",
    GLOBAL_ROOT_UID, GLOBAL_ROOT_GID, cred,
    (KEY_POS_ALL & ~KEY_POS_SETATTR) |
    KEY_USR_VIEW | KEY_USR_READ,
    KEY_ALLOC_NOT_IN_QUOTA, ((void*)0), ((void*)0));
 if (IS_ERR(keyring)) {
  ret = PTR_ERR(keyring);
  goto failed_put_cred;
 }

 ret = register_key_type(&cifs_spnego_key_type);
 if (ret < 0)
  goto failed_put_key;





 set_bit(KEY_FLAG_ROOT_CAN_CLEAR, &keyring->flags);
 cred->thread_keyring = keyring;
 cred->jit_keyring = KEY_REQKEY_DEFL_THREAD_KEYRING;
 spnego_cred = cred;

 cifs_dbg(FYI, "cifs spnego keyring: %d\n", key_serial(keyring));
 return 0;

failed_put_key:
 key_put(keyring);
failed_put_cred:
 put_cred(cred);
 return ret;
}
