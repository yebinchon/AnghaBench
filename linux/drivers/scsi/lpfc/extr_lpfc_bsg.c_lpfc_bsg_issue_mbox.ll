; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_issue_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.TYPE_59__, %struct.TYPE_65__* }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_65__ = type { i64 }
%struct.bsg_job = type { %struct.TYPE_60__, %struct.bsg_job_data*, %struct.TYPE_64__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_60__ = type { i32, i32, i32 }
%struct.bsg_job_data = type { %struct.TYPE_58__, %struct.bsg_job*, i32 }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32, i32, i32, %struct.TYPE_61__*, %struct.TYPE_61__*, %struct.TYPE_63__*, %struct.lpfc_dmabuf* }
%struct.TYPE_61__ = type { i64, %struct.TYPE_55__, i32 }
%struct.TYPE_55__ = type { i64*, %struct.TYPE_47__, %struct.TYPE_46__, %struct.READ_EVENT_LOG_VAR, %struct.TYPE_42__ }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_46__ = type { i64 }
%struct.READ_EVENT_LOG_VAR = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i64 }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { %struct.TYPE_69__, %struct.TYPE_66__ }
%struct.TYPE_69__ = type { %struct.TYPE_68__, i8*, i8* }
%struct.TYPE_68__ = type { %struct.TYPE_67__ }
%struct.TYPE_67__ = type { i64 }
%struct.TYPE_66__ = type { i8*, i8* }
%struct.TYPE_63__ = type { i32, i32, %struct.bsg_job_data*, i32, %struct.TYPE_53__, i32, %struct.TYPE_61__*, %struct.lpfc_vport* }
%struct.TYPE_53__ = type { %struct.TYPE_52__, %struct.TYPE_61__ }
%struct.TYPE_52__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { %struct.lpfc_mbx_sli4_config }
%struct.lpfc_mbx_sli4_config = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { %struct.READ_EVENT_LOG_VAR }
%struct.lpfc_dmabuf = type { i64, i64 }
%struct.TYPE_64__ = type { i32, i32, i32 }
%struct.fc_bsg_reply = type { i64 }
%struct.fc_bsg_request = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i64 }
%struct.lpfc_vport = type { i32 }
%struct.dfc_mbox_req = type { i32, i32, i32 }
%struct.lpfc_mbx_nembed_cmd = type { %struct.TYPE_56__* }
%struct.TYPE_56__ = type { i64, i8*, i8* }
%struct.ulp_bde64 = type { i8*, i8*, %struct.TYPE_49__ }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32 }

