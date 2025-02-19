
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_18__ {scalar_t__ ptr; } ;
struct scsi_cmnd {int* cmnd; int* sense_buffer; int result; TYPE_4__ SCp; TYPE_1__* device; } ;
struct gdth_cmndinfo {scalar_t__ priority; int phase; int OpCode; int wait_for_completion; scalar_t__ internal_command; } ;
struct TYPE_19__ {scalar_t__ cmd_cnt; scalar_t__ cmd_offs_dpmem; scalar_t__ virt_bus; int scan_mode; scalar_t__ bus_cnt; int tid_cnt; int hanum; int smp_lock; struct scsi_cmnd* req_first; TYPE_3__* hdr; TYPE_2__* raw; } ;
typedef TYPE_5__ gdth_ha_str ;
struct TYPE_17__ {int cluster_type; int devtype; scalar_t__ media_changed; int present; scalar_t__ lock; } ;
struct TYPE_16__ {scalar_t__* io_cnt; scalar_t__ lock; } ;
struct TYPE_15__ {scalar_t__ channel; scalar_t__ id; scalar_t__ lun; } ;



 size_t BUS_L2P (TYPE_5__*,scalar_t__) ;
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

 scalar_t__ MAX_HDRIVES ;

 int NOT_READY ;
 int POLL_TIMEOUT ;







 int SCSIRAWSERVICE ;



 int TRACE (char*) ;
 int TRACE2 (char*) ;
 scalar_t__ TRUE ;
 void* UNIT_ATTENTION ;




 struct gdth_cmndinfo* gdth_cmnd_priv (struct scsi_cmnd*) ;
 int gdth_delay (int) ;
 int gdth_fill_cache_cmd (TYPE_5__*,struct scsi_cmnd*,scalar_t__) ;
 int gdth_fill_raw_cmd (TYPE_5__*,struct scsi_cmnd*,size_t) ;
 int gdth_internal_cache_cmd (TYPE_5__*,struct scsi_cmnd*) ;
 scalar_t__ gdth_polling ;
 int gdth_release_event (TYPE_5__*) ;
 int gdth_scsi_done (struct scsi_cmnd*) ;
 int gdth_special_cmd (TYPE_5__*,struct scsi_cmnd*) ;
 scalar_t__ gdth_test_busy (TYPE_5__*) ;
 int gdth_wait (TYPE_5__*,int,int ) ;
 int memset (char*,int ,int) ;
 int printk (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gdth_next(gdth_ha_str *ha)
{
    register struct scsi_cmnd *pscp;
    register struct scsi_cmnd *nscp;
    u8 b, t, l, firsttime;
    u8 this_cmd, next_cmd;
    unsigned long flags = 0;
    int cmd_index;

    TRACE(("gdth_next() hanum %d\n", ha->hanum));
    if (!gdth_polling)
        spin_lock_irqsave(&ha->smp_lock, flags);

    ha->cmd_cnt = ha->cmd_offs_dpmem = 0;
    this_cmd = firsttime = TRUE;
    next_cmd = gdth_polling ? FALSE:TRUE;
    cmd_index = 0;

    for (nscp = pscp = ha->req_first; nscp; nscp = (struct scsi_cmnd *)nscp->SCp.ptr) {
        struct gdth_cmndinfo *nscp_cmndinfo = gdth_cmnd_priv(nscp);
        if (nscp != pscp && nscp != (struct scsi_cmnd *)pscp->SCp.ptr)
            pscp = (struct scsi_cmnd *)pscp->SCp.ptr;
        if (!nscp_cmndinfo->internal_command) {
            b = nscp->device->channel;
            t = nscp->device->id;
            l = nscp->device->lun;
            if (nscp_cmndinfo->priority >= DEFAULT_PRI) {
                if ((b != ha->virt_bus && ha->raw[BUS_L2P(ha,b)].lock) ||
                    (b == ha->virt_bus && t < MAX_HDRIVES && ha->hdr[t].lock))
                    continue;
            }
        } else
            b = t = l = 0;

        if (firsttime) {
            if (gdth_test_busy(ha)) {
                TRACE(("gdth_next() controller %d busy !\n", ha->hanum));
                if (!gdth_polling) {
                    spin_unlock_irqrestore(&ha->smp_lock, flags);
                    return;
                }
                while (gdth_test_busy(ha))
                    gdth_delay(1);
            }
            firsttime = FALSE;
        }

        if (!nscp_cmndinfo->internal_command) {
        if (nscp_cmndinfo->phase == -1) {
            nscp_cmndinfo->phase = CACHESERVICE;
            if (nscp->cmnd[0] == 132) {
                TRACE2(("TEST_UNIT_READY Bus %d Id %d LUN %d\n",
                        b, t, l));

                if ((ha->scan_mode & 0x0f) == 0) {
                    if (b == 0 && t == 0 && l == 0) {
                        ha->scan_mode |= 1;
                        TRACE2(("Scan mode: 0x%x\n", ha->scan_mode));
                    }
                } else if ((ha->scan_mode & 0x0f) == 1) {
                    if (b == 0 && ((t == 0 && l == 1) ||
                         (t == 1 && l == 0))) {
                        nscp_cmndinfo->OpCode = GDT_SCAN_START;
                        nscp_cmndinfo->phase = ((ha->scan_mode & 0x10 ? 1:0) << 8)
                            | SCSIRAWSERVICE;
                        ha->scan_mode = 0x12;
                        TRACE2(("Scan mode: 0x%x (SCAN_START)\n",
                                ha->scan_mode));
                    } else {
                        ha->scan_mode &= 0x10;
                        TRACE2(("Scan mode: 0x%x\n", ha->scan_mode));
                    }
                } else if (ha->scan_mode == 0x12) {
                    if (b == ha->bus_cnt && t == ha->tid_cnt-1) {
                        nscp_cmndinfo->phase = SCSIRAWSERVICE;
                        nscp_cmndinfo->OpCode = GDT_SCAN_END;
                        ha->scan_mode &= 0x10;
                        TRACE2(("Scan mode: 0x%x (SCAN_END)\n",
                                ha->scan_mode));
                    }
                }
            }
            if (b == ha->virt_bus && nscp->cmnd[0] != 143 &&
                nscp->cmnd[0] != 138 && nscp->cmnd[0] != 142 &&
                (ha->hdr[t].cluster_type & CLUSTER_DRIVE)) {

                nscp_cmndinfo->OpCode = GDT_CLUST_INFO;
            }
        }
        }

        if (nscp_cmndinfo->OpCode != -1) {
            if ((nscp_cmndinfo->phase & 0xff) == CACHESERVICE) {
                if (!(cmd_index=gdth_fill_cache_cmd(ha, nscp, t)))
                    this_cmd = FALSE;
                next_cmd = FALSE;
            } else if ((nscp_cmndinfo->phase & 0xff) == SCSIRAWSERVICE) {
                if (!(cmd_index=gdth_fill_raw_cmd(ha, nscp, BUS_L2P(ha, b))))
                    this_cmd = FALSE;
                next_cmd = FALSE;
            } else {
                memset((char*)nscp->sense_buffer,0,16);
                nscp->sense_buffer[0] = 0x70;
                nscp->sense_buffer[2] = NOT_READY;
                nscp->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
                if (!nscp_cmndinfo->wait_for_completion)
                    nscp_cmndinfo->wait_for_completion++;
                else
                    gdth_scsi_done(nscp);
            }
        } else if (gdth_cmnd_priv(nscp)->internal_command) {
            if (!(cmd_index=gdth_special_cmd(ha, nscp)))
                this_cmd = FALSE;
            next_cmd = FALSE;
        } else if (b != ha->virt_bus) {
            if (ha->raw[BUS_L2P(ha,b)].io_cnt[t] >= GDTH_MAX_RAW ||
                !(cmd_index=gdth_fill_raw_cmd(ha, nscp, BUS_L2P(ha, b))))
                this_cmd = FALSE;
            else
                ha->raw[BUS_L2P(ha,b)].io_cnt[t]++;
        } else if (t >= MAX_HDRIVES || !ha->hdr[t].present || l != 0) {
            TRACE2(("Command 0x%x to bus %d id %d lun %d -> IGNORE\n",
                    nscp->cmnd[0], b, t, l));
            nscp->result = DID_BAD_TARGET << 16;
            if (!nscp_cmndinfo->wait_for_completion)
                nscp_cmndinfo->wait_for_completion++;
            else
                gdth_scsi_done(nscp);
        } else {
            switch (nscp->cmnd[0]) {
              case 132:
              case 143:
              case 136:
              case 138:
              case 131:
              case 133:
              case 142:
              case 134:
                TRACE(("cache cmd %x/%x/%x/%x/%x/%x\n",nscp->cmnd[0],
                       nscp->cmnd[1],nscp->cmnd[2],nscp->cmnd[3],
                       nscp->cmnd[4],nscp->cmnd[5]));
                if (ha->hdr[t].media_changed && nscp->cmnd[0] != 143) {

                    TRACE2(("cmd 0x%x target %d: UNIT_ATTENTION\n",
                             nscp->cmnd[0], t));
                    ha->hdr[t].media_changed = FALSE;
                    memset((char*)nscp->sense_buffer,0,16);
                    nscp->sense_buffer[0] = 0x70;
                    nscp->sense_buffer[2] = UNIT_ATTENTION;
                    nscp->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
                    if (!nscp_cmndinfo->wait_for_completion)
                        nscp_cmndinfo->wait_for_completion++;
                    else
                        gdth_scsi_done(nscp);
                } else if (gdth_internal_cache_cmd(ha, nscp))
                    gdth_scsi_done(nscp);
                break;

              case 144:
                TRACE(("cache cmd %x/%x/%x/%x/%x/%x\n",nscp->cmnd[0],
                       nscp->cmnd[1],nscp->cmnd[2],nscp->cmnd[3],
                       nscp->cmnd[4],nscp->cmnd[5]));
                if ( (nscp->cmnd[4]&1) && !(ha->hdr[t].devtype&1) ) {
                    TRACE(("Prevent r. nonremov. drive->do nothing\n"));
                    nscp->result = DID_OK << 16;
                    nscp->sense_buffer[0] = 0;
                    if (!nscp_cmndinfo->wait_for_completion)
                        nscp_cmndinfo->wait_for_completion++;
                    else
                        gdth_scsi_done(nscp);
                } else {
                    nscp->cmnd[3] = (ha->hdr[t].devtype&1) ? 1:0;
                    TRACE(("Prevent/allow r. %d rem. drive %d\n",
                           nscp->cmnd[4],nscp->cmnd[3]));
                    if (!(cmd_index=gdth_fill_cache_cmd(ha, nscp, t)))
                        this_cmd = FALSE;
                }
                break;

              case 135:
              case 137:
                TRACE2(("cache cmd %s\n",nscp->cmnd[0] == 135 ?
                        "RESERVE" : "RELEASE"));
                if (!(cmd_index=gdth_fill_cache_cmd(ha, nscp, t)))
                    this_cmd = FALSE;
                break;

              case 139:
              case 128:
              case 141:
              case 130:
              case 140:
              case 129:
                if (ha->hdr[t].media_changed) {

                    TRACE2(("cmd 0x%x target %d: UNIT_ATTENTION\n",
                             nscp->cmnd[0], t));
                    ha->hdr[t].media_changed = FALSE;
                    memset((char*)nscp->sense_buffer,0,16);
                    nscp->sense_buffer[0] = 0x70;
                    nscp->sense_buffer[2] = UNIT_ATTENTION;
                    nscp->result = (DID_OK << 16) | (CHECK_CONDITION << 1);
                    if (!nscp_cmndinfo->wait_for_completion)
                        nscp_cmndinfo->wait_for_completion++;
                    else
                        gdth_scsi_done(nscp);
                } else if (!(cmd_index=gdth_fill_cache_cmd(ha, nscp, t)))
                    this_cmd = FALSE;
                break;

              default:
                TRACE2(("cache cmd %x/%x/%x/%x/%x/%x unknown\n",nscp->cmnd[0],
                        nscp->cmnd[1],nscp->cmnd[2],nscp->cmnd[3],
                        nscp->cmnd[4],nscp->cmnd[5]));
                printk("GDT-HA %d: Unknown SCSI command 0x%x to cache service !\n",
                       ha->hanum, nscp->cmnd[0]);
                nscp->result = DID_ABORT << 16;
                if (!nscp_cmndinfo->wait_for_completion)
                    nscp_cmndinfo->wait_for_completion++;
                else
                    gdth_scsi_done(nscp);
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
        gdth_release_event(ha);
    }

    if (!gdth_polling)
        spin_unlock_irqrestore(&ha->smp_lock, flags);

    if (gdth_polling && ha->cmd_cnt > 0) {
        if (!gdth_wait(ha, cmd_index, POLL_TIMEOUT))
            printk("GDT-HA %d: Command %d timed out !\n",
                   ha->hanum, cmd_index);
    }
}
