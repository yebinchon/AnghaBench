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
struct virtqueue {int dummy; } ;
struct virtio_scsi_cmd {int /*<<< orphan*/  resp; int /*<<< orphan*/  req; struct scsi_cmnd* sc; } ;
struct sg_table {struct scatterlist* sgl; } ;
struct TYPE_2__ {struct sg_table table; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; TYPE_1__ sdb; } ;
struct scatterlist {int dummy; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 scalar_t__ DMA_NONE ; 
 scalar_t__ DMA_TO_DEVICE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (struct virtqueue*,struct scatterlist**,unsigned int,unsigned int,struct virtio_scsi_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct virtqueue *vq,
			    struct virtio_scsi_cmd *cmd,
			    size_t req_size, size_t resp_size)
{
	struct scsi_cmnd *sc = cmd->sc;
	struct scatterlist *sgs[6], req, resp;
	struct sg_table *out, *in;
	unsigned out_num = 0, in_num = 0;

	out = in = NULL;

	if (sc && sc->sc_data_direction != DMA_NONE) {
		if (sc->sc_data_direction != DMA_FROM_DEVICE)
			out = &sc->sdb.table;
		if (sc->sc_data_direction != DMA_TO_DEVICE)
			in = &sc->sdb.table;
	}

	/* Request header.  */
	FUNC2(&req, &cmd->req, req_size);
	sgs[out_num++] = &req;

	/* Data-out buffer.  */
	if (out) {
		/* Place WRITE protection SGLs before Data OUT payload */
		if (FUNC0(sc))
			sgs[out_num++] = FUNC1(sc);
		sgs[out_num++] = out->sgl;
	}

	/* Response header.  */
	FUNC2(&resp, &cmd->resp, resp_size);
	sgs[out_num + in_num++] = &resp;

	/* Data-in buffer */
	if (in) {
		/* Place READ protection SGLs before Data IN payload */
		if (FUNC0(sc))
			sgs[out_num + in_num++] = FUNC1(sc);
		sgs[out_num + in_num++] = in->sgl;
	}

	return FUNC3(vq, sgs, out_num, in_num, cmd, GFP_ATOMIC);
}