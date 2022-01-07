; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_send_mgmt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.lpfc_dmabuf*, %struct.TYPE_23__, %struct.TYPE_16__, %struct.fc_bsg_reply* }
%struct.lpfc_dmabuf = type { i32, i64, %struct.TYPE_22__, %struct.bsg_job*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.lpfc_dmabuf*, %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_nodelist = type { i32, i64 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_20__, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { %struct.lpfc_nodelist* }
%struct.TYPE_15__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_18__, %struct.TYPE_24__ }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i64 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64* }
%struct.lpfc_rport_data = type { %struct.lpfc_nodelist* }
%struct.ulp_bde64 = type { i32 }
%struct.bsg_job_data = type { i32, i64, %struct.TYPE_22__, %struct.bsg_job*, i32, i32 }
%struct.TYPE_17__ = type { %struct.lpfc_rport_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2733 Failed allocation of dd_data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLP_ELS_SND_MASK = common dso_local global i32 0, align 4
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@BUFF_TYPE_BLP_64 = common dso_local global i32 0, align 4
@CMD_GEN_REQUEST64_CR = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@LA = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i32 0, align 4
@CLASS3 = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@OWN_CHIP = common dso_local global i32 0, align 4
@LPFC_IO_LIBDFC = common dso_local global i32 0, align 4
@lpfc_bsg_send_mgmt_cmd_cmp = common dso_local global i32 0, align 4
@TYPE_IOCB = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HC_R0INT_ENA = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_SUCCESS = common dso_local global i32 0, align 4
@LPFC_IO_CMD_OUTSTANDING = common dso_local global i32 0, align 4
@IOCB_BUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_bsg_send_mgmt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_send_mgmt_cmd(%struct.bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_job*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.lpfc_rport_data*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.fc_bsg_reply*, align 8
  %9 = alloca %struct.ulp_bde64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.lpfc_dmabuf*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca %struct.lpfc_dmabuf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bsg_job_data*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %3, align 8
  %23 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %24 = call i32 @fc_bsg_to_shost(%struct.bsg_job* %23)
  %25 = call %struct.lpfc_vport* @shost_priv(i32 %24)
  store %struct.lpfc_vport* %25, %struct.lpfc_vport** %4, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %27 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %26, i32 0, i32 0
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %27, align 8
  store %struct.lpfc_hba* %28, %struct.lpfc_hba** %5, align 8
  %29 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %30 = call %struct.TYPE_17__* @fc_bsg_to_rport(%struct.bsg_job* %29)
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %31, align 8
  store %struct.lpfc_rport_data* %32, %struct.lpfc_rport_data** %6, align 8
  %33 = load %struct.lpfc_rport_data*, %struct.lpfc_rport_data** %6, align 8
  %34 = getelementptr inbounds %struct.lpfc_rport_data, %struct.lpfc_rport_data* %33, i32 0, i32 0
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %34, align 8
  store %struct.lpfc_nodelist* %35, %struct.lpfc_nodelist** %7, align 8
  %36 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %37 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %36, i32 0, i32 3
  %38 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %37, align 8
  store %struct.fc_bsg_reply* %38, %struct.fc_bsg_reply** %8, align 8
  store %struct.ulp_bde64* null, %struct.ulp_bde64** %9, align 8
  store %struct.lpfc_iocbq* null, %struct.lpfc_iocbq** %11, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %13, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %14, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %15, align 8
  store i32 0, i32* %21, align 4
  %39 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.lpfc_dmabuf* @kmalloc(i32 56, i32 %41)
  %43 = bitcast %struct.lpfc_dmabuf* %42 to %struct.bsg_job_data*
  store %struct.bsg_job_data* %43, %struct.bsg_job_data** %18, align 8
  %44 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %45 = icmp ne %struct.bsg_job_data* %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %1
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %48 = load i32, i32* @KERN_WARNING, align 4
  %49 = load i32, i32* @LOG_LIBDFC, align 4
  %50 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %21, align 4
  br label %436

53:                                               ; preds = %1
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %55 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %21, align 4
  br label %432

60:                                               ; preds = %53
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NLP_ELS_SND_MASK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %21, align 4
  br label %429

70:                                               ; preds = %60
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %72 = call %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba* %71)
  store %struct.lpfc_iocbq* %72, %struct.lpfc_iocbq** %11, align 8
  %73 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %74 = icmp ne %struct.lpfc_iocbq* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %21, align 4
  br label %429

78:                                               ; preds = %70
  %79 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %80 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %79, i32 0, i32 7
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %12, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.lpfc_dmabuf* @kmalloc(i32 56, i32 %81)
  store %struct.lpfc_dmabuf* %82, %struct.lpfc_dmabuf** %13, align 8
  %83 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %84 = icmp ne %struct.lpfc_dmabuf* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %21, align 4
  br label %425

88:                                               ; preds = %78
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %90 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %91 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %90, i32 0, i32 0
  %92 = call i64 @lpfc_mbuf_alloc(%struct.lpfc_hba* %89, i32 0, i32* %91)
  %93 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %94 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %96 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %88
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %21, align 4
  br label %408

102:                                              ; preds = %88
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %104 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %103, i32 0, i32 5
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %107 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %109, %struct.ulp_bde64** %9, align 8
  %110 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = udiv i64 %111, 4
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %115 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %116 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %120 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %114, i32 %118, i32 1, %struct.ulp_bde64* %119, i32* %16)
  store %struct.lpfc_dmabuf* %120, %struct.lpfc_dmabuf** %14, align 8
  %121 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %122 = icmp ne %struct.lpfc_dmabuf* %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %102
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %21, align 4
  br label %408

