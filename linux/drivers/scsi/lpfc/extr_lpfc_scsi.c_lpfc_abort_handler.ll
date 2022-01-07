; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_abort_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_abort_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i32, i32, %struct.TYPE_9__, %struct.TYPE_13__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { i64, i32 }
%struct.lpfc_iocbq = type { i64, i32, i32, %struct.lpfc_vport*, i32, %struct.TYPE_16__, %struct.lpfc_io_buf* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.lpfc_io_buf = type { i32, i32*, %struct.scsi_cmnd*, %struct.lpfc_iocbq }

@SUCCESS = common dso_local global i32 0, align 4
@waitq = common dso_local global i32 0, align 4
@HBA_IOQ_FLUSH = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"3168 SCSI Layer abort requested I/O has been flushed by LLD.\0A\00", align 1
@FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"2873 SCSI Layer I/O Abort Request IO CMPL Status x%x ID %d LUN %llu\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_ON_TXCMPLQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"3169 SCSI Layer abort requested I/O has been cancelled by LLD.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"3170 SCSI Layer abort requested I/O has been completed by LLD.\0A\00", align 1
@LPFC_DRIVER_ABORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"3389 SCSI Layer I/O Abort Request is pending\0A\00", align 1
@ABORT_TYPE_ABTS = common dso_local global i32 0, align 4
@LPFC_USE_FCPWQIDX = common dso_local global i32 0, align 4
@LPFC_IO_FOF = common dso_local global i32 0, align 4
@CMD_ABORT_XRI_CN = common dso_local global i32 0, align 4
@CMD_CLOSE_XRI_CN = common dso_local global i32 0, align 4
@lpfc_sli_abort_fcp_cmpl = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@IOCB_ERROR = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@HA_R0RE_REQ = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [103 x i8] c"0748 abort handler timed out waiting for aborting I/O (xri:x%x) to complete: ret %#x, ID %d, LUN %llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"0749 SCSI Layer I/O Abort Request Status x%x ID %d LUN %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @lpfc_abort_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_abort_handler(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_iocbq*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.lpfc_io_buf*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.lpfc_sli_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.Scsi_Host*, %struct.Scsi_Host** %20, align 8
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %4, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %25, %struct.lpfc_vport** %5, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %26, i32 0, i32 1
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %27, align 8
  store %struct.lpfc_hba* %28, %struct.lpfc_hba** %6, align 8
  %29 = load i32, i32* @SUCCESS, align 4
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.lpfc_sli_ring* null, %struct.lpfc_sli_ring** %14, align 8
  %30 = load i32, i32* @waitq, align 4
  %31 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %33 = call i32 @fc_block_scsi_eh(%struct.scsi_cmnd* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %2, align 4
  br label %433

42:                                               ; preds = %36, %1
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.lpfc_io_buf*
  store %struct.lpfc_io_buf* %46, %struct.lpfc_io_buf** %9, align 8
  %47 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %48 = icmp ne %struct.lpfc_io_buf* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %2, align 4
  br label %433

51:                                               ; preds = %42
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 3
  %54 = load i64, i64* %16, align 8
  %55 = call i32 @spin_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %57 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @HBA_IOQ_FLUSH, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %64 = load i32, i32* @KERN_WARNING, align 4
  %65 = load i32, i32* @LOG_FCP, align 4
  %66 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %63, i32 %64, i32 %65, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @FAILED, align 4
  store i32 %67, i32* %12, align 4
  br label %411

68:                                               ; preds = %51
  %69 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %70 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %73 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %72, i32 0, i32 2
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %73, align 8
  %75 = icmp ne %struct.scsi_cmnd* %74, null
  br i1 %75, label %92, label %76

76:                                               ; preds = %68
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %78 = load i32, i32* @KERN_WARNING, align 4
  %79 = load i32, i32* @LOG_FCP, align 4
  %80 = load i32, i32* @SUCCESS, align 4
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %85, i32 %90)
  br label %407

92:                                               ; preds = %68
  %93 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %94 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %93, i32 0, i32 3
  store %struct.lpfc_iocbq* %94, %struct.lpfc_iocbq** %7, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LPFC_SLI_REV4, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %92
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %106 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %111, align 8
  store %struct.lpfc_sli_ring* %112, %struct.lpfc_sli_ring** %14, align 8
  %113 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %114 = icmp ne %struct.lpfc_sli_ring* %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %100
  %116 = load i32, i32* @FAILED, align 4
  store i32 %116, i32* %12, align 4
  br label %407

117:                                              ; preds = %100
  %118 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %119 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %118, i32 0, i32 1
  %120 = call i32 @spin_lock(i32* %119)
  br label %121

121:                                              ; preds = %117, %92
  %122 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %123 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @LPFC_IO_ON_TXCMPLQ, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %121
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %130 = load i32, i32* @KERN_WARNING, align 4
  %131 = load i32, i32* @LOG_FCP, align 4
  %132 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %129, i32 %130, i32 %131, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @FAILED, align 4
  store i32 %133, i32* %12, align 4
  br label %396

134:                                              ; preds = %121
  %135 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %136 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %135, i32 0, i32 2
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %136, align 8
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %139 = icmp ne %struct.scsi_cmnd* %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %142 = load i32, i32* @KERN_WARNING, align 4
  %143 = load i32, i32* @LOG_FCP, align 4
  %144 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %141, i32 %142, i32 %143, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  br label %396

145:                                              ; preds = %134
  %146 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %147 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %146, i32 0, i32 6
  %148 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %147, align 8
  %149 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %150 = icmp ne %struct.lpfc_io_buf* %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %154 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %145
  %160 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %161 = load i32, i32* @KERN_WARNING, align 4
  %162 = load i32, i32* @LOG_FCP, align 4
  %163 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %165 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @LPFC_SLI_REV4, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %159
  %170 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %171 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %170, i32 0, i32 1
  %172 = call i32 @spin_unlock(i32* %171)
  br label %173

173:                                              ; preds = %169, %159
  %174 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %175 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %174, i32 0, i32 0
  %176 = call i32 @spin_unlock(i32* %175)
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %178 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %177, i32 0, i32 3
  %179 = load i64, i64* %16, align 8
  %180 = call i32 @spin_unlock_irqrestore(i32* %178, i64 %179)
  br label %347

181:                                              ; preds = %145
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %183 = call %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba* %182)
  store %struct.lpfc_iocbq* %183, %struct.lpfc_iocbq** %8, align 8
  %184 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %185 = icmp eq %struct.lpfc_iocbq* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* @FAILED, align 4
  store i32 %187, i32* %12, align 4
  br label %396

188:                                              ; preds = %181
  %189 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %190 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %191 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %195 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %194, i32 0, i32 5
  store %struct.TYPE_16__* %195, %struct.TYPE_16__** %10, align 8
  %196 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %197 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %196, i32 0, i32 5
  store %struct.TYPE_16__* %197, %struct.TYPE_16__** %11, align 8
  %198 = load i32, i32* @ABORT_TYPE_ABTS, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 2
  store i32 %198, i32* %202, align 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 4
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  store i32 %205, i32* %209, align 4
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @LPFC_SLI_REV4, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %223

215:                                              ; preds = %188
  %216 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %217 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 0
  store i32 %218, i32* %222, align 4
  br label %231

223:                                              ; preds = %188
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  store i32 %226, i32* %230, align 4
  br label %231

231:                                              ; preds = %223, %215
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 0
  store i32 1, i32* %233, align 4
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  %239 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %240 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %243 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %242, i32 0, i32 0
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* @LPFC_USE_FCPWQIDX, align 4
  %245 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %246 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %250 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @LPFC_IO_FOF, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %231
  %256 = load i32, i32* @LPFC_IO_FOF, align 4
  %257 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %258 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 8
  br label %261

261:                                              ; preds = %255, %231
  %262 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %263 = call i64 @lpfc_is_link_up(%struct.lpfc_hba* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = load i32, i32* @CMD_ABORT_XRI_CN, align 4
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  br label %273

269:                                              ; preds = %261
  %270 = load i32, i32* @CMD_CLOSE_XRI_CN, align 4
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  br label %273

273:                                              ; preds = %269, %265
  %274 = load i32, i32* @lpfc_sli_abort_fcp_cmpl, align 4
  %275 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %276 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 8
  %277 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %278 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %279 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %278, i32 0, i32 3
  store %struct.lpfc_vport* %277, %struct.lpfc_vport** %279, align 8
  %280 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %281 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %280, i32 0, i32 1
  store i32* @waitq, i32** %281, align 8
  %282 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %283 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @LPFC_SLI_REV4, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %297

287:                                              ; preds = %273
  %288 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %289 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %290 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %293 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %288, i64 %291, %struct.lpfc_iocbq* %292, i32 0)
  store i32 %293, i32* %15, align 4
  %294 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %295 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %294, i32 0, i32 1
  %296 = call i32 @spin_unlock(i32* %295)
  br label %302

297:                                              ; preds = %273
  %298 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %299 = load i64, i64* @LPFC_FCP_RING, align 8
  %300 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %301 = call i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba* %298, i64 %299, %struct.lpfc_iocbq* %300, i32 0)
  store i32 %301, i32* %15, align 4
  br label %302

