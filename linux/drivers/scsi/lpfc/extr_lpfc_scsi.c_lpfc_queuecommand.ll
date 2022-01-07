; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_cmnd = type { i32, i32*, i8*, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i64, i32, %struct.TYPE_21__, i64, %struct.TYPE_18__, i64 }
%struct.TYPE_21__ = type { %struct.lpfc_sli4_hdw_queue* }
%struct.lpfc_sli4_hdw_queue = type { %struct.TYPE_20__, i32* }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.lpfc_nodelist = type { i64, i32, %struct.TYPE_25__, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }
%struct.lpfc_io_buf = type { i64, %struct.TYPE_19__*, %struct.TYPE_15__, %struct.lpfc_nodelist*, %struct.lpfc_rport_data*, %struct.scsi_cmnd* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.fc_rport = type { i32 }

@SCSI_PROT_NORMAL = common dso_local global i64 0, align 8
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [115 x i8] c"9058 BLKGRD: ERROR: rcvd protected cmd:%02x op:%02x str=%s without registering for BlockGuard - Rejecting command\0A\00", align 1
@dif_op_str = common dso_local global i32* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FCP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [156 x i8] c"3377 Target Queue Full, scsi Id:%d Qdepth:%d Pending command:%d WWNN:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x,  WWPN:%02x:%02x:%02x:%02x:%02x:%02x:%02x:%02x\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"0707 driver's buffer pool is empty, IO busied\0A\00", align 1
@LOG_SCSI_CMD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"9033 BLKGRD: rcvd %s cmd:x%x sector x%llx cnt %u pt %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"9038 BLKGRD: rcvd PROT_NORMAL cmd: x%x sector x%llx cnt %u pt %x\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@SLI_IOCB_RET_IOCB = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [109 x i8] c"3376 FCP could not issue IOCB err %xFCP cmd x%x <%d/%llu> sid: x%x did: x%x oxid: x%x Data: x%x x%x x%x x%x\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@ENABLE_FCP_RING_POLLING = common dso_local global i32 0, align 4
@HA_R0RE_REQ = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@LPFC_CHECK_CPU_CNT = common dso_local global i32 0, align 4
@LPFC_CHECK_SCSI_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @lpfc_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_rport_data*, align 8
  %9 = alloca %struct.lpfc_nodelist*, align 8
  %10 = alloca %struct.lpfc_io_buf*, align 8
  %11 = alloca %struct.fc_rport*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %6, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %7, align 8
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = call i32 @scsi_target(%struct.TYPE_14__* %23)
  %25 = call %struct.fc_rport* @starget_to_rport(i32 %24)
  store %struct.fc_rport* %25, %struct.fc_rport** %11, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %26, i32 0, i32 5
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(%struct.TYPE_14__* %28)
  store %struct.lpfc_rport_data* %29, %struct.lpfc_rport_data** %8, align 8
  %30 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %8, align 8
  %31 = icmp ne %struct.lpfc_rport_data* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %2
  %37 = load %struct.fc_rport*, %struct.fc_rport** %11, align 8
  %38 = icmp ne %struct.fc_rport* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %2
  br label %546

44:                                               ; preds = %36
  %45 = load %struct.fc_rport*, %struct.fc_rport** %11, align 8
  %46 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %546

53:                                               ; preds = %44
  %54 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %54, i32 0, i32 0
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %55, align 8
  store %struct.lpfc_nodelist* %56, %struct.lpfc_nodelist** %9, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %58 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %57)
  %59 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %53
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %61
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_BG, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %77)
  %79 = load i32*, i32** @dif_op_str, align 8
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %81 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %80)
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str, i64 0, i64 0), i32 %76, i64 %78, i32 %83)
  br label %546

85:                                               ; preds = %61, %53
  %86 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %87 = icmp ne %struct.lpfc_nodelist* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %90 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %88, %85
  br label %540

93:                                               ; preds = %88
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %96 = call i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba* %94, %struct.lpfc_nodelist* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %233

98:                                               ; preds = %93
  %99 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %100 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %99, i32 0, i32 4
  %101 = call i64 @atomic_read(i32* %100)
  %102 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %103 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp sge i64 %101, %104
  br i1 %105, label %106, label %232

