; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_ct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_30__, %struct.TYPE_28__, %struct.fc_bsg_request* }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32* }
%struct.TYPE_20__ = type { i8*, i32, i32, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_23__ = type { %struct.bsg_job* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_22__, %struct.qla_hw_data* }
%struct.TYPE_22__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.fc_port = type { i32, %struct.TYPE_27__, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32 }

@DID_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"FC_BSG_HST_CT\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"dma_map_sg return %d for request\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"dma_map_sg return %d for reply\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt:%x dma_reply_sg_cnt: %x\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Host is not online.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NPH_SNS = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown loop id: %x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"Failed to allocate fcport.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"qla2x00_get_sp failed.\0A\00", align 1
@SRB_CT_CMD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"bsg_ct\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [67 x i8] c"bsg rqst type: %s else type: %x - loop-id=%x portid=%02x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"qla2x00_start_sp failed=%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_process_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_ct(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.fc_bsg_request*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.qla_hw_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fc_port*, align 8
  %14 = alloca i8*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %15 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %16 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %15, i32 0, i32 2
  %17 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %16, align 8
  store %struct.fc_bsg_request* %17, %struct.fc_bsg_request** %5, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %19 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %6, align 8
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = call %struct.TYPE_21__* @shost_priv(%struct.Scsi_Host* %20)
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %7, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  store %struct.qla_hw_data* %24, %struct.qla_hw_data** %8, align 8
  %25 = load i32, i32* @DID_ERROR, align 4
  %26 = shl i32 %25, 16
  store i32 %26, i32* %9, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 0
  %31 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %32 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %36 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_map_sg(i32* %30, i32 %34, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %1
  %44 = load i32, i32* @ql_log_warn, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %44, %struct.TYPE_21__* %45, i32 28687, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %301

50:                                               ; preds = %1
  %51 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %52 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  %55 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %56 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %60 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %64 = call i32 @dma_map_sg(i32* %54, i32 %58, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %50
  %68 = load i32, i32* @ql_log_warn, align 4
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %68, %struct.TYPE_21__* %69, i32 28688, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %301

74:                                               ; preds = %50
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %77 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %84 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %82, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %81, %74
  %89 = load i32, i32* @ql_log_warn, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %91 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %92 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %97 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %89, %struct.TYPE_21__* %90, i32 28689, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %95, i32 %99, i32 %100)
  %102 = load i32, i32* @EAGAIN, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %272

104:                                              ; preds = %81
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @ql_log_warn, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %111, %struct.TYPE_21__* %112, i32 28690, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %9, align 4
  br label %272

116:                                              ; preds = %104
  %117 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %118 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, -16777216
  %123 = lshr i32 %122, 24
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  switch i32 %124, label %132 [
    i32 252, label %125
    i32 250, label %128
  ]

125:                                              ; preds = %116
  %126 = load i32, i32* @NPH_SNS, align 4
  %127 = call i32 @cpu_to_le16(i32 %126)
  store i32 %127, i32* %12, align 4
  br label %139

128:                                              ; preds = %116
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %12, align 4
  br label %139

132:                                              ; preds = %116
  %133 = load i32, i32* @ql_dbg_user, align 4
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %133, %struct.TYPE_21__* %134, i32 28691, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  br label %272

139:                                              ; preds = %128, %125
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call %struct.fc_port* @qla2x00_alloc_fcport(%struct.TYPE_21__* %140, i32 %141)
  store %struct.fc_port* %142, %struct.fc_port** %13, align 8
  %143 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %144 = icmp ne %struct.fc_port* %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* @ql_log_warn, align 4
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %148 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %146, %struct.TYPE_21__* %147, i32 28692, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %9, align 4
  br label %272

151:                                              ; preds = %139
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %153 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %154 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %153, i32 0, i32 2
  store %struct.TYPE_21__* %152, %struct.TYPE_21__** %154, align 8
  %155 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %156 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %163 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 0
  store i32 %161, i32* %165, align 4
  %166 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %167 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %174 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  store i32 %172, i32* %176, align 4
  %177 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %178 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %185 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %186, i32 0, i32 2
  store i32 %183, i32* %187, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %190 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %192 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call %struct.TYPE_20__* @qla2x00_get_sp(%struct.TYPE_21__* %191, %struct.fc_port* %192, i32 %193)
  store %struct.TYPE_20__* %194, %struct.TYPE_20__** %4, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %196 = icmp ne %struct.TYPE_20__* %195, null
  br i1 %196, label %203, label %197

197:                                              ; preds = %151
  %198 = load i32, i32* @ql_log_warn, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %200 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %198, %struct.TYPE_21__* %199, i32 28693, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %9, align 4
  br label %269

203:                                              ; preds = %151
  %204 = load i32, i32* @SRB_CT_CMD, align 4
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 5
  store i32 %204, i32* %206, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %208, align 8
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @qla24xx_calc_ct_iocbs(i32 %211)
  %213 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 8
  %215 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  store %struct.bsg_job* %215, %struct.bsg_job** %218, align 8
  %219 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @ql_dbg_user, align 4
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %227 = load i8*, i8** %14, align 8
  %228 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %229 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 16
  %234 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %235 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %238 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %243 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %248 = getelementptr inbounds %struct.fc_port, %struct.fc_port* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_dbg(i32 %225, %struct.TYPE_21__* %226, i32 28694, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i8* %227, i32 %233, i32 %236, i32 %241, i32 %246, i32 %251)
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %254 = call i32 @qla2x00_start_sp(%struct.TYPE_20__* %253)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @QLA_SUCCESS, align 4
  %257 = icmp ne i32 %255, %256
  br i1 %257, label %258, label %267

258:                                              ; preds = %203
  %259 = load i32, i32* @ql_log_warn, align 4
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i32, %struct.TYPE_21__*, i32, i8*, ...) @ql_log(i32 %259, %struct.TYPE_21__* %260, i32 28695, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %261)
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %264 = call i32 @qla2x00_rel_sp(%struct.TYPE_20__* %263)
  %265 = load i32, i32* @EIO, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %9, align 4
  br label %269

267:                                              ; preds = %203
  %268 = load i32, i32* %9, align 4
  store i32 %268, i32* %2, align 4
  br label %303

269:                                              ; preds = %258, %197
  %270 = load %struct.fc_port*, %struct.fc_port** %13, align 8
  %271 = call i32 @kfree(%struct.fc_port* %270)
  br label %272

272:                                              ; preds = %269, %145, %132, %110, %88
  %273 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %274 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %273, i32 0, i32 0
  %275 = load %struct.TYPE_29__*, %struct.TYPE_29__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %275, i32 0, i32 0
  %277 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %278 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %282 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @DMA_TO_DEVICE, align 4
  %286 = call i32 @dma_unmap_sg(i32* %276, i32 %280, i32 %284, i32 %285)
  %287 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  %288 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %287, i32 0, i32 0
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 0
  %291 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %292 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %296 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %300 = call i32 @dma_unmap_sg(i32* %290, i32 %294, i32 %298, i32 %299)
  br label %301

301:                                              ; preds = %272, %67, %43
  %302 = load i32, i32* %9, align 4
  store i32 %302, i32* %2, align 4
  br label %303

303:                                              ; preds = %301, %267
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_21__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_21__*, i32, i8*, ...) #1

declare dso_local %struct.fc_port* @qla2x00_alloc_fcport(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_20__* @qla2x00_get_sp(%struct.TYPE_21__*, %struct.fc_port*, i32) #1

declare dso_local i32 @qla24xx_calc_ct_iocbs(i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_20__*) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_20__*) #1

declare dso_local i32 @kfree(%struct.fc_port*) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
