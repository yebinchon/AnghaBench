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
struct virtio_scsi {int /*<<< orphan*/  vdev; } ;
struct blk_mq_queue_map {int dummy; } ;
struct TYPE_2__ {struct blk_mq_queue_map* map; } ;
struct Scsi_Host {TYPE_1__ tag_set; } ;

/* Variables and functions */
 size_t HCTX_TYPE_DEFAULT ; 
 int FUNC0 (struct blk_mq_queue_map*,int /*<<< orphan*/ ,int) ; 
 struct virtio_scsi* FUNC1 (struct Scsi_Host*) ; 

__attribute__((used)) static int FUNC2(struct Scsi_Host *shost)
{
	struct virtio_scsi *vscsi = FUNC1(shost);
	struct blk_mq_queue_map *qmap = &shost->tag_set.map[HCTX_TYPE_DEFAULT];

	return FUNC0(qmap, vscsi->vdev, 2);
}