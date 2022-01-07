; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_els.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla2x00_process_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_37__, %struct.TYPE_36__, %struct.fc_bsg_request* }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_36__ = type { i32, i32 }
%struct.fc_bsg_request = type { i64, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32*, i32 }
%struct.fc_rport = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_34__, i32, %struct.TYPE_27__* }
%struct.TYPE_34__ = type { %struct.TYPE_33__, i32 }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_30__, %struct.qla_hw_data* }
%struct.TYPE_30__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_26__ = type { i8*, i32, i32, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.bsg_job* }

@DID_ERROR = common dso_local global i32 0, align 4
@FC_BSG_RPT_ELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"FC_BSG_RPT_ELS\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FC_BSG_HST_ELS_NOLOGIN\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Host not online.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ql_dbg_user = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"ELS passthru not supported for ISP23xx based adapters.\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"Multiple SG's are not supported for ELS requests, request_sg_cnt=%x reply_sg_cnt=%x.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to login port %06X for ELS passthru.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NPH_FABRIC_CONTROLLER = common dso_local global i32 0, align 4
@NPH_F_PORT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [124 x i8] c"dma mapping resulted in different sg counts, request_sg_cnt: %x dma_request_sg_cnt:%x reply_sg_cnt:%x dma_reply_sg_cnt:%x.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SRB_ELS_CMD_RPT = common dso_local global i32 0, align 4
@SRB_ELS_CMD_HST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"bsg_els_rpt\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"bsg_els_hst\00", align 1
@qla2x00_bsg_sp_free = common dso_local global i32 0, align 4
@qla2x00_bsg_job_done = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [66 x i8] c"bsg rqst type: %s els type: %x - loop-id=%x portid=%-2x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"qla2x00_start_sp failed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla2x00_process_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_process_els(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_rport*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 2
  %18 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %17, align 8
  store %struct.fc_bsg_request* %18, %struct.fc_bsg_request** %4, align 8
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %6, align 8
  %19 = load i32, i32* @DID_ERROR, align 4
  %20 = shl i32 %19, 16
  store i32 %20, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %22 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %1
  %27 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %28 = call %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job* %27)
  store %struct.fc_rport* %28, %struct.fc_rport** %5, align 8
  %29 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %30 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.TYPE_28__**
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  store %struct.TYPE_28__* %33, %struct.TYPE_28__** %6, align 8
  %34 = load %struct.fc_rport*, %struct.fc_rport** %5, align 8
  %35 = call %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport* %34)
  store %struct.Scsi_Host* %35, %struct.Scsi_Host** %7, align 8
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %37 = call %struct.TYPE_27__* @shost_priv(%struct.Scsi_Host* %36)
  store %struct.TYPE_27__* %37, %struct.TYPE_27__** %8, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 1
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %39, align 8
  store %struct.qla_hw_data* %40, %struct.qla_hw_data** %9, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %49

41:                                               ; preds = %1
  %42 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %43 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %42)
  store %struct.Scsi_Host* %43, %struct.Scsi_Host** %7, align 8
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %45 = call %struct.TYPE_27__* @shost_priv(%struct.Scsi_Host* %44)
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %8, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 1
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %47, align 8
  store %struct.qla_hw_data* %48, %struct.qla_hw_data** %9, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %49

