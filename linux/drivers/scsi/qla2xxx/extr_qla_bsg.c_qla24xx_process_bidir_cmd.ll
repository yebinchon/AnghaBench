; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_process_bidir_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_process_bidir_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_25__, %struct.TYPE_26__, %struct.fc_bsg_reply* }
%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.fc_bsg_reply = type { i32, i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_28__ = type { i32, i64, i64, %struct.TYPE_29__, %struct.TYPE_36__, %struct.TYPE_33__, i32, %struct.qla_hw_data* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_37__, %struct.TYPE_28__* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.qla_hw_data = type { i64, i64, %struct.TYPE_38__*, i32, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.bsg_job* }

@EXT_STATUS_OK = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"This adapter is not supported\0A\00", align 1
@EXT_STATUS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@ISP_ABORT_RETRY = common dso_local global i32 0, align 4
@EXT_STATUS_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Host is not online\0A\00", align 1
@EXT_STATUS_DEVICE_OFFLINE = common dso_local global i64 0, align 8
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Cable is unplugged...\0A\00", align 1
@EXT_STATUS_INVALID_CFG = common dso_local global i64 0, align 8
@ISP_CFG_F = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Host is not connected to the switch\0A\00", align 1
@P2P = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Host operating mode is not P2p\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Failed to login port %06X for bidirectional IOCB\0A\00", align 1
@EXT_STATUS_MAILBOX = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EXT_STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [127 x i8] c"Dma mapping resulted in different sg counts [request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt: %x dma_reply_sg_cnt: %x]\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"req_data_len != rsp_data_len\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Alloc SRB structure failed\0A\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@SRB_BIDI_CMD = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla24xx_process_bidir_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_process_bidir_cmd(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 3
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  store %struct.fc_bsg_reply* %18, %struct.fc_bsg_reply** %4, align 8
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %19)
  store %struct.Scsi_Host* %20, %struct.Scsi_Host** %5, align 8
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %22 = call %struct.TYPE_28__* @shost_priv(%struct.Scsi_Host* %21)
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %6, align 8
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 7
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %24, align 8
  store %struct.qla_hw_data* %25, %struct.qla_hw_data** %7, align 8
  %26 = load i64, i64* @EXT_STATUS_OK, align 8
  store i64 %26, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %28 = call i32 @IS_BIDI_CAPABLE(%struct.qla_hw_data* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ql_log_warn, align 4
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %33 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %31, %struct.TYPE_28__* %32, i32 28832, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %34 = load i64, i64* @EXT_STATUS_NOT_SUPPORTED, align 8
  store i64 %34, i64* %8, align 8
  br label %342

35:                                               ; preds = %1
  %36 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 6
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 6
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ISP_ABORT_RETRY, align 4
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 6
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %41, %35
  %54 = load i64, i64* @EXT_STATUS_BUSY, align 8
  store i64 %54, i64* %8, align 8
  br label %342

55:                                               ; preds = %47
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ql_log_warn, align 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %64 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %62, %struct.TYPE_28__* %63, i32 28833, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i64, i64* @EXT_STATUS_DEVICE_OFFLINE, align 8
  store i64 %65, i64* %8, align 8
  br label %342

66:                                               ; preds = %55
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DFLG_NO_CABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @ql_log_warn, align 4
  %75 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %76 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %74, %struct.TYPE_28__* %75, i32 28834, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i64, i64* @EXT_STATUS_INVALID_CFG, align 8
  store i64 %77, i64* %8, align 8
  br label %342

78:                                               ; preds = %66
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ISP_CFG_F, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i32, i32* @ql_log_warn, align 4
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %87 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %85, %struct.TYPE_28__* %86, i32 28835, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i64, i64* @EXT_STATUS_INVALID_CFG, align 8
  store i64 %88, i64* %8, align 8
  br label %342

89:                                               ; preds = %78
  %90 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %91 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @P2P, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i32, i32* @ql_log_warn, align 4
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %98 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %96, %struct.TYPE_28__* %97, i32 28836, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %99 = load i64, i64* @EXT_STATUS_INVALID_CFG, align 8
  store i64 %99, i64* %8, align 8
  br label %342

100:                                              ; preds = %89
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 4
  %103 = call i32 @mutex_lock(i32* %102)
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %172

108:                                              ; preds = %100
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 2
  store %struct.TYPE_28__* %109, %struct.TYPE_28__** %112, align 8
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 2
  store i32 %117, i32* %122, align 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %131, i32 0, i32 1
  store i32 %127, i32* %132, align 4
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 0
  store i64 %145, i64* %148, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 3
  %152 = call i64 @qla2x00_fabric_login(%struct.TYPE_28__* %149, %struct.TYPE_29__* %151, i64* %11)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %108
  %155 = load i32, i32* @ql_log_warn, align 4
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %155, %struct.TYPE_28__* %156, i32 28839, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %161)
  %163 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %164 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %163, i32 0, i32 4
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load i64, i64* @EXT_STATUS_MAILBOX, align 8
  store i64 %166, i64* %8, align 8
  br label %342

167:                                              ; preds = %108
  %168 = load i64, i64* %11, align 8
  %169 = sub nsw i64 %168, 1
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %167, %100
  %173 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %174 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %173, i32 0, i32 4
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  store i64 %178, i64* %181, align 8
  %182 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %183 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %182, i32 0, i32 2
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 0
  %186 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %187 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %191 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @DMA_TO_DEVICE, align 4
  %195 = call i64 @dma_map_sg(i32* %185, i32 %189, i64 %193, i32 %194)
  store i64 %195, i64* %9, align 8
  %196 = load i64, i64* %9, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %172
  %199 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %199, i64* %8, align 8
  br label %342

200:                                              ; preds = %172
  %201 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %202 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %201, i32 0, i32 2
  %203 = load %struct.TYPE_38__*, %struct.TYPE_38__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %203, i32 0, i32 0
  %205 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %206 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %210 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %214 = call i64 @dma_map_sg(i32* %204, i32 %208, i64 %212, i32 %213)
  store i64 %214, i64* %10, align 8
  %215 = load i64, i64* %10, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %200
  %218 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %218, i64* %8, align 8
  br label %327

219:                                              ; preds = %200
  %220 = load i64, i64* %9, align 8
  %221 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %222 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %220, %224
  br i1 %225, label %233, label %226

226:                                              ; preds = %219
  %227 = load i64, i64* %10, align 8
  %228 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %229 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %227, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %226, %219
  %234 = load i32, i32* @ql_dbg_user, align 4
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %236 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %237 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* %9, align 8
  %241 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %242 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i32 %234, %struct.TYPE_28__* %235, i32 28841, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0), i64 %239, i64 %240, i64 %244, i64 %245)
  %247 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %247, i64* %8, align 8
  br label %312

