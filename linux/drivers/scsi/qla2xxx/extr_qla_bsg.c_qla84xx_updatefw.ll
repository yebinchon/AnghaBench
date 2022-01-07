; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_updatefw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_updatefw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_15__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_16__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.verify_chip_entry_84xx = type { i32, i8*, %struct.TYPE_13__, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32 }

@ql_dbg_user = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not 84xx, exiting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"dma_map_sg returned %d for request.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [89 x i8] c"DMA mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"DMA alloc failed for fw_buf.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"DMA alloc failed for fw buffer.\0A\00", align 1
@VERIFY_CHIP_IOCB_TYPE = common dso_local global i32 0, align 4
@VCO_FORCE_UPDATE = common dso_local global i32 0, align 4
@VCO_END_OF_DATA = common dso_local global i32 0, align 4
@A84_ISSUE_UPDATE_DIAGFW_CMD = common dso_local global i64 0, align 8
@VCO_DIAG_FW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Vendor request 84xx updatefw failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Vendor request 84xx updatefw completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla84xx_updatefw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla84xx_updatefw(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.verify_chip_entry_84xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 3
  %21 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %20, align 8
  store %struct.fc_bsg_request* %21, %struct.fc_bsg_request** %4, align 8
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 2
  %24 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %23, align 8
  store %struct.fc_bsg_reply* %24, %struct.fc_bsg_reply** %5, align 8
  %25 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %26 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %25)
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %6, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %28 = call %struct.TYPE_16__* @shost_priv(%struct.Scsi_Host* %27)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %7, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %30, align 8
  store %struct.qla_hw_data* %31, %struct.qla_hw_data** %8, align 8
  store %struct.verify_chip_entry_84xx* null, %struct.verify_chip_entry_84xx** %9, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %33 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ql_dbg_user, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %38 = call i32 @ql_dbg(i32 %36, %struct.TYPE_16__* %37, i32 28722, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %250

41:                                               ; preds = %1
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %47 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %51 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @DMA_TO_DEVICE, align 4
  %55 = call i64 @dma_map_sg(i32* %45, i32 %49, i64 %53, i32 %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* @ql_log_warn, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = load i64, i64* %14, align 8
  %62 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %59, %struct.TYPE_16__* %60, i32 28723, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %250

65:                                               ; preds = %41
  %66 = load i64, i64* %14, align 8
  %67 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %68 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load i32, i32* @ql_log_warn, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %75 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %76 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %73, %struct.TYPE_16__* %74, i32 28724, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %222

83:                                               ; preds = %65
  %84 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %85 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %15, align 8
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %15, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @dma_alloc_coherent(i32* %91, i64 %92, i32* %11, i32 %93)
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %83
  %98 = load i32, i32* @ql_log_warn, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %98, %struct.TYPE_16__* %99, i32 28725, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %222

103:                                              ; preds = %83
  %104 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %109 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i64, i64* %15, align 8
  %114 = call i32 @sg_copy_to_buffer(i32 %107, i64 %111, i8* %112, i64 %113)
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call %struct.verify_chip_entry_84xx* @dma_pool_zalloc(i32 %117, i32 %118, i32* %10)
  store %struct.verify_chip_entry_84xx* %119, %struct.verify_chip_entry_84xx** %9, align 8
  %120 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %121 = icmp ne %struct.verify_chip_entry_84xx* %120, null
  br i1 %121, label %128, label %122

122:                                              ; preds = %103
  %123 = load i32, i32* @ql_log_warn, align 4
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %125 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %123, %struct.TYPE_16__* %124, i32 28726, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %13, align 4
  br label %213

128:                                              ; preds = %103
  %129 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %130 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 1
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %17, align 8
  %136 = load i8*, i8** %12, align 8
  %137 = bitcast i8* %136 to i64*
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = call i64 @get_unaligned_le32(i64* %138)
  store i64 %139, i64* %18, align 8
  %140 = load i32, i32* @VERIFY_CHIP_IOCB_TYPE, align 4
  %141 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %142 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  %143 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %144 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load i32, i32* @VCO_FORCE_UPDATE, align 4
  %146 = load i32, i32* @VCO_END_OF_DATA, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %16, align 4
  %148 = load i64, i64* %17, align 8
  %149 = load i64, i64* @A84_ISSUE_UPDATE_DIAGFW_CMD, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %128
  %152 = load i32, i32* @VCO_DIAG_FW, align 4
  %153 = load i32, i32* %16, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %16, align 4
  br label %155

155:                                              ; preds = %151, %128
  %156 = load i32, i32* %16, align 4
  %157 = call i8* @cpu_to_le16(i32 %156)
  %158 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %159 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %158, i32 0, i32 6
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* %18, align 8
  %161 = call i8* @cpu_to_le32(i64 %160)
  %162 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %163 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %162, i32 0, i32 5
  store i8* %161, i8** %163, align 8
  %164 = load i64, i64* %15, align 8
  %165 = call i8* @cpu_to_le32(i64 %164)
  %166 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %167 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i8* @cpu_to_le32(i64 %168)
  %170 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %171 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %174 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 1
  %176 = call i32 @put_unaligned_le64(i32 %172, i32* %175)
  %177 = load i64, i64* %15, align 8
  %178 = call i8* @cpu_to_le32(i64 %177)
  %179 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %180 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  store i8* %178, i8** %181, align 8
  %182 = call i8* @cpu_to_le16(i32 1)
  %183 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %184 = getelementptr inbounds %struct.verify_chip_entry_84xx, %struct.verify_chip_entry_84xx* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %186 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @qla2x00_issue_iocb_timeout(%struct.TYPE_16__* %185, %struct.verify_chip_entry_84xx* %186, i32 %187, i32 0, i32 120)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %155
  %192 = load i32, i32* @ql_log_warn, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %194 = call i32 (i32, %struct.TYPE_16__*, i32, i8*, ...) @ql_log(i32 %192, %struct.TYPE_16__* %193, i32 28727, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %195 = load i32, i32* @DID_ERROR, align 4
  %196 = shl i32 %195, 16
  store i32 %196, i32* %13, align 4
  br label %206

197:                                              ; preds = %155
  %198 = load i32, i32* @ql_dbg_user, align 4
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = call i32 @ql_dbg(i32 %198, %struct.TYPE_16__* %199, i32 28728, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %201 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %202 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %201, i32 0, i32 0
  store i32 8, i32* %202, align 8
  %203 = load i32, i32* @DID_OK, align 4
  %204 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %205 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %197, %191
  %207 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %208 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.verify_chip_entry_84xx*, %struct.verify_chip_entry_84xx** %9, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i32 @dma_pool_free(i32 %209, %struct.verify_chip_entry_84xx* %210, i32 %211)
  br label %213

213:                                              ; preds = %206, %122
  %214 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %215 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %214, i32 0, i32 0
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load i64, i64* %15, align 8
  %219 = load i8*, i8** %12, align 8
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @dma_free_coherent(i32* %217, i64 %218, i8* %219, i32 %220)
  br label %222

222:                                              ; preds = %213, %97, %72
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 0
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %228 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %232 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* @DMA_TO_DEVICE, align 4
  %236 = call i32 @dma_unmap_sg(i32* %226, i32 %230, i64 %234, i32 %235)
  %237 = load i32, i32* %13, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %248, label %239

239:                                              ; preds = %222
  %240 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %241 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %242 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %245 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @bsg_job_done(%struct.bsg_job* %240, i32 %243, i32 %246)
  br label %248

248:                                              ; preds = %239, %222
  %249 = load i32, i32* %13, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %248, %58, %35
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_16__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_16__*, i32, i8*) #1

declare dso_local i64 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_16__*, i32, i8*, ...) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i64, i8*, i64) #1

declare dso_local %struct.verify_chip_entry_84xx* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @get_unaligned_le32(i64*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @qla2x00_issue_iocb_timeout(%struct.TYPE_16__*, %struct.verify_chip_entry_84xx*, i32, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.verify_chip_entry_84xx*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
