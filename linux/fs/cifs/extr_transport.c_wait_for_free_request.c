
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TCP_Server_Info {int dummy; } ;


 int wait_for_free_credits (struct TCP_Server_Info*,int,int,int const,unsigned int*) ;

__attribute__((used)) static int
wait_for_free_request(struct TCP_Server_Info *server, const int flags,
        unsigned int *instance)
{
 return wait_for_free_credits(server, 1, -1, flags,
         instance);
}
