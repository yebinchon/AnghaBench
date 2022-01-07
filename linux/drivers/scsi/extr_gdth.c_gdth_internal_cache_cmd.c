
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef size_t u8 ;
typedef int u64 ;
struct scsi_cmnd {int* cmnd; int result; scalar_t__* sense_buffer; TYPE_1__* device; } ;
struct gdth_cmndinfo {int wait_for_completion; } ;
struct TYPE_18__ {int errorcode; int segno; int add_length; int info; int key; } ;
typedef TYPE_5__ gdth_sense_data ;
struct TYPE_19__ {int last_block_no; void* block_length; } ;
typedef TYPE_6__ gdth_rdcap_data ;
struct TYPE_20__ {void* block_length; int last_block_no; } ;
typedef TYPE_7__ gdth_rdcap16_data ;
struct TYPE_16__ {int* block_length; } ;
struct TYPE_15__ {int data_length; int dev_par; int bd_length; } ;
struct TYPE_21__ {TYPE_3__ bd; TYPE_2__ hd; } ;
typedef TYPE_8__ gdth_modep_data ;
struct TYPE_22__ {int modif_rmb; int version; int resp_aenc; int add_length; int revision; int product; int vendor; int type_qual; } ;
typedef TYPE_9__ gdth_inq_data ;
struct TYPE_13__ {char* oem_name; int cache_feat; TYPE_4__* hdr; } ;
typedef TYPE_10__ gdth_ha_str ;
struct TYPE_17__ {int devtype; int cluster_type; int size; } ;
struct TYPE_14__ {size_t id; } ;


 int CLUSTER_DRIVE ;
 int DID_ABORT ;
 int DID_OK ;
 int GDT_64BIT ;


 int NO_SENSE ;


 int SAI_READ_CAPACITY_16 ;
 int SECTOR_SIZE ;



 int TRACE (char*) ;
 int TRACE2 (char*) ;
 int TYPE_DISK ;
 int TYPE_ROM ;

 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 struct gdth_cmndinfo* gdth_cmnd_priv (struct scsi_cmnd*) ;
 int gdth_copy_internal_data (TYPE_10__*,struct scsi_cmnd*,char*,int) ;
 int memset (char*,int ,int) ;
 int snprintf (int ,int,char*,size_t) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int gdth_internal_cache_cmd(gdth_ha_str *ha, struct scsi_cmnd *scp)
{
    u8 t;
    gdth_inq_data inq;
    gdth_rdcap_data rdc;
    gdth_sense_data sd;
    gdth_modep_data mpd;
    struct gdth_cmndinfo *cmndinfo = gdth_cmnd_priv(scp);

    t = scp->device->id;
    TRACE(("gdth_internal_cache_cmd() cmd 0x%x hdrive %d\n",
           scp->cmnd[0],t));

    scp->result = DID_OK << 16;
    scp->sense_buffer[0] = 0;

    switch (scp->cmnd[0]) {
      case 129:
      case 128:
      case 130:
        TRACE2(("Test/Verify/Start hdrive %d\n",t));
        break;

      case 135:
        TRACE2(("Inquiry hdrive %d devtype %d\n",
                t,ha->hdr[t].devtype));
        inq.type_qual = (ha->hdr[t].devtype&4) ? TYPE_ROM:TYPE_DISK;


        inq.modif_rmb = 0x00;
        if ((ha->hdr[t].devtype & 1) ||
            (ha->hdr[t].cluster_type & CLUSTER_DRIVE))
            inq.modif_rmb = 0x80;
        inq.version = 2;
        inq.resp_aenc = 2;
        inq.add_length= 32;
        strcpy(inq.vendor,ha->oem_name);
        snprintf(inq.product, sizeof(inq.product), "Host Drive  #%02d",t);
        strcpy(inq.revision,"   ");
        gdth_copy_internal_data(ha, scp, (char*)&inq, sizeof(gdth_inq_data));
        break;

      case 132:
        TRACE2(("Request sense hdrive %d\n",t));
        sd.errorcode = 0x70;
        sd.segno = 0x00;
        sd.key = NO_SENSE;
        sd.info = 0;
        sd.add_length= 0;
        gdth_copy_internal_data(ha, scp, (char*)&sd, sizeof(gdth_sense_data));
        break;

      case 134:
        TRACE2(("Mode sense hdrive %d\n",t));
        memset((char*)&mpd,0,sizeof(gdth_modep_data));
        mpd.hd.data_length = sizeof(gdth_modep_data);
        mpd.hd.dev_par = (ha->hdr[t].devtype&2) ? 0x80:0;
        mpd.hd.bd_length = sizeof(mpd.bd);
        mpd.bd.block_length[0] = (SECTOR_SIZE & 0x00ff0000) >> 16;
        mpd.bd.block_length[1] = (SECTOR_SIZE & 0x0000ff00) >> 8;
        mpd.bd.block_length[2] = (SECTOR_SIZE & 0x000000ff);
        gdth_copy_internal_data(ha, scp, (char*)&mpd, sizeof(gdth_modep_data));
        break;

      case 133:
        TRACE2(("Read capacity hdrive %d\n",t));
        if (ha->hdr[t].size > (u64)0xffffffff)
            rdc.last_block_no = 0xffffffff;
        else
            rdc.last_block_no = cpu_to_be32(ha->hdr[t].size-1);
        rdc.block_length = cpu_to_be32(SECTOR_SIZE);
        gdth_copy_internal_data(ha, scp, (char*)&rdc, sizeof(gdth_rdcap_data));
        break;

      case 131:
        if ((scp->cmnd[1] & 0x1f) == SAI_READ_CAPACITY_16 &&
            (ha->cache_feat & GDT_64BIT)) {
            gdth_rdcap16_data rdc16;

            TRACE2(("Read capacity (16) hdrive %d\n",t));
            rdc16.last_block_no = cpu_to_be64(ha->hdr[t].size-1);
            rdc16.block_length = cpu_to_be32(SECTOR_SIZE);
            gdth_copy_internal_data(ha, scp, (char*)&rdc16,
                                                 sizeof(gdth_rdcap16_data));
        } else {
            scp->result = DID_ABORT << 16;
        }
        break;

      default:
        TRACE2(("Internal cache cmd 0x%x unknown\n",scp->cmnd[0]));
        break;
    }

    if (!cmndinfo->wait_for_completion)
        cmndinfo->wait_for_completion++;
    else
        return 1;

    return 0;
}
