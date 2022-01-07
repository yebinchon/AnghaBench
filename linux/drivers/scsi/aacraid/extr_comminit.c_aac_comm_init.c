
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int u32 ;
struct aac_queue_block {TYPE_1__* queue; } ;
struct aac_entry {int dummy; } ;
struct aac_dev {int fib_lock; struct aac_queue_block* queues; } ;
struct TYPE_2__ {int lock; struct aac_entry* base; } ;


 int ADAP_HIGH_CMD_ENTRIES ;
 int ADAP_HIGH_RESP_ENTRIES ;
 int ADAP_NORM_CMD_ENTRIES ;
 int ADAP_NORM_RESP_ENTRIES ;
 size_t AdapHighCmdQueue ;
 size_t AdapHighRespQueue ;
 size_t AdapNormCmdQueue ;
 size_t AdapNormRespQueue ;
 int ENOMEM ;
 int HOST_HIGH_CMD_ENTRIES ;
 int HOST_HIGH_RESP_ENTRIES ;
 int HOST_NORM_CMD_ENTRIES ;
 int HOST_NORM_RESP_ENTRIES ;
 size_t HostHighCmdQueue ;
 size_t HostHighRespQueue ;
 size_t HostNormCmdQueue ;
 size_t HostNormRespQueue ;
 int NUMBER_OF_COMM_QUEUES ;
 int QUEUE_ALIGNMENT ;
 int TOTAL_QUEUE_ENTRIES ;
 int aac_alloc_comm (struct aac_dev*,void**,unsigned long,int ) ;
 int aac_queue_init (struct aac_dev*,TYPE_1__*,int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int aac_comm_init(struct aac_dev * dev)
{
 unsigned long hdrsize = (sizeof(u32) * NUMBER_OF_COMM_QUEUES) * 2;
 unsigned long queuesize = sizeof(struct aac_entry) * TOTAL_QUEUE_ENTRIES;
 u32 *headers;
 struct aac_entry * queues;
 unsigned long size;
 struct aac_queue_block * comm = dev->queues;






 spin_lock_init(&dev->fib_lock);






 size = hdrsize + queuesize;

 if (!aac_alloc_comm(dev, (void * *)&headers, size, QUEUE_ALIGNMENT))
  return -ENOMEM;

 queues = (struct aac_entry *)(((ulong)headers) + hdrsize);


 comm->queue[HostNormCmdQueue].base = queues;
 aac_queue_init(dev, &comm->queue[HostNormCmdQueue], headers, HOST_NORM_CMD_ENTRIES);
 queues += HOST_NORM_CMD_ENTRIES;
 headers += 2;


 comm->queue[HostHighCmdQueue].base = queues;
 aac_queue_init(dev, &comm->queue[HostHighCmdQueue], headers, HOST_HIGH_CMD_ENTRIES);

 queues += HOST_HIGH_CMD_ENTRIES;
 headers +=2;


 comm->queue[AdapNormCmdQueue].base = queues;
 aac_queue_init(dev, &comm->queue[AdapNormCmdQueue], headers, ADAP_NORM_CMD_ENTRIES);

 queues += ADAP_NORM_CMD_ENTRIES;
 headers += 2;


 comm->queue[AdapHighCmdQueue].base = queues;
 aac_queue_init(dev, &comm->queue[AdapHighCmdQueue], headers, ADAP_HIGH_CMD_ENTRIES);

 queues += ADAP_HIGH_CMD_ENTRIES;
 headers += 2;


 comm->queue[HostNormRespQueue].base = queues;
 aac_queue_init(dev, &comm->queue[HostNormRespQueue], headers, HOST_NORM_RESP_ENTRIES);
 queues += HOST_NORM_RESP_ENTRIES;
 headers += 2;


 comm->queue[HostHighRespQueue].base = queues;
 aac_queue_init(dev, &comm->queue[HostHighRespQueue], headers, HOST_HIGH_RESP_ENTRIES);

 queues += HOST_HIGH_RESP_ENTRIES;
 headers += 2;


 comm->queue[AdapNormRespQueue].base = queues;
 aac_queue_init(dev, &comm->queue[AdapNormRespQueue], headers, ADAP_NORM_RESP_ENTRIES);

 queues += ADAP_NORM_RESP_ENTRIES;
 headers += 2;


 comm->queue[AdapHighRespQueue].base = queues;
 aac_queue_init(dev, &comm->queue[AdapHighRespQueue], headers, ADAP_HIGH_RESP_ENTRIES);

 comm->queue[AdapNormCmdQueue].lock = comm->queue[HostNormRespQueue].lock;
 comm->queue[AdapHighCmdQueue].lock = comm->queue[HostHighRespQueue].lock;
 comm->queue[AdapNormRespQueue].lock = comm->queue[HostNormCmdQueue].lock;
 comm->queue[AdapHighRespQueue].lock = comm->queue[HostHighCmdQueue].lock;

 return 0;
}