@BSG_MBOX_SIZE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@LPFC_BLOCK_MGMT_IO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"2727 Failed allocation of dd_data\0A\00", align 1
@OWN_HOST = common dso_local global i32 0, align 4
@MBX_DUMP_MEMORY = common dso_local global i64 0, align 8
@MBX_RESTART = common dso_local global i64 0, align 8
@MBX_WRITE_VPARMS = common dso_local global i64 0, align 8
@MBX_WRITE_WWN = common dso_local global i64 0, align 8
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"2797 mbox: Issued mailbox cmd 0x%x while in stopped state.\0A\00", align 1
@MBX_RUN_BIU_DIAG64 = common dso_local global i64 0, align 8
@MBX_READ_EVENT_LOG = common dso_local global i64 0, align 8
@lpfc_event_log = common dso_local global i32 0, align 4
@DMP_WELL_KNOWN = common dso_local global i64 0, align 8
@MBX_UPDATE_CFG = common dso_local global i64 0, align 8
@MBX_SLI4_CONFIG = common dso_local global i64 0, align 8
@lpfc_mbox_hdr_emb = common dso_local global i32 0, align 4
@lpfc_bsg_issue_mbox_cmpl = common dso_local global i32 0, align 4
@TYPE_MBOX = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.bsg_job*, %struct.lpfc_vport*)* @lpfc_bsg_issue_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_issue_mbox(%struct.lpfc_hba* %0, %struct.bsg_job* %1, %struct.lpfc_vport* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_hba*, align 8
  %6 = alloca %struct.bsg_job*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.fc_bsg_request*, align 8
  %9 = alloca %struct.fc_bsg_reply*, align 8
  %10 = alloca %struct.TYPE_63__*, align 8
  %11 = alloca %struct.TYPE_61__*, align 8
  %12 = alloca %struct.TYPE_61__*, align 8
  %13 = alloca %struct.bsg_job_data*, align 8
  %14 = alloca %struct.lpfc_dmabuf*, align 8
  %15 = alloca %struct.dfc_mbox_req*, align 8
  %16 = alloca %struct.READ_EVENT_LOG_VAR*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.lpfc_mbx_sli4_config*, align 8
  %21 = alloca %struct.lpfc_mbx_nembed_cmd*, align 8
  %22 = alloca %struct.ulp_bde64*, align 8
  %23 = alloca %struct.TYPE_61__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_61__*, align 8
  %26 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %5, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %6, align 8
  store %struct.lpfc_vport* %2, %struct.lpfc_vport** %7, align 8
  %27 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %28 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %27, i32 0, i32 4
  %29 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %28, align 8
  store %struct.fc_bsg_request* %29, %struct.fc_bsg_request** %8, align 8
  %30 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %31 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %30, i32 0, i32 3
  %32 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %31, align 8
  store %struct.fc_bsg_reply* %32, %struct.fc_bsg_reply** %9, align 8
  store %struct.TYPE_63__* null, %struct.TYPE_63__** %10, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %12, align 8
  store %struct.bsg_job_data* null, %struct.bsg_job_data** %13, align 8
  store %struct.lpfc_dmabuf* null, %struct.lpfc_dmabuf** %14, align 8
  store %struct.TYPE_61__* null, %struct.TYPE_61__** %23, align 8
  store i32 0, i32* %24, align 4
  %33 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %34 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %36 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %3
  %42 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %43 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %3
  %49 = load i32, i32* @ERANGE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %24, align 4
  br label %714

51:                                               ; preds = %41
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @LPFC_BLOCK_MGMT_IO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %24, align 4
  br label %714

62:                                               ; preds = %51
  %63 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %8, align 8
  %64 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.dfc_mbox_req*
  store %struct.dfc_mbox_req* %68, %struct.dfc_mbox_req** %15, align 8
  %69 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %70 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %74, 8
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %86, label %77

77:                                               ; preds = %62
  %78 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %79 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %83 = sext i32 %82 to i64
  %84 = udiv i64 %83, 8
  %85 = icmp ugt i64 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %77, %62
  %87 = load i32, i32* @ERANGE, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %24, align 4
  br label %714

89:                                               ; preds = %77
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %91 = call %struct.lpfc_dmabuf* @lpfc_bsg_dma_page_alloc(%struct.lpfc_hba* %90)
  store %struct.lpfc_dmabuf* %91, %struct.lpfc_dmabuf** %14, align 8
  %92 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %93 = icmp ne %struct.lpfc_dmabuf* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %96 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94, %89
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %24, align 4
  br label %714

102:                                              ; preds = %94
  %103 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %104 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.TYPE_61__*
  store %struct.TYPE_61__* %106, %struct.TYPE_61__** %12, align 8
  %107 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %108 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %26, align 8
  %112 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %113 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %117 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %121 = load i64, i64* %26, align 8
  %122 = call i32 @sg_copy_to_buffer(i32 %115, i32 %119, %struct.TYPE_61__* %120, i64 %121)
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %124 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @LPFC_SLI_REV4, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %102
  %129 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %130 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %131 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %132 = call i32 @lpfc_bsg_handle_sli_cfg_ext(%struct.lpfc_hba* %129, %struct.bsg_job* %130, %struct.lpfc_dmabuf* %131)
  store i32 %132, i32* %24, align 4
  %133 = load i32, i32* %24, align 4
  %134 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %729

137:                                              ; preds = %128
  %138 = load i32, i32* %24, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %714

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141, %102
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %144 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %146 = call i32 @lpfc_bsg_check_cmd_access(%struct.lpfc_hba* %143, %struct.TYPE_61__* %144, %struct.lpfc_vport* %145)
  store i32 %146, i32* %24, align 4
  %147 = load i32, i32* %24, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %714

150:                                              ; preds = %142
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call %struct.bsg_job_data* @kmalloc(i32 64, i32 %151)
  store %struct.bsg_job_data* %152, %struct.bsg_job_data** %13, align 8
  %153 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %154 = icmp ne %struct.bsg_job_data* %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %150
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %157 = load i32, i32* @KERN_WARNING, align 4
  %158 = load i32, i32* @LOG_LIBDFC, align 4
  %159 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %156, i32 %157, i32 %158, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %24, align 4
  br label %714

162:                                              ; preds = %150
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %164 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call %struct.TYPE_63__* @mempool_alloc(i32 %165, i32 %166)
  store %struct.TYPE_63__* %167, %struct.TYPE_63__** %10, align 8
  %168 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %169 = icmp ne %struct.TYPE_63__* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %162
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %24, align 4
  br label %714

173:                                              ; preds = %162
  %174 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %175 = call i32 @memset(%struct.TYPE_63__* %174, i32 0, i32 144)
  %176 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %177, i32 0, i32 1
  store %struct.TYPE_61__* %178, %struct.TYPE_61__** %11, align 8
  %179 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %180 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %181 = call i32 @memcpy(%struct.TYPE_61__* %179, %struct.TYPE_61__* %180, i32 88)
  %182 = load i32, i32* @OWN_HOST, align 4
  %183 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %186 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %186, i32 0, i32 7
  store %struct.lpfc_vport* %185, %struct.lpfc_vport** %187, align 8
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %189 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %188, i32 0, i32 3
  %190 = load %struct.TYPE_65__*, %struct.TYPE_65__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %226

194:                                              ; preds = %173
  %195 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @MBX_DUMP_MEMORY, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %226

200:                                              ; preds = %194
  %201 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @MBX_RESTART, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %226

206:                                              ; preds = %200
  %207 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @MBX_WRITE_VPARMS, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %206
  %213 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @MBX_WRITE_WWN, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %212
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %220 = load i32, i32* @KERN_WARNING, align 4
  %221 = load i32, i32* @LOG_MBOX, align 4
  %222 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %219, i32 %220, i32 %221, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %224)
  br label %226