49:                                               ; preds = %41, %26
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ql_log_warn, align 4
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %58 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_log(i32 %56, %struct.TYPE_27__* %57, i32 28677, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %14, align 4
  br label %402

61:                                               ; preds = %49
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %63 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @ql_dbg_user, align 4
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %68 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i32 %66, %struct.TYPE_27__* %67, i32 28673, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @EPERM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %402

71:                                               ; preds = %61
  %72 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %73 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %79 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %81, 1
  br i1 %82, label %83, label %97

83:                                               ; preds = %77, %71
  %84 = load i32, i32* @ql_dbg_user, align 4
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %86 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %87 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %91 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i32 %84, %struct.TYPE_27__* %85, i32 28674, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load i32, i32* @EPERM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  br label %402

97:                                               ; preds = %77
  %98 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %99 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %97
  %104 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %106 = call i64 @qla2x00_fabric_login(%struct.TYPE_27__* %104, %struct.TYPE_28__* %105, i32* %15)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load i32, i32* @ql_dbg_user, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i32 %109, %struct.TYPE_27__* %110, i32 28675, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %14, align 4
  br label %402

118:                                              ; preds = %103
  br label %179

119:                                              ; preds = %97
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call %struct.TYPE_28__* @qla2x00_alloc_fcport(%struct.TYPE_27__* %120, i32 %121)
  store %struct.TYPE_28__* %122, %struct.TYPE_28__** %6, align 8
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %124 = icmp ne %struct.TYPE_28__* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %14, align 4
  br label %402

128:                                              ; preds = %119
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 2
  store %struct.TYPE_27__* %129, %struct.TYPE_27__** %131, align 8
  %132 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %133 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 8
  %143 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %144 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 1
  store i32 %149, i32* %153, align 4
  %154 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %155 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 2
  store i32 %160, i32* %164, align 8
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 253
  br i1 %170, label %171, label %173

171:                                              ; preds = %128
  %172 = load i32, i32* @NPH_FABRIC_CONTROLLER, align 4
  br label %175

173:                                              ; preds = %128
  %174 = load i32, i32* @NPH_F_PORT, align 4
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi i32 [ %172, %171 ], [ %174, %173 ]
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %175, %118
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %181 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %180, i32 0, i32 0
  %182 = load %struct.TYPE_35__*, %struct.TYPE_35__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 0
  %184 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %185 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %189 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @DMA_TO_DEVICE, align 4
  %193 = call i32 @dma_map_sg(i32* %183, i32 %187, i32 %191, i32 %192)
  store i32 %193, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %213, label %196

196:                                              ; preds = %179
  %197 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %198 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %197, i32 0, i32 0
  %199 = load %struct.TYPE_35__*, %struct.TYPE_35__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 0
  %201 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %202 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %206 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @DMA_TO_DEVICE, align 4
  %210 = call i32 @dma_unmap_sg(i32* %200, i32 %204, i32 %208, i32 %209)
  %211 = load i32, i32* @ENOMEM, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %14, align 4
  br label %392

213:                                              ; preds = %179
  %214 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %215 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %214, i32 0, i32 0
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %216, i32 0, i32 0
  %218 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %219 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %223 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %227 = call i32 @dma_map_sg(i32* %217, i32 %221, i32 %225, i32 %226)
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %247, label %230

230:                                              ; preds = %213
  %231 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %232 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %231, i32 0, i32 0
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %233, i32 0, i32 0
  %235 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %236 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %240 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %244 = call i32 @dma_unmap_sg(i32* %234, i32 %238, i32 %242, i32 %243)
  %245 = load i32, i32* @ENOMEM, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %14, align 4
  br label %392

247:                                              ; preds = %213
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %250 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %248, %252
  br i1 %253, label %261, label %254

254:                                              ; preds = %247
  %255 = load i32, i32* %13, align 4
  %256 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %257 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %255, %259
  br i1 %260, label %261, label %277

261:                                              ; preds = %254, %247
  %262 = load i32, i32* @ql_log_warn, align 4
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %264 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %265 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %270 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_log(i32 %262, %struct.TYPE_27__* %263, i32 28680, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0), i32 %267, i32 %268, i32 %272, i32 %273)
  %275 = load i32, i32* @EAGAIN, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %14, align 4
  br label %363

277:                                              ; preds = %254
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %280 = load i32, i32* @GFP_KERNEL, align 4
  %281 = call %struct.TYPE_26__* @qla2x00_get_sp(%struct.TYPE_27__* %278, %struct.TYPE_28__* %279, i32 %280)
  store %struct.TYPE_26__* %281, %struct.TYPE_26__** %10, align 8
  %282 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %283 = icmp ne %struct.TYPE_26__* %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %277
  %285 = load i32, i32* @ENOMEM, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %14, align 4
  br label %363

287:                                              ; preds = %277
  %288 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %289 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %287
  %294 = load i32, i32* @SRB_ELS_CMD_RPT, align 4
  br label %297

295:                                              ; preds = %287
  %296 = load i32, i32* @SRB_ELS_CMD_HST, align 4
  br label %297

