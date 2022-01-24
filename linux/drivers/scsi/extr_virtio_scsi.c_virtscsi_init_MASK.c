#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char const vq_callback_t ;
typedef  size_t u32 ;
typedef  char const virtqueue ;
struct virtio_scsi {size_t num_queues; int /*<<< orphan*/ * req_vqs; int /*<<< orphan*/  event_vq; int /*<<< orphan*/  ctrl_vq; } ;
struct virtio_device {int dummy; } ;
struct irq_affinity {int pre_vectors; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  VIRTIO_SCSI_CDB_SIZE ; 
 int /*<<< orphan*/  VIRTIO_SCSI_SENSE_SIZE ; 
 size_t VIRTIO_SCSI_VQ_BASE ; 
 int /*<<< orphan*/  cdb_size ; 
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 char** FUNC1 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sense_size ; 
 int FUNC2 (struct virtio_device*,size_t,char const**,char const**,char const**,struct irq_affinity*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* virtscsi_ctrl_done ; 
 char* virtscsi_event_done ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_device*) ; 
 char* virtscsi_req_done ; 

__attribute__((used)) static int FUNC6(struct virtio_device *vdev,
			 struct virtio_scsi *vscsi)
{
	int err;
	u32 i;
	u32 num_vqs;
	vq_callback_t **callbacks;
	const char **names;
	struct virtqueue **vqs;
	struct irq_affinity desc = { .pre_vectors = 2 };

	num_vqs = vscsi->num_queues + VIRTIO_SCSI_VQ_BASE;
	vqs = FUNC1(num_vqs, sizeof(struct virtqueue *), GFP_KERNEL);
	callbacks = FUNC1(num_vqs, sizeof(vq_callback_t *),
				  GFP_KERNEL);
	names = FUNC1(num_vqs, sizeof(char *), GFP_KERNEL);

	if (!callbacks || !vqs || !names) {
		err = -ENOMEM;
		goto out;
	}

	callbacks[0] = virtscsi_ctrl_done;
	callbacks[1] = virtscsi_event_done;
	names[0] = "control";
	names[1] = "event";
	for (i = VIRTIO_SCSI_VQ_BASE; i < num_vqs; i++) {
		callbacks[i] = virtscsi_req_done;
		names[i] = "request";
	}

	/* Discover virtqueues and write information to configuration.  */
	err = FUNC2(vdev, num_vqs, vqs, callbacks, names, &desc);
	if (err)
		goto out;

	FUNC4(&vscsi->ctrl_vq, vqs[0]);
	FUNC4(&vscsi->event_vq, vqs[1]);
	for (i = VIRTIO_SCSI_VQ_BASE; i < num_vqs; i++)
		FUNC4(&vscsi->req_vqs[i - VIRTIO_SCSI_VQ_BASE],
				 vqs[i]);

	FUNC3(vdev, cdb_size, VIRTIO_SCSI_CDB_SIZE);
	FUNC3(vdev, sense_size, VIRTIO_SCSI_SENSE_SIZE);

	err = 0;

out:
	FUNC0(names);
	FUNC0(callbacks);
	FUNC0(vqs);
	if (err)
		FUNC5(vdev);
	return err;
}