
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvec {void* iov_len; void* iov_base; } ;


 int ARRAY_SIZE (struct kvec*) ;
 int XBT_NIL ;
 int XS_WATCH ;
 void* strlen (char const*) ;
 int xs_error (int ) ;
 int xs_talkv (int ,int ,struct kvec*,int ,int *) ;

__attribute__((used)) static int xs_watch(const char *path, const char *token)
{
 struct kvec iov[2];

 iov[0].iov_base = (void *)path;
 iov[0].iov_len = strlen(path) + 1;
 iov[1].iov_base = (void *)token;
 iov[1].iov_len = strlen(token) + 1;

 return xs_error(xs_talkv(XBT_NIL, XS_WATCH, iov,
     ARRAY_SIZE(iov), ((void*)0)));
}
