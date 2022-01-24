#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_18__ {scalar_t__ ptr; } ;
struct scsi_cmnd {int* cmnd; int* sense_buffer; int result; TYPE_4__ SCp; TYPE_1__* device; } ;
struct gdth_cmndinfo {scalar_t__ priority; int phase; int OpCode; int /*<<< orphan*/  wait_for_completion; scalar_t__ internal_command; } ;
struct TYPE_19__ {scalar_t__ cmd_cnt; scalar_t__ cmd_offs_dpmem; scalar_t__ virt_bus; int scan_mode; scalar_t__ bus_cnt; int tid_cnt; int /*<<< orphan*/  hanum; int /*<<< orphan*/  smp_lock; struct scsi_cmnd* req_first; TYPE_3__* hdr; TYPE_2__* raw; } ;
typedef  TYPE_5__ gdth_ha_str ;
struct TYPE_17__ {int cluster_type; int devtype; scalar_t__ media_changed; int /*<<< orphan*/  present; scalar_t__ lock; } ;
struct TYPE_16__ {scalar_t__* io_cnt; scalar_t__ lock; } ;
struct TYPE_15__ {scalar_t__ channel; scalar_t__ id; scalar_t__ lun; } ;

/* Variables and functions */
#define  ALLOW_MEDIUM_REMOVAL 144 
 size_t FUNC0 (TYPE_5__*,scalar_t__) ; 
 int CACHESERVICE ; 
 int CHECK_CONDITION ; 
 int CLUSTER_DRIVE ; 
 scalar_t__ DEFAULT_PRI ; 
 int DID_ABORT ; 
 int DID_BAD_TARGET ; 
 int DID_OK ; 
 scalar_t__ FALSE ; 
 scalar_t__ GDTH_MAX_RAW ; 
 int GDT_CLUST_INFO ; 
 int GDT_SCAN_END ; 
 int GDT_SCAN_START ; 
#define  INQUIRY 143 
 scalar_t__ MAX_HDRIVES ; 
#define  MODE_SENSE 142 
 int NOT_READY ; 
 int /*<<< orphan*/  POLL_TIMEOUT ; 
#define  READ_10 141 
#define  READ_16 140 
#define  READ_6 139 
#define  READ_CAPACITY 138 
#define  RELEASE 137 
#define  REQUEST_SENSE 136 
#define  RESERVE 135 
 int SCSIRAWSERVICE ; 
#define  SERVICE_ACTION_IN_16 134 
#define  START_STOP 133 
#define  TEST_UNIT_READY 132 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ TRUE ; 
 void* UNIT_ATTENTION ; 
