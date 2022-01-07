; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla84xx_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, %struct.TYPE_20__, %struct.TYPE_16__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i32 }
%struct.fc_bsg_reply = type { i64, i32 }
%struct.fc_bsg_request = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_17__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 }
%struct.access_chip_84xx = type { i32, %struct.TYPE_19__, i8*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.qla_bsg_a84_mgmt = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_18__, %struct.TYPE_21__, %struct.TYPE_22__ }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32 }

@DMA_NONE = common dso_local global i64 0, align 8
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Not 84xx, exiting.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"DMA alloc failed for fw buffer.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ACCESS_CHIP_IOCB_TYPE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"dma_map_sg returned %d for reply.\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"DMA mapping resulted in different sg counts, reply_sg_cnt: %x dma_reply_sg_cnt: %x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"DMA alloc failed for mgmt_b.\0A\00", align 1
@ACO_DUMP_MEMORY = common dso_local global i32 0, align 4
@ACO_REQUEST_INFO = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"dma_map_sg returned %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [89 x i8] c"DMA mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt: %x.\0A\00", align 1
@ACO_LOAD_MEMORY = common dso_local global i32 0, align 4
@ACO_CHANGE_CONFIG_PARAM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Vendor request 84xx mgmt failed.\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Vendor request 84xx mgmt completed.\0A\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla84xx_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla84xx_mgmt_cmd(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca %struct.access_chip_84xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.qla_bsg_a84_mgmt*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %19 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %18, i32 0, i32 4
  %20 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %19, align 8
  store %struct.fc_bsg_request* %20, %struct.fc_bsg_request** %4, align 8
  %21 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 3
  %23 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %22, align 8
  store %struct.fc_bsg_reply* %23, %struct.fc_bsg_reply** %5, align 8
  %24 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %25 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %24)
  store %struct.Scsi_Host* %25, %struct.Scsi_Host** %6, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %27 = call %struct.TYPE_17__* @shost_priv(%struct.Scsi_Host* %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %7, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %29, align 8
  store %struct.qla_hw_data* %30, %struct.qla_hw_data** %8, align 8
  store %struct.access_chip_84xx* null, %struct.access_chip_84xx** %9, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %31 = load i64, i64* @DMA_NONE, align 8
  store i64 %31, i64* %17, align 8
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %33 = call i32 @IS_QLA84XX(%struct.qla_hw_data* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %1
  %36 = load i32, i32* @ql_log_warn, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %38 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %36, %struct.TYPE_17__* %37, i32 28730, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %468

41:                                               ; preds = %1
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.access_chip_84xx* @dma_pool_zalloc(i32 %44, i32 %45, i32* %10)
  store %struct.access_chip_84xx* %46, %struct.access_chip_84xx** %9, align 8
  %47 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %48 = icmp ne %struct.access_chip_84xx* %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @ql_log_warn, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %50, %struct.TYPE_17__* %51, i32 28732, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %468

55:                                               ; preds = %41
  %56 = load i32, i32* @ACCESS_CHIP_IOCB_TYPE, align 4
  %57 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %58 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %57, i32 0, i32 8
  store i32 %56, i32* %58, align 8
  %59 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %60 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %62 = bitcast %struct.fc_bsg_request* %61 to i8*
  %63 = getelementptr i8, i8* %62, i64 4
  %64 = bitcast i8* %63 to %struct.qla_bsg_a84_mgmt*
  store %struct.qla_bsg_a84_mgmt* %64, %struct.qla_bsg_a84_mgmt** %14, align 8
  %65 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %66 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %310 [
    i32 129, label %69
    i32 130, label %69
    i32 128, label %186
    i32 131, label %275
  ]

69:                                               ; preds = %55, %55
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  %74 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %75 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %79 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %83 = call i64 @dma_map_sg(i32* %73, i32 %77, i64 %81, i64 %82)
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %69
  %87 = load i32, i32* @ql_log_warn, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %87, %struct.TYPE_17__* %88, i32 28733, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %13, align 4
  br label %448

93:                                               ; preds = %69
  %94 = load i64, i64* @DMA_FROM_DEVICE, align 8
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %97 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %95, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %93
  %102 = load i32, i32* @ql_log_warn, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %104 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %102, %struct.TYPE_17__* %103, i32 28734, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i64 %107, i64 %108)
  %110 = load i32, i32* @EAGAIN, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %13, align 4
  br label %396

112:                                              ; preds = %93
  %113 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %114 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %16, align 8
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %118 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %117, i32 0, i32 1
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i64, i64* %16, align 8
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i8* @dma_alloc_coherent(i32* %120, i64 %121, i32* %11, i32 %122)
  store i8* %123, i8** %12, align 8
  %124 = load i8*, i8** %12, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %112
  %127 = load i32, i32* @ql_log_warn, align 4
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %129 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %127, %struct.TYPE_17__* %128, i32 28735, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %13, align 4
  br label %396

132:                                              ; preds = %112
  %133 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %134 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 129
  br i1 %137, label %138, label %153

138:                                              ; preds = %132
  %139 = load i32, i32* @ACO_DUMP_MEMORY, align 4
  %140 = call i8* @cpu_to_le16(i32 %139)
  %141 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %142 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %144 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %152 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  br label %185

153:                                              ; preds = %132
  %154 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %155 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 130
  br i1 %158, label %159, label %184

159:                                              ; preds = %153
  %160 = load i32, i32* @ACO_REQUEST_INFO, align 4
  %161 = call i8* @cpu_to_le16(i32 %160)
  %162 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %163 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %162, i32 0, i32 7
  store i8* %161, i8** %163, align 8
  %164 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %165 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @cpu_to_le32(i32 %170)
  %172 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %173 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %172, i32 0, i32 6
  store i8* %171, i8** %173, align 8
  %174 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %175 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @cpu_to_le32(i32 %180)
  %182 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %183 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %182, i32 0, i32 5
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %159, %153
  br label %185

185:                                              ; preds = %184, %138
  br label %313

186:                                              ; preds = %55
  %187 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %188 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %187, i32 0, i32 1
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %192 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %196 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @DMA_TO_DEVICE, align 8
  %200 = call i64 @dma_map_sg(i32* %190, i32 %194, i64 %198, i64 %199)
  store i64 %200, i64* %15, align 8
  %201 = load i64, i64* %15, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %186
  %204 = load i32, i32* @ql_log_warn, align 4
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %206 = load i64, i64* %15, align 8
  %207 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %204, %struct.TYPE_17__* %205, i32 28736, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %206)
  %208 = load i32, i32* @ENOMEM, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %13, align 4
  br label %448

