; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_menlo_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_menlo_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.lpfc_dmabuf*, %struct.TYPE_20__, %struct.TYPE_15__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.lpfc_dmabuf = type { i32, i64, %struct.TYPE_17__, %struct.bsg_job*, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.lpfc_dmabuf*, %struct.lpfc_iocbq* }
%struct.lpfc_iocbq = type { %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i64*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32 }
%struct.menlo_command = type { i64, i32 }
%struct.bsg_job_data = type { i32, i64, %struct.TYPE_17__, %struct.bsg_job*, i32, i32 }
%struct.ulp_bde64 = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"2784 Received MENLO_CMD request below minimum size\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"2785 Received MENLO_CMD reply below minimum size\0A\00", align 1
@HBA_MENLO_SUPPORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"2786 Adapter does not support menlo commands\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"2787 Failed allocation of dd_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@BUFF_TYPE_BLP_64 = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@LA = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CMD = common dso_local global i32 0, align 4
@MENLO_TRANSPORT_TYPE = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@OWN_CHIP = common dso_local global i32 0, align 4
@LPFC_IO_LIBDFC = common dso_local global i32 0, align 4
@MENLO_TIMEOUT = common dso_local global i64 0, align 8
@lpfc_bsg_menlo_cmd_cmp = common dso_local global i32 0, align 4
@LPFC_BSG_VENDOR_MENLO_CMD = common dso_local global i64 0, align 8
@CMD_GEN_REQUEST64_CR = common dso_local global i32 0, align 4
@MENLO_PU = common dso_local global i32 0, align 4
@MENLO_DID = common dso_local global i64 0, align 8
@MENLO_CONTEXT = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_CX = common dso_local global i32 0, align 4
@TYPE_MENLO = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_menlo_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_menlo_cmd(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.fc_bsg_request*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_iocbq*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.menlo_command*, align 8
  %12 = alloca %struct.lpfc_dmabuf*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bsg_job_data*, align 8
  %18 = alloca %struct.ulp_bde64*, align 8
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %19 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %20 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %19)
  %21 = call %struct.lpfc_vport* @shost_priv(i32 %20)
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %4, align 8
  %22 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 6
  %24 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %23, align 8
  store %struct.fc_bsg_request* %24, %struct.fc_bsg_request** %5, align 8
  %25 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %26 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %25, i32 0, i32 5
  %27 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %26, align 8
  store %struct.fc_bsg_reply* %27, %struct.fc_bsg_reply** %6, align 8
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 0
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %29, align 8
  store %struct.lpfc_hba* %30, %struct.lpfc_hba** %7, align 8
  store i32 0, i32* %10, align 4
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %12, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %14, align 8
  store %struct.ulp_bde64* null, %struct.ulp_bde64** %18, align 8
  %31 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %32 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %34 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 24
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %40 = load i32, i32* @KERN_WARNING, align 4
  %41 = load i32, i32* @LOG_LIBDFC, align 4
  %42 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %39, i32 %40, i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %387

45:                                               ; preds = %1
  %46 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %47 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 12
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %53 = load i32, i32* @KERN_WARNING, align 4
  %54 = load i32, i32* @LOG_LIBDFC, align 4
  %55 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @ERANGE, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  br label %387

58:                                               ; preds = %45
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HBA_MENLO_SUPPORT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %67 = load i32, i32* @KERN_WARNING, align 4
  %68 = load i32, i32* @LOG_LIBDFC, align 4
  %69 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %66, i32 %67, i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EPERM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %387

72:                                               ; preds = %58
  %73 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.menlo_command*
  store %struct.menlo_command* %78, %struct.menlo_command** %11, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call %struct.lpfc_dmabuf* @kmalloc(i32 48, i32 %79)
  %81 = bitcast %struct.lpfc_dmabuf* %80 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %81, %struct.bsg_job_data** %17, align 8
  %82 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %83 = icmp ne %struct.bsg_job_data* %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %72
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %86 = load i32, i32* @KERN_WARNING, align 4
  %87 = load i32, i32* @LOG_LIBDFC, align 4
  %88 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %10, align 4
  br label %387

91:                                               ; preds = %72
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.lpfc_dmabuf* @kmalloc(i32 48, i32 %92)
  store %struct.lpfc_dmabuf* %93, %struct.lpfc_dmabuf** %12, align 8
  %94 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %95 = icmp ne %struct.lpfc_dmabuf* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %383

