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
typedef  int u8 ;
typedef  int u32 ;
struct scsi_cmnd {int dummy; } ;
struct esp_cmd_priv {int /*<<< orphan*/  num_sg; int /*<<< orphan*/  cur_sg; } ;
struct esp_cmd_entry {int flags; int* sense_ptr; } ;
struct esp {int prev_cfg3; int sreg; scalar_t__ rev; int config2; int data_dma_len; int /*<<< orphan*/  prev_soff; scalar_t__ send_cmd_residual; } ;

/* Variables and functions */
 scalar_t__ ESP100 ; 
 int ESP_CMD_FLAG_AUTOSENSE ; 
 int ESP_CMD_FLAG_RESIDUAL ; 
 int ESP_CMD_FLAG_WRITE ; 
 struct esp_cmd_priv* FUNC0 (struct scsi_cmnd*) ; 
 int ESP_CONFIG2_FENAB ; 
 int ESP_CONFIG3_EWIDE ; 
 int ESP_DIP ; 
 int ESP_DOP ; 
 int /*<<< orphan*/  ESP_FDATA ; 
 int /*<<< orphan*/  ESP_FFLAGS ; 
 int ESP_FF_FBYTES ; 
 int ESP_FF_ONOTZERO ; 
 int /*<<< orphan*/  ESP_STATUS ; 
 int ESP_STAT_PMASK ; 
 int ESP_STAT_TCNT ; 
 int /*<<< orphan*/  ESP_TCHI ; 
 int /*<<< orphan*/  ESP_TCLOW ; 
 int /*<<< orphan*/  ESP_TCMED ; 
 scalar_t__ FASHME ; 
 int /*<<< orphan*/  FAS_RLO ; 
 scalar_t__ PCSCSI ; 
 int /*<<< orphan*/  FUNC1 (struct esp*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

__attribute__((used)) static int FUNC6(struct esp *esp, struct esp_cmd_entry *ent,
			       struct scsi_cmnd *cmd)
{
	int fifo_cnt, ecount, bytes_sent, flush_fifo;

	fifo_cnt = FUNC2(ESP_FFLAGS) & ESP_FF_FBYTES;
	if (esp->prev_cfg3 & ESP_CONFIG3_EWIDE)
		fifo_cnt <<= 1;

	ecount = 0;
	if (!(esp->sreg & ESP_STAT_TCNT)) {
		ecount = ((unsigned int)FUNC2(ESP_TCLOW) |
			  (((unsigned int)FUNC2(ESP_TCMED)) << 8));
		if (esp->rev == FASHME)
			ecount |= ((unsigned int)FUNC2(FAS_RLO)) << 16;
		if (esp->rev == PCSCSI && (esp->config2 & ESP_CONFIG2_FENAB))
			ecount |= ((unsigned int)FUNC2(ESP_TCHI)) << 16;
	}

	bytes_sent = esp->data_dma_len;
	bytes_sent -= ecount;
	bytes_sent -= esp->send_cmd_residual;

	/*
	 * The am53c974 has a DMA 'pecularity'. The doc states:
	 * In some odd byte conditions, one residual byte will
	 * be left in the SCSI FIFO, and the FIFO Flags will
	 * never count to '0 '. When this happens, the residual
	 * byte should be retrieved via PIO following completion
	 * of the BLAST operation.
	 */
	if (fifo_cnt == 1 && ent->flags & ESP_CMD_FLAG_RESIDUAL) {
		size_t count = 1;
		size_t offset = bytes_sent;
		u8 bval = FUNC2(ESP_FDATA);

		if (ent->flags & ESP_CMD_FLAG_AUTOSENSE)
			ent->sense_ptr[bytes_sent] = bval;
		else {
			struct esp_cmd_priv *p = FUNC0(cmd);
			u8 *ptr;

			ptr = FUNC4(p->cur_sg, p->num_sg,
						  &offset, &count);
			if (FUNC3(ptr)) {
				*(ptr + offset) = bval;
				FUNC5(ptr);
			}
		}
		bytes_sent += fifo_cnt;
		ent->flags &= ~ESP_CMD_FLAG_RESIDUAL;
	}
	if (!(ent->flags & ESP_CMD_FLAG_WRITE))
		bytes_sent -= fifo_cnt;

	flush_fifo = 0;
	if (!esp->prev_soff) {
		/* Synchronous data transfer, always flush fifo. */
		flush_fifo = 1;
	} else {
		if (esp->rev == ESP100) {
			u32 fflags, phase;

			/* ESP100 has a chip bug where in the synchronous data
			 * phase it can mistake a final long REQ pulse from the
			 * target as an extra data byte.  Fun.
			 *
			 * To detect this case we resample the status register
			 * and fifo flags.  If we're still in a data phase and
			 * we see spurious chunks in the fifo, we return error
			 * to the caller which should reset and set things up
			 * such that we only try future transfers to this
			 * target in synchronous mode.
			 */
			esp->sreg = FUNC2(ESP_STATUS);
			phase = esp->sreg & ESP_STAT_PMASK;
			fflags = FUNC2(ESP_FFLAGS);

			if ((phase == ESP_DOP &&
			     (fflags & ESP_FF_ONOTZERO)) ||
			    (phase == ESP_DIP &&
			     (fflags & ESP_FF_FBYTES)))
				return -1;
		}
		if (!(ent->flags & ESP_CMD_FLAG_WRITE))
			flush_fifo = 1;
	}

	if (flush_fifo)
		FUNC1(esp);

	return bytes_sent;
}