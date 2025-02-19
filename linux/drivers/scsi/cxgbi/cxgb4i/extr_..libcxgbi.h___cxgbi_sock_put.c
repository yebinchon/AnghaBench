
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_sock {int refcnt; } ;


 int CXGBI_DBG_SOCK ;
 int cxgbi_sock_free ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int log_debug (int,char*,char const*,struct cxgbi_sock*,int ) ;

__attribute__((used)) static inline void __cxgbi_sock_put(const char *fn, struct cxgbi_sock *csk)
{
 log_debug(1 << CXGBI_DBG_SOCK,
  "%s, put csk 0x%p, ref %u-1.\n",
  fn, csk, kref_read(&csk->refcnt));
 kref_put(&csk->refcnt, cxgbi_sock_free);
}