#define  VERIFY 131 
#define  WRITE_10 130 
#define  WRITE_16 129 
#define  WRITE_6 128 
 struct gdth_cmndinfo* FUNC3 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (TYPE_5__*,struct scsi_cmnd*,scalar_t__) ; 
 int FUNC6 (TYPE_5__*,struct scsi_cmnd*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,struct scsi_cmnd*) ; 
 scalar_t__ gdth_polling ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int FUNC10 (TYPE_5__*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC17(gdth_ha_str *ha)
{
    register struct scsi_cmnd *pscp;
    register struct scsi_cmnd *nscp;
    u8 b, t, l, firsttime;
    u8 this_cmd, next_cmd;
    unsigned long flags = 0;
    int cmd_index;

    FUNC1(("gdth_next() hanum %d\n", ha->hanum));
    if (!gdth_polling) 
        FUNC15(&ha->smp_lock, flags);

    ha->cmd_cnt = ha->cmd_offs_dpmem = 0;
    this_cmd = firsttime = TRUE;
    next_cmd = gdth_polling ? FALSE:TRUE;
    cmd_index = 0;

    for (nscp = pscp = ha->req_first; nscp; nscp = (struct scsi_cmnd *)nscp->SCp.ptr) {
        struct gdth_cmndinfo *nscp_cmndinfo = FUNC3(nscp);
        if (nscp != pscp && nscp != (struct scsi_cmnd *)pscp->SCp.ptr)
            pscp = (struct scsi_cmnd *)pscp->SCp.ptr;
        if (!nscp_cmndinfo->internal_command) {
            b = nscp->device->channel;
            t = nscp->device->id;
            l = nscp->device->lun;
            if (nscp_cmndinfo->priority >= DEFAULT_PRI) {
                if ((b != ha->virt_bus && ha->raw[FUNC0(ha,b)].lock) ||
                    (b == ha->virt_bus && t < MAX_HDRIVES && ha->hdr[t].lock))
                    continue;
            }
        } else
            b = t = l = 0;

        if (firsttime) {
            if (FUNC11(ha)) {        /* controller busy ? */
                FUNC1(("gdth_next() controller %d busy !\n", ha->hanum));
                if (!gdth_polling) {
                    FUNC16(&ha->smp_lock, flags);
                    return;
                }
                while (FUNC11(ha))
                    FUNC4(1);
            }   
            firsttime = FALSE;
        }

        if (!nscp_cmndinfo->internal_command) {
        if (nscp_cmndinfo->phase == -1) {
            nscp_cmndinfo->phase = CACHESERVICE;           /* default: cache svc. */
            if (nscp->cmnd[0] == TEST_UNIT_READY) {
                FUNC2(("TEST_UNIT_READY Bus %d Id %d LUN %d\n", 
                        b, t, l));
                /* TEST_UNIT_READY -> set scan mode */
                if ((ha->scan_mode & 0x0f) == 0) {
                    if (b == 0 && t == 0 && l == 0) {
                        ha->scan_mode |= 1;
                        FUNC2(("Scan mode: 0x%x\n", ha->scan_mode));
                    }
                } else if ((ha->scan_mode & 0x0f) == 1) {
                    if (b == 0 && ((t == 0 && l == 1) ||
                         (t == 1 && l == 0))) {
                        nscp_cmndinfo->OpCode = GDT_SCAN_START;
                        nscp_cmndinfo->phase = ((ha->scan_mode & 0x10 ? 1:0) << 8)
                            | SCSIRAWSERVICE;
                        ha->scan_mode = 0x12;
                        FUNC2(("Scan mode: 0x%x (SCAN_START)\n", 
                                ha->scan_mode));
                    } else {
                        ha->scan_mode &= 0x10;
                        FUNC2(("Scan mode: 0x%x\n", ha->scan_mode));
                    }                   
                } else if (ha->scan_mode == 0x12) {
                    if (b == ha->bus_cnt && t == ha->tid_cnt-1) {
                        nscp_cmndinfo->phase = SCSIRAWSERVICE;
                        nscp_cmndinfo->OpCode = GDT_SCAN_END;
                        ha->scan_mode &= 0x10;
                        FUNC2(("Scan mode: 0x%x (SCAN_END)\n", 
                                ha->scan_mode));
                    }
                }
            }
            if (b == ha->virt_bus && nscp->cmnd[0] != INQUIRY &&
                nscp->cmnd[0] != READ_CAPACITY && nscp->cmnd[0] != MODE_SENSE &&
                (ha->hdr[t].cluster_type & CLUSTER_DRIVE)) {
                /* always GDT_CLUST_INFO! */
                nscp_cmndinfo->OpCode = GDT_CLUST_INFO;
            }
        }
        }

        if (nscp_cmndinfo->OpCode != -1) {
            if ((nscp_cmndinfo->phase & 0xff) == CACHESERVICE) {
                if (!(cmd_index=FUNC5(ha, nscp, t)))
                    this_cmd = FALSE;
                next_cmd = FALSE;
            } else if ((nscp_cmndinfo->phase & 0xff) == SCSIRAWSERVICE) {
                if (!(cmd_index=FUNC6(ha, nscp, FUNC0(ha, b))))
                    this_cmd = FALSE;
                next_cmd = FALSE;
            } else {
                FUNC13((char*)nscp->sense_buffer,0,16);
                nscp->sense_buffer[0] = 0x70;
                nscp->sense_buffer[2] = NOT_READY;
                nscp->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
                if (!nscp_cmndinfo->wait_for_completion)
                    nscp_cmndinfo->wait_for_completion++;
                else
                    FUNC9(nscp);
            }
        } else if (FUNC3(nscp)->internal_command) {
            if (!(cmd_index=FUNC10(ha, nscp)))
                this_cmd = FALSE;
            next_cmd = FALSE;
        } else if (b != ha->virt_bus) {
            if (ha->raw[FUNC0(ha,b)].io_cnt[t] >= GDTH_MAX_RAW ||
                !(cmd_index=FUNC6(ha, nscp, FUNC0(ha, b))))
                this_cmd = FALSE;
            else 
                ha->raw[FUNC0(ha,b)].io_cnt[t]++;
        } else if (t >= MAX_HDRIVES || !ha->hdr[t].present || l != 0) {
            FUNC2(("Command 0x%x to bus %d id %d lun %d -> IGNORE\n",
                    nscp->cmnd[0], b, t, l));
            nscp->result = DID_BAD_TARGET << 16;
            if (!nscp_cmndinfo->wait_for_completion)
                nscp_cmndinfo->wait_for_completion++;
            else
                FUNC9(nscp);
        } else {
            switch (nscp->cmnd[0]) {
              case TEST_UNIT_READY:
              case INQUIRY:
              case REQUEST_SENSE:
              case READ_CAPACITY:
              case VERIFY:
              case START_STOP:
              case MODE_SENSE:
              case SERVICE_ACTION_IN_16:
                FUNC1(("cache cmd %x/%x/%x/%x/%x/%x\n",nscp->cmnd[0],
                       nscp->cmnd[1],nscp->cmnd[2],nscp->cmnd[3],
                       nscp->cmnd[4],nscp->cmnd[5]));
                if (ha->hdr[t].media_changed && nscp->cmnd[0] != INQUIRY) {
                    /* return UNIT_ATTENTION */
                    FUNC2(("cmd 0x%x target %d: UNIT_ATTENTION\n",
                             nscp->cmnd[0], t));
                    ha->hdr[t].media_changed = FALSE;
                    FUNC13((char*)nscp->sense_buffer,0,16);
                    nscp->sense_buffer[0] = 0x70;
                    nscp->sense_buffer[2] = UNIT_ATTENTION;
                    nscp->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
                    if (!nscp_cmndinfo->wait_for_completion)
                        nscp_cmndinfo->wait_for_completion++;
                    else
                        FUNC9(nscp);
                } else if (FUNC7(ha, nscp))
                    FUNC9(nscp);
                break;

              case ALLOW_MEDIUM_REMOVAL:
                FUNC1(("cache cmd %x/%x/%x/%x/%x/%x\n",nscp->cmnd[0],
                       nscp->cmnd[1],nscp->cmnd[2],nscp->cmnd[3],
                       nscp->cmnd[4],nscp->cmnd[5]));
                if ( (nscp->cmnd[4]&1) && !(ha->hdr[t].devtype&1) ) {
                    FUNC1(("Prevent r. nonremov. drive->do nothing\n"));
                    nscp->result = DID_OK << 16;
                    nscp->sense_buffer[0] = 0;
                    if (!nscp_cmndinfo->wait_for_completion)
                        nscp_cmndinfo->wait_for_completion++;
                    else
                        FUNC9(nscp);
                } else {
                    nscp->cmnd[3] = (ha->hdr[t].devtype&1) ? 1:0;
                    FUNC1(("Prevent/allow r. %d rem. drive %d\n",
                           nscp->cmnd[4],nscp->cmnd[3]));
                    if (!(cmd_index=FUNC5(ha, nscp, t)))
                        this_cmd = FALSE;
                }
                break;
                
              case RESERVE:
              case RELEASE:
                FUNC2(("cache cmd %s\n",nscp->cmnd[0] == RESERVE ?
                        "RESERVE" : "RELEASE"));
                if (!(cmd_index=FUNC5(ha, nscp, t)))
                    this_cmd = FALSE;
                break;
                
              case READ_6:
              case WRITE_6:
              case READ_10:
              case WRITE_10:
              case READ_16:
              case WRITE_16:
                if (ha->hdr[t].media_changed) {
                    /* return UNIT_ATTENTION */
                    FUNC2(("cmd 0x%x target %d: UNIT_ATTENTION\n",
                             nscp->cmnd[0], t));
                    ha->hdr[t].media_changed = FALSE;
                    FUNC13((char*)nscp->sense_buffer,0,16);
                    nscp->sense_buffer[0] = 0x70;
                    nscp->sense_buffer[2] = UNIT_ATTENTION;
                    nscp->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
                    if (!nscp_cmndinfo->wait_for_completion)
                        nscp_cmndinfo->wait_for_completion++;
                    else
                        FUNC9(nscp);
                } else if (!(cmd_index=FUNC5(ha, nscp, t)))
                    this_cmd = FALSE;
                break;

              default:
                FUNC2(("cache cmd %x/%x/%x/%x/%x/%x unknown\n",nscp->cmnd[0],
                        nscp->cmnd[1],nscp->cmnd[2],nscp->cmnd[3],
                        nscp->cmnd[4],nscp->cmnd[5]));
                FUNC14("GDT-HA %d: Unknown SCSI command 0x%x to cache service !\n",
                       ha->hanum, nscp->cmnd[0]);
                nscp->result = DID_ABORT << 16;
                if (!nscp_cmndinfo->wait_for_completion)
                    nscp_cmndinfo->wait_for_completion++;
                else
                    FUNC9(nscp);
                break;
            }
        }

        if (!this_cmd)
            break;
        if (nscp == ha->req_first)
            ha->req_first = pscp = (struct scsi_cmnd *)nscp->SCp.ptr;
        else
            pscp->SCp.ptr = nscp->SCp.ptr;
        if (!next_cmd)
            break;
    }

    if (ha->cmd_cnt > 0) {
        FUNC8(ha);
    }

    if (!gdth_polling) 
        FUNC16(&ha->smp_lock, flags);

    if (gdth_polling && ha->cmd_cnt > 0) {
        if (!FUNC12(ha, cmd_index, POLL_TIMEOUT))
            FUNC14("GDT-HA %d: Command %d timed out !\n",
                   ha->hanum, cmd_index);
    }
}