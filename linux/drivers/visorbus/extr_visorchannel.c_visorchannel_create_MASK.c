#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t ulong ;
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ size; } ;
struct visorchannel {int needs_lock; scalar_t__ physaddr; size_t nbytes; int /*<<< orphan*/  guid; int /*<<< orphan*/ * mapped; void* requested; TYPE_1__ chan_hdr; int /*<<< orphan*/  remove_lock; int /*<<< orphan*/  insert_lock; } ;
struct channel_header {int dummy; } ;
typedef  int /*<<< orphan*/  guid_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  MEMREMAP_WB ; 
 int /*<<< orphan*/  VISOR_DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 struct visorchannel* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,size_t) ; 
 void* FUNC6 (scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  visor_video_guid ; 
 int /*<<< orphan*/  FUNC8 (struct visorchannel*) ; 
 int FUNC9 (struct visorchannel*,int /*<<< orphan*/ ,TYPE_1__*,size_t) ; 

struct visorchannel *FUNC10(u64 physaddr, gfp_t gfp,
					 const guid_t *guid, bool needs_lock)
{
	struct visorchannel *channel;
	int err;
	size_t size = sizeof(struct channel_header);

	if (physaddr == 0)
		return NULL;

	channel = FUNC2(sizeof(*channel), gfp);
	if (!channel)
		return NULL;
	channel->needs_lock = needs_lock;
	FUNC7(&channel->insert_lock);
	FUNC7(&channel->remove_lock);
	/*
	 * Video driver constains the efi framebuffer so it will get a conflict
	 * resource when requesting its full mem region. Since we are only
	 * using the efi framebuffer for video we can ignore this. Remember that
	 * we haven't requested it so we don't try to release later on.
	 */
	channel->requested = FUNC6(physaddr, size, VISOR_DRV_NAME);
	if (!channel->requested && !FUNC1(guid, &visor_video_guid))
		/* we only care about errors if this is not the video channel */
		goto err_destroy_channel;
	channel->mapped = FUNC3(physaddr, size, MEMREMAP_WB);
	if (!channel->mapped) {
		FUNC5(physaddr, size);
		goto err_destroy_channel;
	}
	channel->physaddr = physaddr;
	channel->nbytes = size;
	err = FUNC9(channel, 0, &channel->chan_hdr, size);
	if (err)
		goto err_destroy_channel;
	size = (ulong)channel->chan_hdr.size;
	FUNC4(channel->mapped);
	if (channel->requested)
		FUNC5(channel->physaddr, channel->nbytes);
	channel->mapped = NULL;
	channel->requested = FUNC6(channel->physaddr, size,
						VISOR_DRV_NAME);
	if (!channel->requested && !FUNC1(guid, &visor_video_guid))
		/* we only care about errors if this is not the video channel */
		goto err_destroy_channel;
	channel->mapped = FUNC3(channel->physaddr, size, MEMREMAP_WB);
	if (!channel->mapped) {
		FUNC5(channel->physaddr, size);
		goto err_destroy_channel;
	}
	channel->nbytes = size;
	FUNC0(&channel->guid, guid);
	return channel;

err_destroy_channel:
	FUNC8(channel);
	return NULL;
}