99:                                               ; preds = %91
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %101 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %102 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %101, i32 0, i32 0
  %103 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %100, i32 0, i32* %102)
  %104 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %105 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %107 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %10, align 4
  br label %366

113:                                              ; preds = %99
  %114 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %115 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %114, i32 0, i32 5
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  %117 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %118 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %120, %struct.ulp_bde64** %18, align 8
  %121 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = udiv i64 %122, 4
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %126 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %127 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ulp_bde64*, %struct.ulp_bde64** %18, align 8
  %131 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %125, i32 %129, i32 1, %struct.ulp_bde64* %130, i32* %15)
  store %struct.lpfc_dmabuf* %131, %struct.lpfc_dmabuf** %13, align 8
  %132 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %133 = icmp ne %struct.lpfc_dmabuf* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %113
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %10, align 4
  br label %366

137:                                              ; preds = %113
  %138 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %139 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %140 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %139, i32 0, i32 4
  %141 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %142 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %138, %struct.TYPE_15__* %140, i32 %144, i32 1)
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.ulp_bde64*, %struct.ulp_bde64** %18, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %147, i64 %148
  store %struct.ulp_bde64* %149, %struct.ulp_bde64** %18, align 8
  %150 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %151, 4
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = sub i64 %152, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %16, align 4
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %158 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %159 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ulp_bde64*, %struct.ulp_bde64** %18, align 8
  %163 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %157, i32 %161, i32 0, %struct.ulp_bde64* %162, i32* %16)
  store %struct.lpfc_dmabuf* %163, %struct.lpfc_dmabuf** %14, align 8
  %164 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %165 = icmp ne %struct.lpfc_dmabuf* %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %137
  %167 = load i32, i32* @ENOMEM, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %362

169:                                              ; preds = %137
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %171 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %170)
  store %struct.lpfc_iocbq* %171, %struct.lpfc_iocbq** %8, align 8
  %172 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %173 = icmp ne %struct.lpfc_iocbq* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %10, align 4
  br label %358

177:                                              ; preds = %169
  %178 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %179 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %178, i32 0, i32 6
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %9, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 4
  store i64 0, i64* %184, align 8
  %185 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %186 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @putPaddrHigh(i32 %187)
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 3
  store i32 %188, i32* %193, align 4
  %194 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %195 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @putPaddrLow(i32 %196)
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 2
  store i32 %197, i32* %202, align 8
  %203 = load i32, i32* @BUFF_TYPE_BLP_64, align 4
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  store i32 %203, i32* %208, align 4
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %209, %210
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = trunc i64 %213 to i32
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  store i32 %214, i32* %219, align 8
  %220 = load i32, i32* @SI, align 4
  %221 = load i32, i32* @LA, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 0
  store i32 %222, i32* %228, align 8
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 3
  store i64 0, i64* %234, align 8
  %235 = load i32, i32* @FC_RCTL_DD_UNSOL_CMD, align 4
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 2
  store i32 %235, i32* %241, align 8
  %242 = load i32, i32* @MENLO_TRANSPORT_TYPE, align 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 1
  store i32 %242, i32* %248, align 4
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load i32, i32* @CLASS3, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 8
  store i32 %251, i32* %253, align 4
  %254 = load i32, i32* @OWN_CHIP, align 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 7
  store i32 %254, i32* %256, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  store i32 1, i32* %258, align 4
  %259 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %260 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %261 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %268 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %267, i32 0, i32 4
  store i32 %266, i32* %268, align 4
  %269 = load i64, i64* @MENLO_TIMEOUT, align 8
  %270 = sub nsw i64 %269, 5
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 6
  store i64 %270, i64* %272, align 8
  %273 = load i32, i32* @lpfc_bsg_menlo_cmd_cmp, align 4
  %274 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %275 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 8
  %276 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %277 = bitcast %struct.bsg_job_data* %276 to %struct.lpfc_dmabuf*
  %278 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %279 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %278, i32 0, i32 2
  store %struct.lpfc_dmabuf* %277, %struct.lpfc_dmabuf** %279, align 8
  %280 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %281 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %282 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %281, i32 0, i32 1
  store %struct.lpfc_dmabuf* %280, %struct.lpfc_dmabuf** %282, align 8
  %283 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %284 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %285 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %284, i32 0, i32 0
  store %struct.lpfc_dmabuf* %283, %struct.lpfc_dmabuf** %285, align 8
  %286 = load %struct.menlo_command*, %struct.menlo_command** %11, align 8
  %287 = getelementptr inbounds %struct.menlo_command, %struct.menlo_command* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @LPFC_BSG_VENDOR_MENLO_CMD, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %307

