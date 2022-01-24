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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct virtio_scsi_vq {int dummy; } ;
struct virtio_scsi {struct virtio_scsi_vq* req_vqs; } ;
struct scsi_cmnd {int /*<<< orphan*/  request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct virtio_scsi_vq *FUNC2(struct virtio_scsi *vscsi,
						  struct scsi_cmnd *sc)
{
	u32 tag = FUNC0(sc->request);
	u16 hwq = FUNC1(tag);

	return &vscsi->req_vqs[hwq];
}