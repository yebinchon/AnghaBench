
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;


 scalar_t__ IS_ERR (struct p9_fid*) ;
 struct p9_fid* p9_client_walk (struct p9_fid*,int ,int *,int) ;

__attribute__((used)) static inline struct p9_fid *clone_fid(struct p9_fid *fid)
{
 return IS_ERR(fid) ? fid : p9_client_walk(fid, 0, ((void*)0), 1);
}