291:                                              ; preds = %177
  %292 = load i32, i32* @CMD_GEN_REQUEST64_CR, align 4
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 5
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* @MENLO_PU, align 4
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load i64, i64* @MENLO_DID, align 8
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  %302 = load i64*, i64** %301, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 4
  store i64 %298, i64* %303, align 8
  %304 = load i32, i32* @MENLO_CONTEXT, align 4
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  store i32 %304, i32* %306, align 4
  br label %323

307:                                              ; preds = %177
  %308 = load i32, i32* @CMD_GEN_REQUEST64_CX, align 4
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 5
  store i32 %308, i32* %310, align 8
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 2
  store i32 1, i32* %312, align 8
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i64*, i64** %315, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 4
  store i64 0, i64* %317, align 8
  %318 = load %struct.menlo_command*, %struct.menlo_command** %11, align 8
  %319 = getelementptr inbounds %struct.menlo_command, %struct.menlo_command* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 4
  br label %323

323:                                              ; preds = %307, %291
  %324 = load i32, i32* @TYPE_MENLO, align 4
  %325 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %326 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %325, i32 0, i32 4
  store i32 %324, i32* %326, align 8
  %327 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %328 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %329 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %328, i32 0, i32 3
  store %struct.bsg_job* %327, %struct.bsg_job** %329, align 8
  %330 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %331 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %332 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 1
  store %struct.lpfc_iocbq* %330, %struct.lpfc_iocbq** %334, align 8
  %335 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %336 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %337 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 0
  store %struct.lpfc_dmabuf* %335, %struct.lpfc_dmabuf** %339, align 8
  %340 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %341 = bitcast %struct.bsg_job_data* %340 to %struct.lpfc_dmabuf*
  %342 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %343 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %342, i32 0, i32 2
  store %struct.lpfc_dmabuf* %341, %struct.lpfc_dmabuf** %343, align 8
  %344 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %345 = load i32, i32* @LPFC_ELS_RING, align 4
  %346 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %347 = load i64, i64* @MENLO_TIMEOUT, align 8
  %348 = sub nsw i64 %347, 5
  %349 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %344, i32 %345, %struct.lpfc_iocbq* %346, i64 %348)
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* @IOCB_SUCCESS, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %323
  store i32 0, i32* %2, align 4
  br label %394

354:                                              ; preds = %323
  %355 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %356 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %8, align 8
  %357 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %355, %struct.lpfc_iocbq* %356)
  br label %358

358:                                              ; preds = %354, %174
  %359 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %360 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %361 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %359, %struct.lpfc_dmabuf* %360)
  br label %362

362:                                              ; preds = %358, %166
  %363 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %364 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %365 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %363, %struct.lpfc_dmabuf* %364)
  br label %366

366:                                              ; preds = %362, %134, %110
  %367 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %368 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %380

371:                                              ; preds = %366
  %372 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %373 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %374 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %377 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %372, i64 %375, i32 %378)
  br label %380

380:                                              ; preds = %371, %366
  %381 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %12, align 8
  %382 = call i32 @kfree(%struct.lpfc_dmabuf* %381)
  br label %383

383:                                              ; preds = %380, %96
  %384 = load %struct.bsg_job_data*, %struct.bsg_job_data** %17, align 8
  %385 = bitcast %struct.bsg_job_data* %384 to %struct.lpfc_dmabuf*
  %386 = call i32 @kfree(%struct.lpfc_dmabuf* %385)
  br label %387

387:                                              ; preds = %383, %84, %65, %51, %38
  %388 = load i32, i32* %10, align 4
  %389 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %390 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 8
  %391 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %392 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %391, i32 0, i32 2
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %392, align 8
  %393 = load i32, i32* %10, align 4
  store i32 %393, i32* %2, align 4
  br label %394

394:                                              ; preds = %387, %353
  %395 = load i32, i32* %2, align 4
  ret i32 %395
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba*, i32, i32, %struct.ulp_bde64*, i32*) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i64) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