210:                                              ; preds = %186
  %211 = load i64, i64* @DMA_TO_DEVICE, align 8
  store i64 %211, i64* %17, align 8
  %212 = load i64, i64* %15, align 8
  %213 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %214 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %212, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %210
  %219 = load i32, i32* @ql_log_warn, align 4
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %221 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %222 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %15, align 8
  %226 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %219, %struct.TYPE_17__* %220, i32 28737, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.6, i64 0, i64 0), i64 %224, i64 %225)
  %227 = load i32, i32* @EAGAIN, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %13, align 4
  br label %396

229:                                              ; preds = %210
  %230 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %231 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %16, align 8
  %234 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %235 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %234, i32 0, i32 1
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = load i64, i64* %16, align 8
  %239 = load i32, i32* @GFP_KERNEL, align 4
  %240 = call i8* @dma_alloc_coherent(i32* %237, i64 %238, i32* %11, i32 %239)
  store i8* %240, i8** %12, align 8
  %241 = load i8*, i8** %12, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %249, label %243

243:                                              ; preds = %229
  %244 = load i32, i32* @ql_log_warn, align 4
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %246 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %244, %struct.TYPE_17__* %245, i32 28738, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %247 = load i32, i32* @ENOMEM, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %13, align 4
  br label %396

249:                                              ; preds = %229
  %250 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %251 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %255 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = load i64, i64* %16, align 8
  %260 = call i32 @sg_copy_to_buffer(i32 %253, i64 %257, i8* %258, i64 %259)
  %261 = load i32, i32* @ACO_LOAD_MEMORY, align 4
  %262 = call i8* @cpu_to_le16(i32 %261)
  %263 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %264 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %263, i32 0, i32 7
  store i8* %262, i8** %264, align 8
  %265 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %266 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @cpu_to_le32(i32 %271)
  %273 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %274 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %273, i32 0, i32 6
  store i8* %272, i8** %274, align 8
  br label %313

