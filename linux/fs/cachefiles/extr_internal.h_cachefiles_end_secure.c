
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int dummy; } ;
struct cachefiles_cache {int dummy; } ;


 int revert_creds (struct cred const*) ;

__attribute__((used)) static inline void cachefiles_end_secure(struct cachefiles_cache *cache,
      const struct cred *saved_cred)
{
 revert_creds(saved_cred);
}