106:                                              ; preds = %98
  %107 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load i32, i32* @LOG_FCP_ERROR, align 4
  %110 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %111 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %114 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 4
  %118 = call i64 @atomic_read(i32* %117)
  %119 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %120 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %127 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %134 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %141 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %148 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %155 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 5
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %162 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 6
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %169 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 7
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %176 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %183 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %190 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %197 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %204 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 4
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %211 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 5
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %218 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 6
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %225 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 7
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %107, i32 %108, i32 %109, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.1, i64 0, i64 0), i32 %112, i64 %115, i64 %118, i32 %125, i32 %132, i32 %139, i32 %146, i32 %153, i32 %160, i32 %167, i32 %174, i32 %181, i32 %188, i32 %195, i32 %202, i32 %209, i32 %216, i32 %223, i32 %230)
  br label %540

232:                                              ; preds = %98
  br label %233

233:                                              ; preds = %232, %93
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %235 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %236 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %237 = call %struct.lpfc_io_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba* %234, %struct.lpfc_nodelist* %235, %struct.scsi_cmnd* %236)
  store %struct.lpfc_io_buf* %237, %struct.lpfc_io_buf** %10, align 8
  %238 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %239 = icmp eq %struct.lpfc_io_buf* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %233
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %242 = call i32 @lpfc_rampdown_queue_depth(%struct.lpfc_hba* %241)
  %243 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %244 = load i32, i32* @KERN_INFO, align 4
  %245 = load i32, i32* @LOG_FCP_ERROR, align 4
  %246 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %243, i32 %244, i32 %245, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %538

247:                                              ; preds = %233
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %249 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %250 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %249, i32 0, i32 5
  store %struct.scsi_cmnd* %248, %struct.scsi_cmnd** %250, align 8
  %251 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %8, align 8
  %252 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %253 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %252, i32 0, i32 4
  store %struct.lpfc_rport_data* %251, %struct.lpfc_rport_data** %253, align 8
  %254 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %255 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %256 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %255, i32 0, i32 3
  store %struct.lpfc_nodelist* %254, %struct.lpfc_nodelist** %256, align 8
  %257 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %258 = bitcast %struct.lpfc_io_buf* %257 to i8*
  %259 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %260 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %259, i32 0, i32 2
  store i8* %258, i8** %260, align 8
  %261 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %262 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %261)
  %263 = load i64, i64* @SCSI_PROT_NORMAL, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %303

265:                                              ; preds = %247
  %266 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %267 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %266, i32 0, i32 1
  %268 = load %struct.lpfc_hba*, %struct.lpfc_hba** %267, align 8
  %269 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %268, i32 0, i32 7
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %299

272:                                              ; preds = %265
  %273 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %274 = load i32, i32* @KERN_INFO, align 4
  %275 = load i32, i32* @LOG_SCSI_CMD, align 4
  %276 = load i32*, i32** @dif_op_str, align 8
  %277 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %278 = call i64 @scsi_get_prot_op(%struct.scsi_cmnd* %277)
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %282 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %287 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %286)
  %288 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %289 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %288, i32 0, i32 4
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = call i32 @blk_rq_sectors(%struct.TYPE_16__* %290)
  %292 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %293 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = ashr i32 %296, 5
  %298 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %273, i32 %274, i32 %275, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %280, i32 %285, i64 %287, i32 %291, i32 %297)
  br label %299

299:                                              ; preds = %272, %265
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %301 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %302 = call i32 @lpfc_bg_scsi_prep_dma_buf(%struct.lpfc_hba* %300, %struct.lpfc_io_buf* %301)
  store i32 %302, i32* %12, align 4
  br label %336

303:                                              ; preds = %247
  %304 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %305 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %304, i32 0, i32 1
  %306 = load %struct.lpfc_hba*, %struct.lpfc_hba** %305, align 8
  %307 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %306, i32 0, i32 7
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %332

310:                                              ; preds = %303
  %311 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %312 = load i32, i32* @KERN_INFO, align 4
  %313 = load i32, i32* @LOG_SCSI_CMD, align 4
  %314 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %315 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %314, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 0
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %320 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %319)
  %321 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %322 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %321, i32 0, i32 4
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %322, align 8
  %324 = call i32 @blk_rq_sectors(%struct.TYPE_16__* %323)
  %325 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %326 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  %329 = load i32, i32* %328, align 4
  %330 = ashr i32 %329, 5
  %331 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %311, i32 %312, i32 %313, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %318, i64 %320, i32 %324, i32 %330)
  br label %332