297:                                              ; preds = %295, %293
  %298 = phi i32 [ %294, %293 ], [ %296, %295 ]
  %299 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %299, i32 0, i32 4
  store i32 %298, i32* %300, align 8
  %301 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %302 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %305 = icmp eq i64 %303, %304
  %306 = zext i1 %305 to i64
  %307 = select i1 %305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 0
  store i8* %307, i8** %309, align 8
  %310 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 3
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  store %struct.bsg_job* %310, %struct.bsg_job** %313, align 8
  %314 = load i32, i32* @qla2x00_bsg_sp_free, align 4
  %315 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %315, i32 0, i32 2
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* @qla2x00_bsg_job_done, align 4
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 1
  store i32 %317, i32* %319, align 8
  %320 = load i32, i32* @ql_dbg_user, align 4
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %322 = load i8*, i8** %11, align 8
  %323 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %324 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_dbg(i32 %320, %struct.TYPE_27__* %321, i32 28682, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i8* %322, i32 %327, i32 %330, i32 %335, i32 %340, i32 %345)
  %347 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %348 = call i32 @qla2x00_start_sp(%struct.TYPE_26__* %347)
  store i32 %348, i32* %14, align 4
  %349 = load i32, i32* %14, align 4
  %350 = load i32, i32* @QLA_SUCCESS, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %361

352:                                              ; preds = %297
  %353 = load i32, i32* @ql_log_warn, align 4
  %354 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %355 = load i32, i32* %14, align 4
  %356 = call i32 (i32, %struct.TYPE_27__*, i32, i8*, ...) @ql_log(i32 %353, %struct.TYPE_27__* %354, i32 28686, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %355)
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %358 = call i32 @qla2x00_rel_sp(%struct.TYPE_26__* %357)
  %359 = load i32, i32* @EIO, align 4
  %360 = sub nsw i32 0, %359
  store i32 %360, i32* %14, align 4
  br label %363

361:                                              ; preds = %297
  %362 = load i32, i32* %14, align 4
  store i32 %362, i32* %2, align 4
  br label %404

363:                                              ; preds = %352, %284, %261
  %364 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %365 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %364, i32 0, i32 0
  %366 = load %struct.TYPE_35__*, %struct.TYPE_35__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %366, i32 0, i32 0
  %368 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %369 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %373 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = load i32, i32* @DMA_TO_DEVICE, align 4
  %377 = call i32 @dma_unmap_sg(i32* %367, i32 %371, i32 %375, i32 %376)
  %378 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %379 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %378, i32 0, i32 0
  %380 = load %struct.TYPE_35__*, %struct.TYPE_35__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %380, i32 0, i32 0
  %382 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %383 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %387 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %391 = call i32 @dma_unmap_sg(i32* %381, i32 %385, i32 %389, i32 %390)
  br label %392

392:                                              ; preds = %363, %230, %196
  %393 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %394 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @FC_BSG_RPT_ELS, align 8
  %397 = icmp eq i64 %395, %396
  br i1 %397, label %398, label %401

398:                                              ; preds = %392
  %399 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %400 = call i32 @kfree(%struct.TYPE_28__* %399)
  br label %401

401:                                              ; preds = %398, %392
  br label %402

402:                                              ; preds = %401, %125, %108, %83, %65, %55
  %403 = load i32, i32* %14, align 4
  store i32 %403, i32* %2, align 4
  br label %404

404:                                              ; preds = %402, %361
  %405 = load i32, i32* %2, align 4
  ret i32 %405
}

declare dso_local %struct.fc_rport* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local %struct.Scsi_Host* @rport_to_shost(%struct.fc_rport*) #1

declare dso_local %struct.TYPE_27__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_27__*, i32, i8*, ...) #1

declare dso_local i64 @qla2x00_fabric_login(%struct.TYPE_27__*, %struct.TYPE_28__*, i32*) #1

declare dso_local %struct.TYPE_28__* @qla2x00_alloc_fcport(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @qla2x00_get_sp(%struct.TYPE_27__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_26__*) #1

declare dso_local i32 @qla2x00_rel_sp(%struct.TYPE_26__*) #1

declare dso_local i32 @kfree(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
