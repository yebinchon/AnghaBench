
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ ino_t ;


 int hash_64 (int ,int) ;

__attribute__((used)) static inline ino_t
cifs_uniqueid_to_ino_t(u64 fileid)
{
 if ((sizeof(ino_t)) < (sizeof(u64)))
  return (ino_t)hash_64(fileid, (sizeof(ino_t) * 8) - 1) + 1;

 return (ino_t)fileid;

}