275:                                              ; preds = %55
  %276 = load i32, i32* @ACO_CHANGE_CONFIG_PARAM, align 4
  %277 = call i8* @cpu_to_le16(i32 %276)
  %278 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %279 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %278, i32 0, i32 7
  store i8* %277, i8** %279, align 8
  %280 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %281 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i8* @cpu_to_le32(i32 %286)
  %288 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %289 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %288, i32 0, i32 6
  store i8* %287, i8** %289, align 8
  %290 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %291 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i8* @cpu_to_le32(i32 %296)
  %298 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %299 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %298, i32 0, i32 5
  store i8* %297, i8** %299, align 8
  %300 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %301 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i8* @cpu_to_le32(i32 %306)
  %308 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %309 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %308, i32 0, i32 4
  store i8* %307, i8** %309, align 8
  br label %313

310:                                              ; preds = %55
  %311 = load i32, i32* @EIO, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %13, align 4
  br label %448

313:                                              ; preds = %275, %249, %185
  %314 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %315 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 131
  br i1 %318, label %319, label %343

319:                                              ; preds = %313
  %320 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %321 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i8* @cpu_to_le32(i32 %323)
  %325 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %326 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %325, i32 0, i32 3
  store i8* %324, i8** %326, align 8
  %327 = call i8* @cpu_to_le16(i32 1)
  %328 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %329 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %328, i32 0, i32 2
  store i8* %327, i8** %329, align 8
  %330 = load i32, i32* %11, align 4
  %331 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %332 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %332, i32 0, i32 1
  %334 = call i32 @put_unaligned_le64(i32 %330, i32* %333)
  %335 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %336 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = call i8* @cpu_to_le32(i32 %338)
  %340 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %341 = getelementptr inbounds %struct.access_chip_84xx, %struct.access_chip_84xx* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  store i8* %339, i8** %342, align 8
  br label %343

343:                                              ; preds = %319, %313
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %345 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %346 = load i32, i32* %10, align 4
  %347 = call i32 @qla2x00_issue_iocb(%struct.TYPE_17__* %344, %struct.access_chip_84xx* %345, i32 %346, i32 0)
  store i32 %347, i32* %13, align 4
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %356