332:                                              ; preds = %310, %303
  %333 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %334 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %335 = call i32 @lpfc_scsi_prep_dma_buf(%struct.lpfc_hba* %333, %struct.lpfc_io_buf* %334)
  store i32 %335, i32* %12, align 4
  br label %336

336:                                              ; preds = %332, %299
  %337 = load i32, i32* %12, align 4
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i32, i32* @DID_ERROR, align 4
  %341 = shl i32 %340, 16
  %342 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %343 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 8
  br label %542

344:                                              ; preds = %336
  %345 = load i32, i32* %12, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  br label %478

348:                                              ; preds = %344
  br label %349

349:                                              ; preds = %348
  %350 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %351 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %352 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %353 = call i32 @lpfc_scsi_prep_cmnd(%struct.lpfc_vport* %350, %struct.lpfc_io_buf* %351, %struct.lpfc_nodelist* %352)
  %354 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %355 = load i64, i64* @LPFC_FCP_RING, align 8
  %356 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %357 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %356, i32 0, i32 2
  %358 = load i32, i32* @SLI_IOCB_RET_IOCB, align 4
  %359 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %354, i64 %355, %struct.TYPE_15__* %357, i32 %358)
  store i32 %359, i32* %12, align 4
  %360 = load i32, i32* %12, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %439

362:                                              ; preds = %349
  %363 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %364 = load i32, i32* @KERN_INFO, align 4
  %365 = load i32, i32* @LOG_FCP, align 4
  %366 = load i32, i32* %12, align 4
  %367 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %368 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %373 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %372, i32 0, i32 5
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %373, align 8
  %375 = icmp ne %struct.TYPE_14__* %374, null
  br i1 %375, label %376, label %382

376:                                              ; preds = %362
  %377 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %378 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %377, i32 0, i32 5
  %379 = load %struct.TYPE_14__*, %struct.TYPE_14__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  br label %383

382:                                              ; preds = %362
  br label %383

383:                                              ; preds = %382, %376
  %384 = phi i32 [ %381, %376 ], [ 65535, %382 ]
  %385 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %386 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %385, i32 0, i32 5
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %386, align 8
  %388 = icmp ne %struct.TYPE_14__* %387, null
  br i1 %388, label %389, label %395

389:                                              ; preds = %383
  %390 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %391 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %390, i32 0, i32 5
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  br label %396

395:                                              ; preds = %383
  br label %396

396:                                              ; preds = %395, %389
  %397 = phi i32 [ %394, %389 ], [ -1, %395 ]
  %398 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %399 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %9, align 8
  %402 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %405 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %404, i32 0, i32 2
  %406 = load i64, i64* %405, align 8
  %407 = load i64, i64* @LPFC_SLI_REV4, align 8
  %408 = icmp eq i64 %406, %407
  br i1 %408, label %409, label %414

409:                                              ; preds = %396
  %410 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %411 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %410, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  br label %415

414:                                              ; preds = %396
  br label %415

415:                                              ; preds = %414, %409
  %416 = phi i32 [ %413, %409 ], [ 65535, %414 ]
  %417 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %418 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %423 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %428 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %427, i32 0, i32 2
  %429 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %433 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %432, i32 0, i32 4
  %434 = load %struct.TYPE_16__*, %struct.TYPE_16__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = sdiv i32 %436, 1000
  %438 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %363, i32 %364, i32 %365, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.5, i64 0, i64 0), i32 %366, i32 %371, i32 %384, i32 %397, i32 %400, i32 %403, i32 %416, i32 %421, i32 %426, i32 %431, i32 %437)
  br label %478

439:                                              ; preds = %349
  %440 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %441 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = load i32, i32* @ENABLE_FCP_RING_POLLING, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %466

446:                                              ; preds = %439
  %447 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %448 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %449 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %448, i32 0, i32 6
  %450 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %449, i32 0, i32 0
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* @LPFC_FCP_RING, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  %454 = load i32, i32* @HA_R0RE_REQ, align 4
  %455 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %447, i32* %453, i32 %454)
  %456 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %457 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 8
  %459 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %460 = and i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %446
  %463 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %464 = call i32 @lpfc_poll_rearm_timer(%struct.lpfc_hba* %463)
  br label %465

465:                                              ; preds = %462, %446
  br label %466