226:                                              ; preds = %218, %212, %206, %200, %194, %173
  %227 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %228 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %233 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %264

236:                                              ; preds = %231, %226
  %237 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  store %struct.TYPE_61__* %237, %struct.TYPE_61__** %25, align 8
  %238 = load %struct.TYPE_61__*, %struct.TYPE_61__** %25, align 8
  %239 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %238, i64 88
  store %struct.TYPE_61__* %239, %struct.TYPE_61__** %23, align 8
  %240 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %241 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %241, i32 0, i32 6
  store %struct.TYPE_61__* %240, %struct.TYPE_61__** %242, align 8
  %243 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %244 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 %246, 8
  %248 = trunc i64 %247 to i32
  %249 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %252 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = mul i64 %254, 8
  %256 = trunc i64 %255 to i32
  %257 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  %259 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %260 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %236, %231
  %265 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %266 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @MBX_RUN_BIU_DIAG64, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %366

270:                                              ; preds = %264
  %271 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %272, i32 0, i32 0
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %17, align 8
  %277 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %278, i32 0, i32 0
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 4
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %18, align 8
  %283 = load i64, i64* %17, align 8
  %284 = load i64, i64* %18, align 8
  %285 = icmp sgt i64 %283, %284
  br i1 %285, label %292, label %286

