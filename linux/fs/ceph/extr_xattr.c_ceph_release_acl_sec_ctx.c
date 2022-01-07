
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_acl_sec_ctx {scalar_t__ pagelist; int sec_ctxlen; int sec_ctx; int default_acl; int acl; } ;


 int ceph_pagelist_release (scalar_t__) ;
 int posix_acl_release (int ) ;
 int security_release_secctx (int ,int ) ;

void ceph_release_acl_sec_ctx(struct ceph_acl_sec_ctx *as_ctx)
{







 if (as_ctx->pagelist)
  ceph_pagelist_release(as_ctx->pagelist);
}
