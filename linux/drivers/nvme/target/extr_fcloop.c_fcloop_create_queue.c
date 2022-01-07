
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nvme_fc_local_port {int dummy; } ;



__attribute__((used)) static int
fcloop_create_queue(struct nvme_fc_local_port *localport,
   unsigned int qidx, u16 qsize,
   void **handle)
{
 *handle = localport;
 return 0;
}