286:                                              ; preds = %270
  %287 = load i64, i64* %17, align 8
  %288 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %289 = sext i32 %288 to i64
  %290 = sub i64 %289, 88
  %291 = icmp ugt i64 %287, %290
  br i1 %291, label %292, label %295

292:                                              ; preds = %286, %270
  %293 = load i32, i32* @ERANGE, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %24, align 4
  br label %714

295:                                              ; preds = %286
  %296 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %297 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = add i64 %298, 88
  %300 = call i8* @putPaddrHigh(i64 %299)
  %301 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %302 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %306, i32 0, i32 2
  store i8* %300, i8** %307, align 8
  %308 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %309 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = add i64 %310, 88
  %312 = call i8* @putPaddrLow(i64 %311)
  %313 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %318, i32 0, i32 1
  store i8* %312, i8** %319, align 8
  %320 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %321 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = add i64 %322, 88
  %324 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add i64 %323, %333
  %335 = call i8* @putPaddrHigh(i64 %334)
  %336 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %337, i32 0, i32 4
  %339 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %341, i32 0, i32 1
  store i8* %335, i8** %342, align 8
  %343 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %344 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %345, 88
  %347 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = add i64 %346, %356
  %358 = call i8* @putPaddrLow(i64 %357)
  %359 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %360, i32 0, i32 4
  %362 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %364, i32 0, i32 0
  store i8* %358, i8** %365, align 8
  br label %592

366:                                              ; preds = %264
  %367 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* @MBX_READ_EVENT_LOG, align 8
  %371 = icmp eq i64 %369, %370
  br i1 %371, label %372, label %420

372:                                              ; preds = %366
  %373 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %374 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %374, i32 0, i32 3
  store %struct.READ_EVENT_LOG_VAR* %375, %struct.READ_EVENT_LOG_VAR** %16, align 8
  %376 = load %struct.READ_EVENT_LOG_VAR*, %struct.READ_EVENT_LOG_VAR** %16, align 8
  %377 = getelementptr inbounds %struct.READ_EVENT_LOG_VAR, %struct.READ_EVENT_LOG_VAR* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  store i64 %381, i64* %18, align 8
  %382 = load i32, i32* @lpfc_event_log, align 4
  %383 = load %struct.READ_EVENT_LOG_VAR*, %struct.READ_EVENT_LOG_VAR** %16, align 8
  %384 = call i64 @bf_get(i32 %382, %struct.READ_EVENT_LOG_VAR* %383)
  store i64 %384, i64* %19, align 8
  %385 = load i64, i64* %18, align 8
  %386 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %387 = sext i32 %386 to i64
  %388 = sub i64 %387, 88
  %389 = icmp ugt i64 %385, %388
  br i1 %389, label %390, label %393

390:                                              ; preds = %372
  %391 = load i32, i32* @ERANGE, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %24, align 4
  br label %714

393:                                              ; preds = %372
  %394 = load i64, i64* %19, align 8
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %419

396:                                              ; preds = %393
  %397 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %398 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %397, i32 0, i32 0
  %399 = load i64, i64* %398, align 8
  %400 = add i64 %399, 88
  %401 = call i8* @putPaddrLow(i64 %400)
  %402 = ptrtoint i8* %401 to i64
  %403 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %404 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %404, i32 0, i32 0
  %406 = load i64*, i64** %405, align 8
  %407 = getelementptr inbounds i64, i64* %406, i64 3
  store i64 %402, i64* %407, align 8
  %408 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %409 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = add i64 %410, 88
  %412 = call i8* @putPaddrHigh(i64 %411)
  %413 = ptrtoint i8* %412 to i64
  %414 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %415 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %414, i32 0, i32 1
  %416 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %415, i32 0, i32 0
  %417 = load i64*, i64** %416, align 8
  %418 = getelementptr inbounds i64, i64* %417, i64 4
  store i64 %413, i64* %418, align 8
  br label %419