466:                                              ; preds = %465, %439
  %467 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %468 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %467, i32 0, i32 5
  %469 = load i64, i64* %468, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %466
  %472 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %473 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %474 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %473, i32 0, i32 0
  %475 = load i64, i64* %474, align 8
  %476 = call i32 @lpfc_keep_pvt_pool_above_lowwm(%struct.lpfc_hba* %472, i64 %475)
  br label %477

477:                                              ; preds = %471, %466
  store i32 0, i32* %3, align 4
  br label %552

478:                                              ; preds = %415, %347
  %479 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %480 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = trunc i64 %481 to i32
  store i32 %482, i32* %13, align 4
  %483 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %484 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %485 = call i32 @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba* %483, %struct.lpfc_io_buf* %484)
  %486 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %487 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %486, i32 0, i32 4
  %488 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %487, i32 0, i32 0
  %489 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %488, align 8
  %490 = icmp ne %struct.lpfc_sli4_hdw_queue* %489, null
  br i1 %490, label %491, label %534

491:                                              ; preds = %478
  %492 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %493 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %492, i32 0, i32 1
  %494 = load %struct.TYPE_19__*, %struct.TYPE_19__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  switch i32 %496, label %521 [
    i32 128, label %497
    i32 129, label %509
  ]

497:                                              ; preds = %491
  %498 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %499 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %498, i32 0, i32 4
  %500 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %499, i32 0, i32 0
  %501 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %500, align 8
  %502 = load i32, i32* %13, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %501, i64 %503
  %505 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 2
  %507 = load i32, i32* %506, align 8
  %508 = add nsw i32 %507, -1
  store i32 %508, i32* %506, align 8
  br label %533

509:                                              ; preds = %491
  %510 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %511 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %510, i32 0, i32 4
  %512 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %511, i32 0, i32 0
  %513 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %512, align 8
  %514 = load i32, i32* %13, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %513, i64 %515
  %517 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 1
  %519 = load i32, i32* %518, align 4
  %520 = add nsw i32 %519, -1
  store i32 %520, i32* %518, align 4
  br label %533

521:                                              ; preds = %491
  %522 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %523 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %522, i32 0, i32 4
  %524 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %523, i32 0, i32 0
  %525 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %524, align 8
  %526 = load i32, i32* %13, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %525, i64 %527
  %529 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = add nsw i32 %531, -1
  store i32 %532, i32* %530, align 8
  br label %533

533:                                              ; preds = %521, %509, %497
  br label %534

534:                                              ; preds = %533, %478
  %535 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %536 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %537 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %535, %struct.lpfc_io_buf* %536)
  br label %538

538:                                              ; preds = %534, %240
  %539 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %539, i32* %3, align 4
  br label %552

540:                                              ; preds = %106, %92
  %541 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  store i32 %541, i32* %3, align 4
  br label %552

542:                                              ; preds = %339
  %543 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %544 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %10, align 8
  %545 = call i32 @lpfc_release_scsi_buf(%struct.lpfc_hba* %543, %struct.lpfc_io_buf* %544)
  br label %546

546:                                              ; preds = %542, %68, %49, %43
  %547 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %548 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %547, i32 0, i32 3
  %549 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %548, align 8
  %550 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %551 = call i32 %549(%struct.scsi_cmnd* %550)
  store i32 0, i32* %3, align 4
  br label %552

552:                                              ; preds = %546, %540, %538, %477
  %553 = load i32, i32* %3, align 4
  ret i32 %553
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_14__*) #1

declare dso_local %struct.lpfc_rport_data* @lpfc_rport_data_from_scsi_device(%struct.TYPE_14__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i64 @lpfc_ndlp_check_qdepth(%struct.lpfc_hba*, %struct.lpfc_nodelist*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local %struct.lpfc_io_buf* @lpfc_get_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_nodelist*, %struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_rampdown_queue_depth(%struct.lpfc_hba*) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_rq_sectors(%struct.TYPE_16__*) #1

declare dso_local i32 @lpfc_bg_scsi_prep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @lpfc_scsi_prep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @lpfc_scsi_prep_cmnd(%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i64, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, i32*, i32) #1

declare dso_local i32 @lpfc_poll_rearm_timer(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_keep_pvt_pool_above_lowwm(%struct.lpfc_hba*, i64) #1

declare dso_local i32 @lpfc_scsi_unprep_dma_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @lpfc_release_scsi_buf(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
