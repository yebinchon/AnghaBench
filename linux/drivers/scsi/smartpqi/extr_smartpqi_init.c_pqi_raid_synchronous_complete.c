
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_io_request {int dummy; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void pqi_raid_synchronous_complete(struct pqi_io_request *io_request,
 void *context)
{
 struct completion *waiting = context;

 complete(waiting);
}