419:                                              ; preds = %396, %393
  br label %591

420:                                              ; preds = %366
  %421 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %422 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @LPFC_SLI_REV4, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %590

426:                                              ; preds = %420
  %427 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load i64, i64* @MBX_DUMP_MEMORY, align 8
  %431 = icmp eq i64 %429, %430
  br i1 %431, label %432, label %475

432:                                              ; preds = %426
  %433 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load i64, i64* @DMP_WELL_KNOWN, align 8
  %439 = icmp ne i64 %437, %438
  br i1 %439, label %440, label %475

440:                                              ; preds = %432
  %441 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %442 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %442, i32 0, i32 0
  %444 = load i64*, i64** %443, align 8
  %445 = getelementptr inbounds i64, i64* %444, i64 2
  %446 = load i64, i64* %445, align 8
  store i64 %446, i64* %18, align 8
  %447 = load i64, i64* %18, align 8
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %440
  %450 = load i32, i32* @ERANGE, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %24, align 4
  br label %714

452:                                              ; preds = %440
  %453 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %454 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = add i64 %455, 88
  %457 = call i8* @putPaddrLow(i64 %456)
  %458 = ptrtoint i8* %457 to i64
  %459 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %460 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %460, i32 0, i32 0
  %462 = load i64*, i64** %461, align 8
  %463 = getelementptr inbounds i64, i64* %462, i64 3
  store i64 %458, i64* %463, align 8
  %464 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %465 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = add i64 %466, 88
  %468 = call i8* @putPaddrHigh(i64 %467)
  %469 = ptrtoint i8* %468 to i64
  %470 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %471 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %471, i32 0, i32 0
  %473 = load i64*, i64** %472, align 8
  %474 = getelementptr inbounds i64, i64* %473, i64 4
  store i64 %469, i64* %474, align 8
  br label %589

475:                                              ; preds = %432, %426
  %476 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %477 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @MBX_UPDATE_CFG, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %523

481:                                              ; preds = %475
  %482 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %483 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %484, i32 0, i32 0
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %523

488:                                              ; preds = %481
  %489 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %490 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %490, i32 0, i32 0
  %492 = load i64*, i64** %491, align 8
  %493 = getelementptr inbounds i64, i64* %492, i64 4
  %494 = bitcast i64* %493 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %494, %struct.ulp_bde64** %22, align 8
  %495 = load %struct.ulp_bde64*, %struct.ulp_bde64** %22, align 8
  %496 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = sext i32 %499 to i64
  %501 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %502 = sext i32 %501 to i64
  %503 = sub i64 %502, 88
  %504 = icmp ugt i64 %500, %503
  br i1 %504, label %505, label %508

505:                                              ; preds = %488
  %506 = load i32, i32* @ERANGE, align 4
  %507 = sub nsw i32 0, %506
  store i32 %507, i32* %24, align 4
  br label %714

508:                                              ; preds = %488
  %509 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %510 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = add i64 %511, 88
  %513 = call i8* @putPaddrHigh(i64 %512)
  %514 = load %struct.ulp_bde64*, %struct.ulp_bde64** %22, align 8
  %515 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %514, i32 0, i32 1
  store i8* %513, i8** %515, align 8
  %516 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %517 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %516, i32 0, i32 0
  %518 = load i64, i64* %517, align 8
  %519 = add i64 %518, 88
  %520 = call i8* @putPaddrLow(i64 %519)
  %521 = load %struct.ulp_bde64*, %struct.ulp_bde64** %22, align 8
  %522 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %521, i32 0, i32 0
  store i8* %520, i8** %522, align 8
  br label %588

