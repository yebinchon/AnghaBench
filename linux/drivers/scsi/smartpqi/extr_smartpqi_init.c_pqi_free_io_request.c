
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_io_request {int refcount; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void pqi_free_io_request(struct pqi_io_request *io_request)
{
 atomic_dec(&io_request->refcount);
}
