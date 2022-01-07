; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_rport_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.lpfc_nodelist*, %struct.TYPE_12__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.lpfc_nodelist = type { i64, %struct.TYPE_17__, %struct.bsg_job*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_iocbq = type { i32, %struct.lpfc_nodelist*, i32, %struct.TYPE_15__, %struct.TYPE_14__, i64 }
%struct.TYPE_15__ = type { %struct.lpfc_nodelist* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.bsg_job_data = type { i64, %struct.TYPE_17__, %struct.bsg_job*, i32, i32 }
%struct.TYPE_18__ = type { %struct.lpfc_rport_data* }
%struct.lpfc_dmabuf = type { i32 }

@FCELSSIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2735 Failed allocation of dd_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_IO_LIBDFC = common dso_local global i32 0, align 4
@lpfc_bsg_rport_els_cmp = common dso_local global i32 0, align 4
@TYPE_IOCB = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@LPFC_IO_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@IOCB_BUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_rport_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_rport_els(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.fc_bsg_request*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bsg_job_data*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %18 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %19 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %18)
  %20 = call %struct.lpfc_vport* @shost_priv(i32 %19)
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %4, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 0
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  store %struct.lpfc_hba* %23, %struct.lpfc_hba** %5, align 8
  %24 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %25 = call %struct.TYPE_18__* @fc_bsg_to_rport(%struct.bsg_job* %24)
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %26, align 8
  store %struct.lpfc_rport_data* %27, %struct.lpfc_rport_data** %6, align 8
  %28 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %29 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %28, i32 0, i32 0
  %30 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %29, align 8
  store %struct.lpfc_nodelist* %30, %struct.lpfc_nodelist** %7, align 8
  %31 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %32 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %31, i32 0, i32 3
  %33 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %32, align 8
  store %struct.fc_bsg_request* %33, %struct.fc_bsg_request** %8, align 8
  %34 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %35 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %34, i32 0, i32 2
  %36 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %35, align 8
  store %struct.fc_bsg_reply* %36, %struct.fc_bsg_reply** %9, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %17, align 4
  %37 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %38 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %40 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FCELSSIZE, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %1
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %17, align 4
  br label %262

48:                                               ; preds = %1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.lpfc_nodelist* @kmalloc(i32 48, i32 %49)
  %51 = bitcast %struct.lpfc_nodelist* %50 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %51, %struct.bsg_job_data** %14, align 8
  %52 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %53 = icmp ne %struct.bsg_job_data* %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %56 = load i32, i32* @KERN_WARNING, align 4
  %57 = load i32, i32* @LOG_LIBDFC, align 4
  %58 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %17, align 4
  br label %262

61:                                               ; preds = %48
  %62 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %8, align 8
  %63 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %68 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %11, align 4
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %73 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %61
  %76 = load i32, i32* @ENODEV, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %17, align 4
  br label %258

78:                                               ; preds = %61
  %79 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %82 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %79, i32 1, i32 %80, i32 0, %struct.lpfc_nodelist* %81, i32 %84, i32 %85)
  store %struct.lpfc_iocbq* %86, %struct.lpfc_iocbq** %12, align 8
  %87 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %88 = icmp ne %struct.lpfc_iocbq* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %17, align 4
  br label %255

92:                                               ; preds = %78
  %93 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %94 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %13, align 8
  %96 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %97 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %101 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.lpfc_dmabuf*
  %108 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @sg_copy_to_buffer(i32 %99, i32 %103, i32 %109, i32 %110)
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LPFC_SLI_REV4, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %92
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %126 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  store i64 %124, i64* %127, align 8
  br label %133

128:                                              ; preds = %92
  %129 = load i64, i64* %13, align 8
  %130 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %131 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %117
  %134 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %135 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %136 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %140 = bitcast %struct.bsg_job_data* %139 to %struct.lpfc_nodelist*
  %141 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %142 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %141, i32 0, i32 1
  store %struct.lpfc_nodelist* %140, %struct.lpfc_nodelist** %142, align 8
  %143 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %144 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %145 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  store %struct.lpfc_nodelist* %143, %struct.lpfc_nodelist** %146, align 8
  %147 = load i32, i32* @lpfc_bsg_rport_els_cmp, align 4
  %148 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %149 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @TYPE_IOCB, align 4
  %151 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %152 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 8
  %153 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %154 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %155 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %154, i32 0, i32 2
  store %struct.bsg_job* %153, %struct.bsg_job** %155, align 8
  %156 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %157 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %158 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 2
  store %struct.lpfc_iocbq* %156, %struct.lpfc_iocbq** %160, align 8
  %161 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %162 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %163 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 1
  store %struct.lpfc_nodelist* %161, %struct.lpfc_nodelist** %165, align 8
  %166 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %167 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  store i32* null, i32** %169, align 8
  %170 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %171 = bitcast %struct.bsg_job_data* %170 to %struct.lpfc_nodelist*
  %172 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %173 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %172, i32 0, i32 0
  store %struct.lpfc_nodelist* %171, %struct.lpfc_nodelist** %173, align 8
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %175 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %133
  %181 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %182 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @lpfc_readl(i32 %183, i32* %16)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %180
  %187 = load i32, i32* @EIO, align 4
  %188 = sub nsw i32 0, %187
  store i32 %188, i32* %17, align 4
  br label %248

189:                                              ; preds = %180
  %190 = load i32, i32* @HC_R0INT_ENA, align 4
  %191 = load i32, i32* @LPFC_FCP_RING, align 4
  %192 = shl i32 %190, %191
  %193 = load i32, i32* %16, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %197 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @writel(i32 %195, i32 %198)
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @readl(i32 %202)
  br label %204

204:                                              ; preds = %189, %133
  %205 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %206 = load i32, i32* @LPFC_ELS_RING, align 4
  %207 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %208 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %205, i32 %206, %struct.lpfc_iocbq* %207, i32 0)
  store i32 %208, i32* %17, align 4
  %209 = load i32, i32* %17, align 4
  %210 = load i32, i32* @IOCB_SUCCESS, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %234