126:                                              ; preds = %102
  %127 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %128 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %129 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %128, i32 0, i32 2
  %130 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %131 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf* %127, %struct.TYPE_16__* %129, i32 %133, i32 1)
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %136, i64 %137
  store %struct.ulp_bde64* %138, %struct.ulp_bde64** %9, align 8
  %139 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %140 = sext i32 %139 to i64
  %141 = udiv i64 %140, 4
  %142 = load i32, i32* %16, align 4
  %143 = sext i32 %142 to i64
  %144 = sub i64 %141, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %17, align 4
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %147 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %148 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ulp_bde64*, %struct.ulp_bde64** %9, align 8
  %152 = call %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba* %146, i32 %150, i32 0, %struct.ulp_bde64* %151, i32* %17)
  store %struct.lpfc_dmabuf* %152, %struct.lpfc_dmabuf** %15, align 8
  %153 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %15, align 8
  %154 = icmp ne %struct.lpfc_dmabuf* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %126
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %21, align 4
  br label %404

158:                                              ; preds = %126
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 4
  store i64 0, i64* %163, align 8
  %164 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %165 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @putPaddrHigh(i32 %166)
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 3
  store i32 %167, i32* %172, align 4
  %173 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %174 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @putPaddrLow(i32 %175)
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 2
  store i32 %176, i32* %181, align 8
  %182 = load i32, i32* @BUFF_TYPE_BLP_64, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 1
  store i32 %182, i32* %187, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %188, %189
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  store i32 %193, i32* %198, align 8
  %199 = load i32, i32* @CMD_GEN_REQUEST64_CR, align 4
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* @SI, align 4
  %203 = load i32, i32* @LA, align 4
  %204 = or i32 %202, %203
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store i32 %204, i32* %210, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 6
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 3
  store i64 0, i64* %216, align 8
  %217 = load i32, i32* @FC_RCTL_DD_UNSOL_CTL, align 4
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 6
  %220 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  store i32 %217, i32* %223, align 8
  %224 = load i32, i32* @FC_TYPE_CT, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 6
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  store i32 %224, i32* %230, align 4
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  store i32 1, i32* %232, align 8
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  store i32 1, i32* %234, align 4
  %235 = load i32, i32* @CLASS3, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  %238 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %239 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  store i64 %240, i64* %242, align 8
  %243 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %244 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @LPFC_SLI_REV4, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %260