248:                                              ; preds = %226
  %249 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %250 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  store i64 %252, i64* %14, align 8
  %253 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %254 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %15, align 8
  %257 = load i64, i64* %14, align 8
  %258 = load i64, i64* %15, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %248
  %261 = load i64, i64* @EXT_STATUS_BUSY, align 8
  store i64 %261, i64* %8, align 8
  %262 = load i32, i32* @ql_log_warn, align 4
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %264 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_log(i32 %262, %struct.TYPE_28__* %263, i32 28842, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %312

265:                                              ; preds = %248
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %267 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %267, i32 0, i32 3
  %269 = load i32, i32* @GFP_KERNEL, align 4
  %270 = call %struct.TYPE_27__* @qla2x00_get_sp(%struct.TYPE_28__* %266, %struct.TYPE_29__* %268, i32 %269)
  store %struct.TYPE_27__* %270, %struct.TYPE_27__** %13, align 8
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %272 = icmp ne %struct.TYPE_27__* %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %265
  %274 = load i32, i32* @ql_dbg_user, align 4
  %275 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %276 = call i32 (i32, %struct.TYPE_28__*, i32, i8*, ...) @ql_dbg(i32 %274, %struct.TYPE_28__* %275, i32 28844, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %277 = load i64, i64* @EXT_STATUS_NO_MEMORY, align 8
  store i64 %277, i64* %8, align 8
  br label %312

278:                                              ; preds = %265
  %279 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %281, i32 0, i32 0
  store %struct.bsg_job* %279, %struct.bsg_job** %282, align 8
  %283 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 8
  %286 = load i32, i32* @SRB_BIDI_CMD, align 4
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %290 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 8
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* %9, align 8
  %294 = add nsw i64 %292, %293
  store i64 %294, i64* %12, align 8
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %297 = load i64, i64* %12, align 8
  %298 = call i64 @qla2x00_start_bidir(%struct.TYPE_27__* %295, %struct.TYPE_28__* %296, i64 %297)
  store i64 %298, i64* %8, align 8
  %299 = load i64, i64* %8, align 8
  %300 = load i64, i64* @EXT_STATUS_OK, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %278
  br label %306

303:                                              ; preds = %278
  %304 = load i64, i64* %8, align 8
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %2, align 4
  br label %366

306:                                              ; preds = %302
  %307 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %308 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %309 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %308, i32 0, i32 3
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @mempool_free(%struct.TYPE_27__* %307, i32 %310)
  br label %312

312:                                              ; preds = %306, %273, %260, %233
  %313 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %314 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %313, i32 0, i32 2
  %315 = load %struct.TYPE_38__*, %struct.TYPE_38__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %315, i32 0, i32 0
  %317 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %318 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %322 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %326 = call i32 @dma_unmap_sg(i32* %316, i32 %320, i64 %324, i32 %325)
  br label %327

327:                                              ; preds = %312, %217
  %328 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %329 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %328, i32 0, i32 2
  %330 = load %struct.TYPE_38__*, %struct.TYPE_38__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %330, i32 0, i32 0
  %332 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %333 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %337 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i32, i32* @DMA_TO_DEVICE, align 4
  %341 = call i32 @dma_unmap_sg(i32* %331, i32 %335, i64 %339, i32 %340)
  br label %342

342:                                              ; preds = %327, %198, %154, %95, %84, %73, %61, %53, %30
  %343 = load i64, i64* %8, align 8
  %344 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %345 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 0
  %348 = load i64*, i64** %347, align 8
  %349 = getelementptr inbounds i64, i64* %348, i64 0
  store i64 %343, i64* %349, align 8
  %350 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %351 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %350, i32 0, i32 0
  store i32 24, i32* %351, align 8
  %352 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %353 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %352, i32 0, i32 1
  store i64 0, i64* %353, align 8
  %354 = load i32, i32* @DID_OK, align 4
  %355 = shl i32 %354, 16
  %356 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %357 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %356, i32 0, i32 0
  store i32 %355, i32* %357, align 8
  %358 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %359 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %360 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %363 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = call i32 @bsg_job_done(%struct.bsg_job* %358, i32 %361, i64 %364)
  store i32 0, i32* %2, align 4
  br label %366

366:                                              ; preds = %342, %303
  %367 = load i32, i32* %2, align 4
  ret i32 %367
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_28__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_BIDI_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @qla2x00_fabric_login(%struct.TYPE_28__*, %struct.TYPE_29__*, i64*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_27__* @qla2x00_get_sp(%struct.TYPE_28__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @qla2x00_start_bidir(%struct.TYPE_27__*, %struct.TYPE_28__*, i64) #1

declare dso_local i32 @mempool_free(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
