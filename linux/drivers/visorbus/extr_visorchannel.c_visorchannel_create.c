
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ulong ;
typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ size; } ;
struct visorchannel {int needs_lock; scalar_t__ physaddr; size_t nbytes; int guid; int * mapped; void* requested; TYPE_1__ chan_hdr; int remove_lock; int insert_lock; } ;
struct channel_header {int dummy; } ;
typedef int guid_t ;
typedef int gfp_t ;


 int MEMREMAP_WB ;
 int VISOR_DRV_NAME ;
 int guid_copy (int *,int const*) ;
 int guid_equal (int const*,int *) ;
 struct visorchannel* kzalloc (int,int ) ;
 void* memremap (scalar_t__,size_t,int ) ;
 int memunmap (int *) ;
 int release_mem_region (scalar_t__,size_t) ;
 void* request_mem_region (scalar_t__,size_t,int ) ;
 int spin_lock_init (int *) ;
 int visor_video_guid ;
 int visorchannel_destroy (struct visorchannel*) ;
 int visorchannel_read (struct visorchannel*,int ,TYPE_1__*,size_t) ;

struct visorchannel *visorchannel_create(u64 physaddr, gfp_t gfp,
      const guid_t *guid, bool needs_lock)
{
 struct visorchannel *channel;
 int err;
 size_t size = sizeof(struct channel_header);

 if (physaddr == 0)
  return ((void*)0);

 channel = kzalloc(sizeof(*channel), gfp);
 if (!channel)
  return ((void*)0);
 channel->needs_lock = needs_lock;
 spin_lock_init(&channel->insert_lock);
 spin_lock_init(&channel->remove_lock);






 channel->requested = request_mem_region(physaddr, size, VISOR_DRV_NAME);
 if (!channel->requested && !guid_equal(guid, &visor_video_guid))

  goto err_destroy_channel;
 channel->mapped = memremap(physaddr, size, MEMREMAP_WB);
 if (!channel->mapped) {
  release_mem_region(physaddr, size);
  goto err_destroy_channel;
 }
 channel->physaddr = physaddr;
 channel->nbytes = size;
 err = visorchannel_read(channel, 0, &channel->chan_hdr, size);
 if (err)
  goto err_destroy_channel;
 size = (ulong)channel->chan_hdr.size;
 memunmap(channel->mapped);
 if (channel->requested)
  release_mem_region(channel->physaddr, channel->nbytes);
 channel->mapped = ((void*)0);
 channel->requested = request_mem_region(channel->physaddr, size,
      VISOR_DRV_NAME);
 if (!channel->requested && !guid_equal(guid, &visor_video_guid))

  goto err_destroy_channel;
 channel->mapped = memremap(channel->physaddr, size, MEMREMAP_WB);
 if (!channel->mapped) {
  release_mem_region(channel->physaddr, size);
  goto err_destroy_channel;
 }
 channel->nbytes = size;
 guid_copy(&channel->guid, guid);
 return channel;

err_destroy_channel:
 visorchannel_destroy(channel);
 return ((void*)0);
}