523:                                              ; preds = %481, %475
  %524 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %525 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = load i64, i64* @MBX_SLI4_CONFIG, align 8
  %528 = icmp eq i64 %526, %527
  br i1 %528, label %529, label %587

529:                                              ; preds = %523
  %530 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %531 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %530, i32 0, i32 4
  %532 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %533, i32 0, i32 0
  store %struct.lpfc_mbx_sli4_config* %534, %struct.lpfc_mbx_sli4_config** %20, align 8
  %535 = load i32, i32* @lpfc_mbox_hdr_emb, align 4
  %536 = load %struct.lpfc_mbx_sli4_config*, %struct.lpfc_mbx_sli4_config** %20, align 8
  %537 = getelementptr inbounds %struct.lpfc_mbx_sli4_config, %struct.lpfc_mbx_sli4_config* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %537, i32 0, i32 0
  %539 = call i64 @bf_get(i32 %535, %struct.READ_EVENT_LOG_VAR* %538)
  %540 = icmp ne i64 %539, 0
  br i1 %540, label %586, label %541

541:                                              ; preds = %529
  %542 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %543 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %543, i32 0, i32 0
  %545 = load i64*, i64** %544, align 8
  %546 = getelementptr inbounds i64, i64* %545, i64 0
  %547 = bitcast i64* %546 to %struct.lpfc_mbx_nembed_cmd*
  store %struct.lpfc_mbx_nembed_cmd* %547, %struct.lpfc_mbx_nembed_cmd** %21, align 8
  %548 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %21, align 8
  %549 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %548, i32 0, i32 0
  %550 = load %struct.TYPE_56__*, %struct.TYPE_56__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %550, i64 0
  %552 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %18, align 8
  %554 = load i64, i64* %18, align 8
  %555 = icmp eq i64 %554, 0
  br i1 %555, label %562, label %556

556:                                              ; preds = %541
  %557 = load i64, i64* %18, align 8
  %558 = load i32, i32* @BSG_MBOX_SIZE, align 4
  %559 = sext i32 %558 to i64
  %560 = sub i64 %559, 88
  %561 = icmp ugt i64 %557, %560
  br i1 %561, label %562, label %565

562:                                              ; preds = %556, %541
  %563 = load i32, i32* @ERANGE, align 4
  %564 = sub nsw i32 0, %563
  store i32 %564, i32* %24, align 4
  br label %714

565:                                              ; preds = %556
  %566 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %567 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = add i64 %568, 88
  %570 = call i8* @putPaddrHigh(i64 %569)
  %571 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %21, align 8
  %572 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %571, i32 0, i32 0
  %573 = load %struct.TYPE_56__*, %struct.TYPE_56__** %572, align 8
  %574 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %573, i64 0
  %575 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %574, i32 0, i32 2
  store i8* %570, i8** %575, align 8
  %576 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %577 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = add i64 %578, 88
  %580 = call i8* @putPaddrLow(i64 %579)
  %581 = load %struct.lpfc_mbx_nembed_cmd*, %struct.lpfc_mbx_nembed_cmd** %21, align 8
  %582 = getelementptr inbounds %struct.lpfc_mbx_nembed_cmd, %struct.lpfc_mbx_nembed_cmd* %581, i32 0, i32 0
  %583 = load %struct.TYPE_56__*, %struct.TYPE_56__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %583, i64 0
  %585 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %584, i32 0, i32 1
  store i8* %580, i8** %585, align 8
  br label %586

586:                                              ; preds = %565, %529
  br label %587

587:                                              ; preds = %586, %523
  br label %588

588:                                              ; preds = %587, %508
  br label %589

589:                                              ; preds = %588, %452
  br label %590

590:                                              ; preds = %589, %420
  br label %591

591:                                              ; preds = %590, %419
  br label %592

