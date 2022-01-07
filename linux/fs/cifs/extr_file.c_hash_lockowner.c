
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fl_owner_t ;
typedef int __u32 ;


 int cifs_lock_secret ;
 int hash32_ptr (void const*) ;

__attribute__((used)) static __u32
hash_lockowner(fl_owner_t owner)
{
 return cifs_lock_secret ^ hash32_ptr((const void *)owner);
}
