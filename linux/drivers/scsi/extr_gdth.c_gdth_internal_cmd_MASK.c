#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u64 ;
typedef  void* u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_26__ {int cache_feat; int raw_feat; int cmd_len; scalar_t__ status; scalar_t__ cmd_cnt; scalar_t__ cmd_offs_dpmem; int /*<<< orphan*/  scratch_phys; TYPE_10__* pccb; } ;
typedef  TYPE_9__ gdth_ha_str ;
struct TYPE_23__ {int /*<<< orphan*/ * data; } ;
struct TYPE_24__ {TYPE_6__ su; } ;
struct TYPE_22__ {scalar_t__ lun; scalar_t__ target; scalar_t__ bus; void* direction; } ;
struct TYPE_21__ {scalar_t__ lun; scalar_t__ target; scalar_t__ bus; void* direction; } ;
struct TYPE_20__ {void* BlockNo; scalar_t__ DeviceNo; } ;
struct TYPE_19__ {int BlockNo; scalar_t__ DeviceNo; } ;
struct TYPE_18__ {int /*<<< orphan*/  p_param; scalar_t__ param_size; void* channel; void* subfunc; } ;
struct TYPE_25__ {TYPE_7__ screen; TYPE_5__ raw; TYPE_4__ raw64; TYPE_3__ cache; TYPE_2__ cache64; TYPE_1__ ioctl; } ;
struct TYPE_17__ {TYPE_8__ u; int /*<<< orphan*/  BoardNode; scalar_t__ OpCode; int /*<<< orphan*/  RequestBuffer; scalar_t__ Service; } ;
typedef  TYPE_10__ gdth_cmd_str ;

/* Variables and functions */
 scalar_t__ CACHESERVICE ; 
 int GDT_64BIT ; 
 scalar_t__ GDT_IOCTL ; 
 scalar_t__ GDT_REALTIME ; 
 int INIT_RETRIES ; 
 int /*<<< orphan*/  INIT_TIMEOUT ; 
 int /*<<< orphan*/  INTERNAL_CMND ; 
 int /*<<< orphan*/  LOCALBOARD ; 
 scalar_t__ SCREENSERVICE ; 
 scalar_t__ SCSIRAWSERVICE ; 
 scalar_t__ S_BSY ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_9__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(gdth_ha_str *ha, u8 service, u16 opcode,
                                            u32 p1, u64 p2, u64 p3)
{
    register gdth_cmd_str *cmd_ptr;
    int retries,index;

    FUNC1(("gdth_internal_cmd() service %d opcode %d\n",service,opcode));

    cmd_ptr = ha->pccb;
    FUNC8((char*)cmd_ptr,0,sizeof(gdth_cmd_str));

    /* make command  */
    for (retries = INIT_RETRIES;;) {
        cmd_ptr->Service          = service;
        cmd_ptr->RequestBuffer    = INTERNAL_CMND;
        if (!(index=FUNC4(ha))) {
            FUNC0(("GDT: No free command index found\n"));
            return 0;
        }
        FUNC6(ha);
        cmd_ptr->OpCode           = opcode;
        cmd_ptr->BoardNode        = LOCALBOARD;
        if (service == CACHESERVICE) {
            if (opcode == GDT_IOCTL) {
                cmd_ptr->u.ioctl.subfunc = p1;
                cmd_ptr->u.ioctl.channel = (u32)p2;
                cmd_ptr->u.ioctl.param_size = (u16)p3;
                cmd_ptr->u.ioctl.p_param = ha->scratch_phys;
            } else {
                if (ha->cache_feat & GDT_64BIT) {
                    cmd_ptr->u.cache64.DeviceNo = (u16)p1;
                    cmd_ptr->u.cache64.BlockNo  = p2;
                } else {
                    cmd_ptr->u.cache.DeviceNo = (u16)p1;
                    cmd_ptr->u.cache.BlockNo  = (u32)p2;
                }
            }
        } else if (service == SCSIRAWSERVICE) {
            if (ha->raw_feat & GDT_64BIT) {
                cmd_ptr->u.raw64.direction  = p1;
                cmd_ptr->u.raw64.bus        = (u8)p2;
                cmd_ptr->u.raw64.target     = (u8)p3;
                cmd_ptr->u.raw64.lun        = (u8)(p3 >> 8);
            } else {
                cmd_ptr->u.raw.direction  = p1;
                cmd_ptr->u.raw.bus        = (u8)p2;
                cmd_ptr->u.raw.target     = (u8)p3;
                cmd_ptr->u.raw.lun        = (u8)(p3 >> 8);
            }
        } else if (service == SCREENSERVICE) {
            if (opcode == GDT_REALTIME) {
                *(u32 *)&cmd_ptr->u.screen.su.data[0] = p1;
                *(u32 *)&cmd_ptr->u.screen.su.data[4] = (u32)p2;
                *(u32 *)&cmd_ptr->u.screen.su.data[8] = (u32)p3;
            }
        }
        ha->cmd_len          = sizeof(gdth_cmd_str);
        ha->cmd_offs_dpmem   = 0;
        ha->cmd_cnt          = 0;
        FUNC2(ha);
        FUNC5(ha);
        FUNC3(20);
        if (!FUNC7(ha, index, INIT_TIMEOUT)) {
            FUNC9("GDT: Initialization error (timeout service %d)\n",service);
            return 0;
        }
        if (ha->status != S_BSY || --retries == 0)
            break;
        FUNC3(1);   
    }   
    
    return (ha->status != S_OK ? 0:1);
}