302:                                              ; preds = %297, %287
  %303 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %304 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %303, i32 0, i32 3
  %305 = load i64, i64* %16, align 8
  %306 = call i32 @spin_unlock_irqrestore(i32* %304, i64 %305)
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* @IOCB_ERROR, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %326

310:                                              ; preds = %302
  %311 = load i32, i32* @LPFC_DRIVER_ABORTED, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %314 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %318 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %317, i32 0, i32 1
  store i32* null, i32** %318, align 8
  %319 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %320 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %319, i32 0, i32 0
  %321 = call i32 @spin_unlock(i32* %320)
  %322 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %323 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %324 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %322, %struct.lpfc_iocbq* %323)
  %325 = load i32, i32* @FAILED, align 4
  store i32 %325, i32* %12, align 4
  br label %416

326:                                              ; preds = %302
  %327 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %328 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %327, i32 0, i32 0
  %329 = call i32 @spin_unlock(i32* %328)
  %330 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %331 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %346

336:                                              ; preds = %326
  %337 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %338 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %339 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = load i64, i64* @LPFC_FCP_RING, align 8
  %343 = getelementptr inbounds i32, i32* %341, i64 %342
  %344 = load i32, i32* @HA_R0RE_REQ, align 4
  %345 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %337, i32* %343, i32 %344)
  br label %346

