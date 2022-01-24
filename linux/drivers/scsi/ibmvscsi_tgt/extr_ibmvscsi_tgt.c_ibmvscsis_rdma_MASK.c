#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  long ulong ;
struct srp_target {struct scsi_info* ldata; } ;
struct srp_direct_buf {int /*<<< orphan*/  len; int /*<<< orphan*/  va; } ;
struct TYPE_4__ {TYPE_1__* window; } ;
struct scsi_info {int flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  intr_lock; TYPE_2__ dds; } ;
struct scatterlist {int dummy; } ;
struct iu_entry {struct srp_target* target; } ;
struct ibmvscsis_cmd {struct iu_entry* iue; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  long dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  liobn; } ;

/* Variables and functions */
 int CLIENT_FAILED ; 
 int DMA_TO_DEVICE ; 
 long EIO ; 
#define  H_DEST_PARM 131 
#define  H_PERMISSION 130 
#define  H_SOURCE_PARM 129 
#define  H_SUCCESS 128 
 size_t LOCAL ; 
 size_t REMOTE ; 
 int RESPONSE_Q_DOWN ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 long FUNC5 (long,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 long max_vdma_size ; 
 long FUNC7 (struct scatterlist*) ; 
 long FUNC8 (struct scatterlist*) ; 
 struct scatterlist* FUNC9 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct ibmvscsis_cmd *cmd, struct scatterlist *sg,
			  int nsg, struct srp_direct_buf *md, int nmd,
			  enum dma_data_direction dir, unsigned int bytes)
{
	struct iu_entry *iue = cmd->iue;
	struct srp_target *target = iue->target;
	struct scsi_info *vscsi = target->ldata;
	struct scatterlist *sgp;
	dma_addr_t client_ioba, server_ioba;
	ulong buf_len;
	ulong client_len, server_len;
	int md_idx;
	long tx_len;
	long rc = 0;

	if (bytes == 0)
		return 0;

	sgp = sg;
	client_len = 0;
	server_len = 0;
	md_idx = 0;
	tx_len = bytes;

	do {
		if (client_len == 0) {
			if (md_idx >= nmd) {
				FUNC3(&vscsi->dev, "rdma: ran out of client memory descriptors\n");
				rc = -EIO;
				break;
			}
			client_ioba = FUNC1(md[md_idx].va);
			client_len = FUNC0(md[md_idx].len);
		}
		if (server_len == 0) {
			if (!sgp) {
				FUNC3(&vscsi->dev, "rdma: ran out of scatter/gather list\n");
				rc = -EIO;
				break;
			}
			server_ioba = FUNC7(sgp);
			server_len = FUNC8(sgp);
		}

		buf_len = tx_len;

		if (buf_len > client_len)
			buf_len = client_len;

		if (buf_len > server_len)
			buf_len = server_len;

		if (buf_len > max_vdma_size)
			buf_len = max_vdma_size;

		if (dir == DMA_TO_DEVICE) {
			/* read from client */
			rc = FUNC5(buf_len,
					 vscsi->dds.window[REMOTE].liobn,
					 client_ioba,
					 vscsi->dds.window[LOCAL].liobn,
					 server_ioba);
		} else {
			/* The h_copy_rdma will cause phyp, running in another
			 * partition, to read memory, so we need to make sure
			 * the data has been written out, hence these syncs.
			 */
			/* ensure that everything is in memory */
			FUNC6();
			/* ensure that memory has been made visible */
			FUNC4();
			rc = FUNC5(buf_len,
					 vscsi->dds.window[LOCAL].liobn,
					 server_ioba,
					 vscsi->dds.window[REMOTE].liobn,
					 client_ioba);
		}
		switch (rc) {
		case H_SUCCESS:
			break;
		case H_PERMISSION:
		case H_SOURCE_PARM:
		case H_DEST_PARM:
			if (FUNC2(vscsi)) {
				FUNC10(&vscsi->intr_lock);
				vscsi->flags |=
					(RESPONSE_Q_DOWN | CLIENT_FAILED);
				FUNC11(&vscsi->intr_lock);
			}
			FUNC3(&vscsi->dev, "rdma: h_copy_rdma failed, rc %ld\n",
				rc);
			break;

		default:
			FUNC3(&vscsi->dev, "rdma: unknown error %ld from h_copy_rdma\n",
				rc);
			break;
		}

		if (!rc) {
			tx_len -= buf_len;
			if (tx_len) {
				client_len -= buf_len;
				if (client_len == 0)
					md_idx++;
				else
					client_ioba += buf_len;

				server_len -= buf_len;
				if (server_len == 0)
					sgp = FUNC9(sgp);
				else
					server_ioba += buf_len;
			} else {
				break;
			}
		}
	} while (!rc);

	return rc;
}