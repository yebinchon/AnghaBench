
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int req_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline bool
has_credits(struct TCP_Server_Info *server, int *credits, int num_credits)
{
 int num;
 spin_lock(&server->req_lock);
 num = *credits;
 spin_unlock(&server->req_lock);
 return num >= num_credits;
}