248:                                              ; preds = %158
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load i64*, i64** %251, align 8
  %253 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %254 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds i64, i64* %252, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  store i64 %257, i64* %259, align 8
  br label %260

260:                                              ; preds = %248, %158
  %261 = load i32, i32* @OWN_CHIP, align 4
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 4
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %268 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %267, i32 0, i32 6
  store i32 %266, i32* %268, align 4
  %269 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %270 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %271 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %270, i32 0, i32 2
  store %struct.lpfc_dmabuf* %269, %struct.lpfc_dmabuf** %271, align 8
  %272 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %273 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %274 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = or i32 %275, %272
  store i32 %276, i32* %274, align 8
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %278 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = mul nsw i32 %279, 2
  store i32 %280, i32* %10, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 3
  store i32 %281, i32* %283, align 8
  %284 = load i32, i32* @lpfc_bsg_send_mgmt_cmd_cmp, align 4
  %285 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %286 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %285, i32 0, i32 5
  store i32 %284, i32* %286, align 8
  %287 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %288 = bitcast %struct.bsg_job_data* %287 to %struct.lpfc_dmabuf*
  %289 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %290 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %289, i32 0, i32 4
  store %struct.lpfc_dmabuf* %288, %struct.lpfc_dmabuf** %290, align 8
  %291 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %292 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %293 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %292, i32 0, i32 3
  store %struct.lpfc_dmabuf* %291, %struct.lpfc_dmabuf** %293, align 8
  %294 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %295 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %296 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %295, i32 0, i32 2
  store %struct.lpfc_dmabuf* %294, %struct.lpfc_dmabuf** %296, align 8
  %297 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %298 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %299 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 0
  store %struct.lpfc_nodelist* %297, %struct.lpfc_nodelist** %300, align 8
  %301 = load i32, i32* @TYPE_IOCB, align 4
  %302 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %303 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %302, i32 0, i32 4
  store i32 %301, i32* %303, align 8
  %304 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %305 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %306 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %305, i32 0, i32 3
  store %struct.bsg_job* %304, %struct.bsg_job** %306, align 8
  %307 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %308 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %309 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 2
  store %struct.lpfc_iocbq* %307, %struct.lpfc_iocbq** %311, align 8
  %312 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %313 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %314 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 1
  store %struct.lpfc_nodelist* %312, %struct.lpfc_nodelist** %316, align 8
  %317 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %15, align 8
  %318 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %319 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 0
  store %struct.lpfc_dmabuf* %317, %struct.lpfc_dmabuf** %321, align 8
  %322 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %323 = bitcast %struct.bsg_job_data* %322 to %struct.lpfc_dmabuf*
  %324 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %325 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %324, i32 0, i32 0
  store %struct.lpfc_dmabuf* %323, %struct.lpfc_dmabuf** %325, align 8
  %326 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %327 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %356

332:                                              ; preds = %260
  %333 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %334 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 4
  %336 = call i64 @lpfc_readl(i32 %335, i32* %20)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = load i32, i32* @EIO, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %21, align 4
  br label %400

341:                                              ; preds = %332
  %342 = load i32, i32* @HC_R0INT_ENA, align 4
  %343 = load i32, i32* @LPFC_FCP_RING, align 4
  %344 = shl i32 %342, %343
  %345 = load i32, i32* %20, align 4
  %346 = or i32 %345, %344
  store i32 %346, i32* %20, align 4
  %347 = load i32, i32* %20, align 4
  %348 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %349 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @writel(i32 %347, i32 %350)
  %352 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %353 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @readl(i32 %354)
  br label %356

356:                                              ; preds = %341, %260
  %357 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %358 = load i32, i32* @LPFC_ELS_RING, align 4
  %359 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %360 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %357, i32 %358, %struct.lpfc_iocbq* %359, i32 0)
  store i32 %360, i32* %22, align 4
  %361 = load i32, i32* %22, align 4
  %362 = load i32, i32* @IOCB_SUCCESS, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %386