350:                                              ; preds = %343
  %351 = load i32, i32* @ql_log_warn, align 4
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %353 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ql_log(i32 %351, %struct.TYPE_17__* %352, i32 28739, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %354 = load i32, i32* @DID_ERROR, align 4
  %355 = shl i32 %354, 16
  store i32 %355, i32* %13, align 4
  br label %395

356:                                              ; preds = %343
  %357 = load i32, i32* @ql_dbg_user, align 4
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %359 = call i32 @ql_dbg(i32 %357, %struct.TYPE_17__* %358, i32 28740, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %360 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %361 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %360, i32 0, i32 0
  store i32 16, i32* %361, align 8
  %362 = load i32, i32* @DID_OK, align 4
  %363 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %364 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 8
  %365 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %366 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, 129
  br i1 %369, label %376, label %370

370:                                              ; preds = %356
  %371 = load %struct.qla_bsg_a84_mgmt*, %struct.qla_bsg_a84_mgmt** %14, align 8
  %372 = getelementptr inbounds %struct.qla_bsg_a84_mgmt, %struct.qla_bsg_a84_mgmt* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = icmp eq i32 %374, 130
  br i1 %375, label %376, label %394

376:                                              ; preds = %370, %356
  %377 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %378 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %382 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %381, i32 0, i32 0
  store i64 %380, i64* %382, align 8
  %383 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %384 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %388 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i8*, i8** %12, align 8
  %392 = load i64, i64* %16, align 8
  %393 = call i32 @sg_copy_from_buffer(i32 %386, i64 %390, i8* %391, i64 %392)
  br label %394

394:                                              ; preds = %376, %370
  br label %395

395:                                              ; preds = %394, %350
  br label %396

396:                                              ; preds = %395, %243, %218, %126, %101
  %397 = load i8*, i8** %12, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %408

399:                                              ; preds = %396
  %400 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %401 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %400, i32 0, i32 1
  %402 = load %struct.TYPE_26__*, %struct.TYPE_26__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %402, i32 0, i32 0
  %404 = load i64, i64* %16, align 8
  %405 = load i8*, i8** %12, align 8
  %406 = load i32, i32* %11, align 4
  %407 = call i32 @dma_free_coherent(i32* %403, i64 %404, i8* %405, i32 %406)
  br label %408

408:                                              ; preds = %399, %396
  %409 = load i64, i64* %17, align 8
  %410 = load i64, i64* @DMA_TO_DEVICE, align 8
  %411 = icmp eq i64 %409, %410
  br i1 %411, label %412, label %427

412:                                              ; preds = %408
  %413 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %414 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %413, i32 0, i32 1
  %415 = load %struct.TYPE_26__*, %struct.TYPE_26__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 0
  %417 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %418 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %422 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @DMA_TO_DEVICE, align 8
  %426 = call i32 @dma_unmap_sg(i32* %416, i32 %420, i64 %424, i64 %425)
  br label %447

427:                                              ; preds = %408
  %428 = load i64, i64* %17, align 8
  %429 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %446

431:                                              ; preds = %427
  %432 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %433 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %432, i32 0, i32 1
  %434 = load %struct.TYPE_26__*, %struct.TYPE_26__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %434, i32 0, i32 0
  %436 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %437 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %436, i32 0, i32 1
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %441 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %440, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %445 = call i32 @dma_unmap_sg(i32* %435, i32 %439, i64 %443, i64 %444)
  br label %446

446:                                              ; preds = %431, %427
  br label %447

447:                                              ; preds = %446, %412
  br label %448

448:                                              ; preds = %447, %310, %203, %86
  %449 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %450 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.access_chip_84xx*, %struct.access_chip_84xx** %9, align 8
  %453 = load i32, i32* %10, align 4
  %454 = call i32 @dma_pool_free(i32 %451, %struct.access_chip_84xx* %452, i32 %453)
  %455 = load i32, i32* %13, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %466, label %457

457:                                              ; preds = %448
  %458 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %459 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %460 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %463 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %462, i32 0, i32 0
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @bsg_job_done(%struct.bsg_job* %458, i32 %461, i64 %464)
  br label %466

466:                                              ; preds = %457, %448
  %467 = load i32, i32* %13, align 4
  store i32 %467, i32* %2, align 4
  br label %468

468:                                              ; preds = %466, %49, %35
  %469 = load i32, i32* %2, align 4
  ret i32 %469
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_17__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @IS_QLA84XX(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local %struct.access_chip_84xx* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i64 @dma_map_sg(i32*, i32, i64, i64) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i64, i32*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i64, i8*, i64) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @qla2x00_issue_iocb(%struct.TYPE_17__*, %struct.access_chip_84xx*, i32, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i64, i8*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i64, i8*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i64) #1

declare dso_local i32 @dma_pool_free(i32, %struct.access_chip_84xx*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