346:                                              ; preds = %336, %326
  br label %347

347:                                              ; preds = %346, %173
  %348 = load i32, i32* @waitq, align 4
  %349 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %350 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %349, i32 0, i32 2
  %351 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %350, align 8
  %352 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %353 = icmp ne %struct.scsi_cmnd* %351, %352
  %354 = zext i1 %353 to i32
  %355 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %356 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = mul nsw i32 2, %357
  %359 = mul nsw i32 %358, 1000
  %360 = call i32 @msecs_to_jiffies(i32 %359)
  %361 = call i32 @wait_event_timeout(i32 %348, i32 %354, i32 %360)
  %362 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %363 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %362, i32 0, i32 0
  %364 = call i32 @spin_lock(i32* %363)
  %365 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %366 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %365, i32 0, i32 2
  %367 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %366, align 8
  %368 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %369 = icmp eq %struct.scsi_cmnd* %367, %368
  br i1 %369, label %370, label %390

370:                                              ; preds = %347
  %371 = load i32, i32* @FAILED, align 4
  store i32 %371, i32* %12, align 4
  %372 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %373 = load i32, i32* @KERN_ERR, align 4
  %374 = load i32, i32* @LOG_FCP, align 4
  %375 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %7, align 8
  %376 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %12, align 4
  %379 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %380 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %379, i32 0, i32 0
  %381 = load %struct.TYPE_10__*, %struct.TYPE_10__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %385 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %384, i32 0, i32 0
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %372, i32 %373, i32 %374, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 %377, i32 %378, i32 %383, i32 %388)
  br label %390

390:                                              ; preds = %370, %347
  %391 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %392 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %391, i32 0, i32 1
  store i32* null, i32** %392, align 8
  %393 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %394 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %393, i32 0, i32 0
  %395 = call i32 @spin_unlock(i32* %394)
  br label %416

396:                                              ; preds = %186, %140, %128
  %397 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %398 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @LPFC_SLI_REV4, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %396
  %403 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %14, align 8
  %404 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %403, i32 0, i32 1
  %405 = call i32 @spin_unlock(i32* %404)
  br label %406

406:                                              ; preds = %402, %396
  br label %407

407:                                              ; preds = %406, %115, %76
  %408 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %9, align 8
  %409 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %408, i32 0, i32 0
  %410 = call i32 @spin_unlock(i32* %409)
  br label %411

411:                                              ; preds = %407, %62
  %412 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %413 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %412, i32 0, i32 3
  %414 = load i64, i64* %16, align 8
  %415 = call i32 @spin_unlock_irqrestore(i32* %413, i64 %414)
  br label %416

416:                                              ; preds = %411, %390, %310
  %417 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %418 = load i32, i32* @KERN_WARNING, align 4
  %419 = load i32, i32* @LOG_FCP, align 4
  %420 = load i32, i32* %12, align 4
  %421 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %422 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %421, i32 0, i32 0
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %427 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %426, i32 0, i32 0
  %428 = load %struct.TYPE_10__*, %struct.TYPE_10__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %417, i32 %418, i32 %419, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i32 %420, i32 %425, i32 %430)
  %432 = load i32, i32* %12, align 4
  store i32 %432, i32* %2, align 4
  br label %433

433:                                              ; preds = %416, %49, %40
  %434 = load i32, i32* %2, align 4
  ret i32 %434
}

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local i32 @fc_block_scsi_eh(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.lpfc_iocbq* @__lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_is_link_up(%struct.lpfc_hba*) #1

declare dso_local i32 @__lpfc_sli_issue_iocb(%struct.lpfc_hba*, i64, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, i32*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
