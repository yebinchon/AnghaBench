
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int credits; int oplocks; int req_lock; } ;


 int enable_oplocks ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
cifs_set_credits(struct TCP_Server_Info *server, const int val)
{
 spin_lock(&server->req_lock);
 server->credits = val;
 server->oplocks = val > 1 ? enable_oplocks : 0;
 spin_unlock(&server->req_lock);
}