212:                                              ; preds = %204
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 2
  %215 = load i64, i64* %15, align 8
  %216 = call i32 @spin_lock_irqsave(i32* %214, i64 %215)
  %217 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %218 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %212
  %224 = load i32, i32* @LPFC_IO_CMD_OUTSTANDING, align 4
  %225 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %226 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 8
  br label %229

229:                                              ; preds = %223, %212
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 2
  %232 = load i64, i64* %15, align 8
  %233 = call i32 @spin_unlock_irqrestore(i32* %231, i64 %232)
  store i32 0, i32* %2, align 4
  br label %269

234:                                              ; preds = %204
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* @IOCB_BUSY, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load i32, i32* @EAGAIN, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %17, align 4
  br label %244

241:                                              ; preds = %234
  %242 = load i32, i32* @EIO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %17, align 4
  br label %244

244:                                              ; preds = %241, %238
  br label %245

245:                                              ; preds = %244
  %246 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %247 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %246, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %247, align 8
  br label %248

248:                                              ; preds = %245, %186
  %249 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %250 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %251 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %250, i32 0, i32 1
  store %struct.lpfc_nodelist* %249, %struct.lpfc_nodelist** %251, align 8
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %253 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %254 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %252, %struct.lpfc_iocbq* %253)
  br label %255

255:                                              ; preds = %248, %89
  %256 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %257 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %256)
  br label %258

258:                                              ; preds = %255, %75
  %259 = load %struct.bsg_job_data*, %struct.bsg_job_data** %14, align 8
  %260 = bitcast %struct.bsg_job_data* %259 to %struct.lpfc_nodelist*
  %261 = call i32 @kfree(%struct.lpfc_nodelist* %260)
  br label %262

262:                                              ; preds = %258, %54, %45
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %265 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %267 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %266, i32 0, i32 0
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %267, align 8
  %268 = load i32, i32* %17, align 4
  store i32 %268, i32* %2, align 4
  br label %269

269:                                              ; preds = %262, %229
  %270 = load i32, i32* %2, align 4
  ret i32 %270
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_18__* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_nodelist* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i32, i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @kfree(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
