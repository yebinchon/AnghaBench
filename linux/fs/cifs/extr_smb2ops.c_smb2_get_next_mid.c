
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int CurrentMid; } ;
typedef scalar_t__ __u64 ;


 int GlobalMid_Lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __u64
smb2_get_next_mid(struct TCP_Server_Info *server)
{
 __u64 mid;

 spin_lock(&GlobalMid_Lock);
 mid = server->CurrentMid++;
 spin_unlock(&GlobalMid_Lock);
 return mid;
}
