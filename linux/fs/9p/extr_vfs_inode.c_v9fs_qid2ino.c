
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct p9_qid {int path; } ;
typedef int path ;
typedef scalar_t__ ino_t ;


 int memcpy (scalar_t__*,int*,int) ;

ino_t v9fs_qid2ino(struct p9_qid *qid)
{
 u64 path = qid->path + 2;
 ino_t i = 0;

 if (sizeof(ino_t) == sizeof(path))
  memcpy(&i, &path, sizeof(ino_t));
 else
  i = (ino_t) (path ^ (path >> 32));

 return i;
}
