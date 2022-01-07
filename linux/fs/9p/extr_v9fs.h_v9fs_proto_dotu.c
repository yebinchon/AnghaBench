
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int flags; } ;


 int V9FS_PROTO_2000U ;

__attribute__((used)) static inline int v9fs_proto_dotu(struct v9fs_session_info *v9ses)
{
 return v9ses->flags & V9FS_PROTO_2000U;
}