592:                                              ; preds = %591, %295
  %593 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %594 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %595 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %595, i32 0, i32 0
  %597 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %596, i32 0, i32 6
  store %struct.lpfc_dmabuf* %593, %struct.lpfc_dmabuf** %597, align 8
  %598 = load i32, i32* @lpfc_bsg_issue_mbox_cmpl, align 4
  %599 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %600 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %599, i32 0, i32 3
  store i32 %598, i32* %600, align 8
  %601 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %602 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %603 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %602, i32 0, i32 2
  store %struct.bsg_job_data* %601, %struct.bsg_job_data** %603, align 8
  %604 = load i32, i32* @TYPE_MBOX, align 4
  %605 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %606 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %605, i32 0, i32 2
  store i32 %604, i32* %606, align 8
  %607 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %608 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %609 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %608, i32 0, i32 1
  store %struct.bsg_job* %607, %struct.bsg_job** %609, align 8
  %610 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %611 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %612 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %611, i32 0, i32 0
  %613 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %613, i32 0, i32 5
  store %struct.TYPE_63__* %610, %struct.TYPE_63__** %614, align 8
  %615 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %616 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %617 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %618, i32 0, i32 4
  store %struct.TYPE_61__* %615, %struct.TYPE_61__** %619, align 8
  %620 = load %struct.TYPE_61__*, %struct.TYPE_61__** %23, align 8
  %621 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %622 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %623, i32 0, i32 3
  store %struct.TYPE_61__* %620, %struct.TYPE_61__** %624, align 8
  %625 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %626 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %625, i32 0, i32 2
  %627 = load i32, i32* %626, align 4
  %628 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %629 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %630, i32 0, i32 2
  store i32 %627, i32* %631, align 8
  %632 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %633 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 4
  %635 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %636 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %635, i32 0, i32 0
  %637 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %637, i32 0, i32 0
  store i32 %634, i32* %638, align 8
  %639 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %15, align 8
  %640 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %643 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %644, i32 0, i32 1
  store i32 %641, i32* %645, align 4
  %646 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %647 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %648 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %647, i32 0, i32 1
  store %struct.bsg_job_data* %646, %struct.bsg_job_data** %648, align 8
  %649 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %650 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %653 = and i32 %651, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %663, label %655

655:                                              ; preds = %592
  %656 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %657 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %656, i32 0, i32 2
  %658 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 4
  %660 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %661 = and i32 %659, %660
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %700, label %663

663:                                              ; preds = %655, %592
  %664 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %665 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %666 = load i32, i32* @MBX_POLL, align 4
  %667 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %664, %struct.TYPE_63__* %665, i32 %666)
  store i32 %667, i32* %24, align 4
  %668 = load i32, i32* %24, align 4
  %669 = load i32, i32* @MBX_SUCCESS, align 4
  %670 = icmp ne i32 %668, %669
  br i1 %670, label %671, label %683

671:                                              ; preds = %663
  %672 = load i32, i32* %24, align 4
  %673 = load i32, i32* @MBX_TIMEOUT, align 4
  %674 = icmp eq i32 %672, %673
  br i1 %674, label %675, label %678

675:                                              ; preds = %671
  %676 = load i32, i32* @ETIME, align 4
  %677 = sub nsw i32 0, %676
  br label %681

678:                                              ; preds = %671
  %679 = load i32, i32* @ENODEV, align 4
  %680 = sub nsw i32 0, %679
  br label %681

681:                                              ; preds = %678, %675
  %682 = phi i32 [ %677, %675 ], [ %680, %678 ]
  store i32 %682, i32* %24, align 4
  br label %714

