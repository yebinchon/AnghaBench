
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key {int dummy; } ;


 int ENOKEY ;
 struct key* ERR_PTR (int ) ;

__attribute__((used)) static inline struct key *ecryptfs_get_encrypted_key(char *sig)
{
 return ERR_PTR(-ENOKEY);
}