364:                                              ; preds = %356
  %365 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %366 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %365, i32 0, i32 3
  %367 = load i64, i64* %19, align 8
  %368 = call i32 @spin_lock_irqsave(i32* %366, i64 %367)
  %369 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %370 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @LPFC_IO_LIBDFC, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %364
  %376 = load i32, i32* @LPFC_IO_CMD_OUTSTANDING, align 4
  %377 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %378 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %376
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %375, %364
  %382 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %383 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %382, i32 0, i32 3
  %384 = load i64, i64* %19, align 8
  %385 = call i32 @spin_unlock_irqrestore(i32* %383, i64 %384)
  store i32 0, i32* %2, align 4
  br label %443

386:                                              ; preds = %356
  %387 = load i32, i32* %22, align 4
  %388 = load i32, i32* @IOCB_BUSY, align 4
  %389 = icmp eq i32 %387, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %386
  %391 = load i32, i32* @EAGAIN, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %21, align 4
  br label %396

393:                                              ; preds = %386
  %394 = load i32, i32* @EIO, align 4
  %395 = sub nsw i32 0, %394
  store i32 %395, i32* %21, align 4
  br label %396

396:                                              ; preds = %393, %390
  br label %397

397:                                              ; preds = %396
  %398 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %399 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %398, i32 0, i32 0
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %399, align 8
  br label %400

400:                                              ; preds = %397, %338
  %401 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %402 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %15, align 8
  %403 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %401, %struct.lpfc_dmabuf* %402)
  br label %404

404:                                              ; preds = %400, %155
  %405 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %406 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %407 = call i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba* %405, %struct.lpfc_dmabuf* %406)
  br label %408

408:                                              ; preds = %404, %123, %99
  %409 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %410 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %422

413:                                              ; preds = %408
  %414 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %415 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %416 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %419 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %414, i64 %417, i32 %420)
  br label %422

422:                                              ; preds = %413, %408
  %423 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %13, align 8
  %424 = call i32 @kfree(%struct.lpfc_dmabuf* %423)
  br label %425

425:                                              ; preds = %422, %85
  %426 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %427 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %428 = call i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba* %426, %struct.lpfc_iocbq* %427)
  br label %429

429:                                              ; preds = %425, %75, %67
  %430 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %431 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %430)
  br label %432

432:                                              ; preds = %429, %57
  %433 = load %struct.bsg_job_data*, %struct.bsg_job_data** %18, align 8
  %434 = bitcast %struct.bsg_job_data* %433 to %struct.lpfc_dmabuf*
  %435 = call i32 @kfree(%struct.lpfc_dmabuf* %434)
  br label %436

436:                                              ; preds = %432, %46
  %437 = load i32, i32* %21, align 4
  %438 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %8, align 8
  %439 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  %440 = load %struct.bsg_job*, %struct.bsg_job** %3, align 8
  %441 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %440, i32 0, i32 0
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %441, align 8
  %442 = load i32, i32* %21, align 4
  store i32 %442, i32* %2, align 4
  br label %443

443:                                              ; preds = %436, %381
  %444 = load i32, i32* %2, align 4
  ret i32 %444
}

declare dso_local %struct.lpfc_vport* @shost_priv(i32) #1

declare dso_local i32 @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_17__* @fc_bsg_to_rport(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_dmabuf* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_sli_get_iocbq(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_mbuf_alloc(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.lpfc_dmabuf* @lpfc_alloc_bsg_buffers(%struct.lpfc_hba*, i32, i32, %struct.ulp_bde64*, i32*) #1

declare dso_local i32 @lpfc_bsg_copy_data(%struct.lpfc_dmabuf*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i64 @lpfc_readl(i32, i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_free_bsg_buffers(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i64, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli_release_iocbq(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