683:                                              ; preds = %663
  %684 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %685 = load %struct.TYPE_61__*, %struct.TYPE_61__** %11, align 8
  %686 = call i32 @memcpy(%struct.TYPE_61__* %684, %struct.TYPE_61__* %685, i32 88)
  %687 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %688 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %687, i32 0, i32 0
  %689 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %688, i32 0, i32 2
  %690 = load i32, i32* %689, align 8
  %691 = load %struct.bsg_job*, %struct.bsg_job** %6, align 8
  %692 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %692, i32 0, i32 1
  %694 = load i32, i32* %693, align 4
  %695 = load %struct.TYPE_61__*, %struct.TYPE_61__** %12, align 8
  %696 = load i64, i64* %26, align 8
  %697 = call i64 @sg_copy_from_buffer(i32 %690, i32 %694, %struct.TYPE_61__* %695, i64 %696)
  %698 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %9, align 8
  %699 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %698, i32 0, i32 0
  store i64 %697, i64* %699, align 8
  store i32 0, i32* %24, align 4
  br label %714

700:                                              ; preds = %655
  %701 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %702 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %703 = load i32, i32* @MBX_NOWAIT, align 4
  %704 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %701, %struct.TYPE_63__* %702, i32 %703)
  store i32 %704, i32* %24, align 4
  %705 = load i32, i32* %24, align 4
  %706 = load i32, i32* @MBX_SUCCESS, align 4
  %707 = icmp eq i32 %705, %706
  br i1 %707, label %712, label %708

708:                                              ; preds = %700
  %709 = load i32, i32* %24, align 4
  %710 = load i32, i32* @MBX_BUSY, align 4
  %711 = icmp eq i32 %709, %710
  br i1 %711, label %712, label %713

712:                                              ; preds = %708, %700
  store i32 1, i32* %4, align 4
  br label %731

713:                                              ; preds = %708
  br label %714

714:                                              ; preds = %713, %683, %681, %562, %505, %449, %390, %292, %170, %155, %149, %140, %99, %86, %59, %48
  %715 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %716 = icmp ne %struct.TYPE_63__* %715, null
  br i1 %716, label %717, label %723

717:                                              ; preds = %714
  %718 = load %struct.TYPE_63__*, %struct.TYPE_63__** %10, align 8
  %719 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %720 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %719, i32 0, i32 1
  %721 = load i32, i32* %720, align 8
  %722 = call i32 @mempool_free(%struct.TYPE_63__* %718, i32 %721)
  br label %723

723:                                              ; preds = %717, %714
  %724 = load %struct.lpfc_hba*, %struct.lpfc_hba** %5, align 8
  %725 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %14, align 8
  %726 = call i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba* %724, %struct.lpfc_dmabuf* %725)
  %727 = load %struct.bsg_job_data*, %struct.bsg_job_data** %13, align 8
  %728 = call i32 @kfree(%struct.bsg_job_data* %727)
  br label %729

729:                                              ; preds = %723, %136
  %730 = load i32, i32* %24, align 4
  store i32 %730, i32* %4, align 4
  br label %731

731:                                              ; preds = %729, %712
  %732 = load i32, i32* %4, align 4
  ret i32 %732
}

declare dso_local %struct.lpfc_dmabuf* @lpfc_bsg_dma_page_alloc(%struct.lpfc_hba*) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.TYPE_61__*, i64) #1

declare dso_local i32 @lpfc_bsg_handle_sli_cfg_ext(%struct.lpfc_hba*, %struct.bsg_job*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_bsg_check_cmd_access(%struct.lpfc_hba*, %struct.TYPE_61__*, %struct.lpfc_vport*) #1

declare dso_local %struct.bsg_job_data* @kmalloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_63__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_63__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_61__*, %struct.TYPE_61__*, i32) #1

declare dso_local i8* @putPaddrHigh(i64) #1

declare dso_local i8* @putPaddrLow(i64) #1

declare dso_local i64 @bf_get(i32, %struct.READ_EVENT_LOG_VAR*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_63__*, i32) #1

declare dso_local i64 @sg_copy_from_buffer(i32, i32, %struct.TYPE_61__*, i64) #1

declare dso_local i32 @mempool_free(%struct.TYPE_63__*, i32) #1

declare dso_local i32 @lpfc_bsg_dma_page_free(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
