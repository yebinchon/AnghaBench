; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_link_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_link_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { i32, i32, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.fc_bsg_request = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.lpfc_mbx_run_link_diag_test }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.lpfc_mbx_run_link_diag_test = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.sli4_link_diag = type { i32, i32, i32, i32 }
%union.lpfc_sli4_cfg_shdr = type { i32 }
%struct.diag_status = type { i32, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"3013 Received LINK DIAG TEST request  size:%d below the minimum size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_MBOX_SUBSYSTEM_FCOE = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_link_num = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_link_type = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_test_id = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_loops = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_test_ver = common dso_local global i32 0, align 4
@lpfc_mbx_run_diag_test_err_act = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"3010 Run link diag test mailbox failed with mbx_status x%x status x%x, add_status x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"3012 Received Run link diag test reply below minimum size (%d): reply_len:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @lpfc_sli4_bsg_link_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_link_diag_test(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.fc_bsg_request*, align 8
  %4 = alloca %struct.fc_bsg_reply*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.sli4_link_diag*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.lpfc_mbx_run_link_diag_test*, align 8
  %13 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.diag_status*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %19 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %20 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %19, i32 0, i32 3
  %21 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %20, align 8
  store %struct.fc_bsg_request* %21, %struct.fc_bsg_request** %3, align 8
  %22 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %23 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %22, i32 0, i32 2
  %24 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %23, align 8
  store %struct.fc_bsg_reply* %24, %struct.fc_bsg_reply** %4, align 8
  store i32 0, i32* %18, align 4
  %25 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %26 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %25)
  store %struct.Scsi_Host* %26, %struct.Scsi_Host** %5, align 8
  %27 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %28 = icmp ne %struct.Scsi_Host* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %18, align 4
  br label %267

32:                                               ; preds = %1
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %34 = call %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host* %33)
  store %struct.lpfc_vport* %34, %struct.lpfc_vport** %6, align 8
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %36 = icmp ne %struct.lpfc_vport* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %18, align 4
  br label %267

40:                                               ; preds = %32
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 0
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %42, align 8
  store %struct.lpfc_hba* %43, %struct.lpfc_hba** %7, align 8
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %45 = icmp ne %struct.lpfc_hba* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %18, align 4
  br label %267

49:                                               ; preds = %40
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %51 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @LPFC_SLI_REV4, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %18, align 4
  br label %267

58:                                               ; preds = %49
  %59 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %61 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = call i64 @bf_get(i32 %59, i32* %62)
  %64 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %18, align 4
  br label %267

69:                                               ; preds = %58
  %70 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %71 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 24
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %77 = load i32, i32* @KERN_WARNING, align 4
  %78 = load i32, i32* @LOG_LIBDFC, align 4
  %79 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %80 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %81, i32 24)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %18, align 4
  br label %267

85:                                               ; preds = %69
  %86 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %87 = call i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %86)
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %267

91:                                               ; preds = %85
  %92 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %3, align 8
  %93 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.sli4_link_diag*
  store %struct.sli4_link_diag* %97, %struct.sli4_link_diag** %9, align 8
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %99 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %98, i32 1)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %267

103:                                              ; preds = %91
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call %struct.TYPE_21__* @mempool_alloc(i32 %106, i32 %107)
  store %struct.TYPE_21__* %108, %struct.TYPE_21__** %8, align 8
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %110 = icmp ne %struct.TYPE_21__* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %103
  br label %253

112:                                              ; preds = %103
  store i8* null, i8** %10, align 8
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %115 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_FCOE, align 4
  %116 = load i32, i32* @LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE, align 4
  %117 = load i8*, i8** %10, align 8
  %118 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %119 = call i8* @lpfc_sli4_config(%struct.lpfc_hba* %113, %struct.TYPE_21__* %114, i32 %115, i32 %116, i8* %117, i32 %118)
  store i8* %119, i8** %11, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = icmp ne i8* %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %253

124:                                              ; preds = %112
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 1
  store %struct.lpfc_mbx_run_link_diag_test* %129, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %130 = load i32, i32* @lpfc_mbx_run_diag_test_link_num, align 4
  %131 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %132 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @bf_set(i32 %130, i32* %133, i32 %138)
  %140 = load i32, i32* @lpfc_mbx_run_diag_test_link_type, align 4
  %141 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %142 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 0
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @bf_set(i32 %140, i32* %143, i32 %148)
  %150 = load i32, i32* @lpfc_mbx_run_diag_test_test_id, align 4
  %151 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %152 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %9, align 8
  %155 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @bf_set(i32 %150, i32* %153, i32 %156)
  %158 = load i32, i32* @lpfc_mbx_run_diag_test_loops, align 4
  %159 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %160 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 0
  %162 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %9, align 8
  %163 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @bf_set(i32 %158, i32* %161, i32 %164)
  %166 = load i32, i32* @lpfc_mbx_run_diag_test_test_ver, align 4
  %167 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %168 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %9, align 8
  %171 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @bf_set(i32 %166, i32* %169, i32 %172)
  %174 = load i32, i32* @lpfc_mbx_run_diag_test_err_act, align 4
  %175 = load %struct.lpfc_mbx_run_link_diag_test*, %struct.lpfc_mbx_run_link_diag_test** %12, align 8
  %176 = getelementptr inbounds %struct.lpfc_mbx_run_link_diag_test, %struct.lpfc_mbx_run_link_diag_test* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load %struct.sli4_link_diag*, %struct.sli4_link_diag** %9, align 8
  %179 = getelementptr inbounds %struct.sli4_link_diag, %struct.sli4_link_diag* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @bf_set(i32 %174, i32* %177, i32 %180)
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %184 = load i32, i32* @MBX_POLL, align 4
  %185 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %182, %struct.TYPE_21__* %183, i32 %184)
  store i32 %185, i32* %17, align 4
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = bitcast i32* %192 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %193, %union.lpfc_sli4_cfg_shdr** %13, align 8
  %194 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %195 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %13, align 8
  %196 = bitcast %union.lpfc_sli4_cfg_shdr* %195 to i32*
  %197 = call i64 @bf_get(i32 %194, i32* %196)
  %198 = inttoptr i64 %197 to i8*
  store i8* %198, i8** %14, align 8
  %199 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %200 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %13, align 8
  %201 = bitcast %union.lpfc_sli4_cfg_shdr* %200 to i32*
  %202 = call i64 @bf_get(i32 %199, i32* %201)
  %203 = inttoptr i64 %202 to i8*
  store i8* %203, i8** %15, align 8
  %204 = load i8*, i8** %14, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %124
  %207 = load i8*, i8** %15, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i32, i32* %17, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %221

212:                                              ; preds = %209, %206, %124
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %214 = load i32, i32* @KERN_ERR, align 4
  %215 = load i32, i32* @LOG_LIBDFC, align 4
  %216 = load i32, i32* %17, align 4
  %217 = load i8*, i8** %14, align 8
  %218 = ptrtoint i8* %217 to i32
  %219 = load i8*, i8** %15, align 8
  %220 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %213, i32 %214, i32 %215, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %218, i8* %219)
  br label %221

221:                                              ; preds = %212, %209
  %222 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %223 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to %struct.diag_status*
  store %struct.diag_status* %227, %struct.diag_status** %16, align 8
  %228 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %229 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = icmp ult i64 %231, 32
  br i1 %232, label %233, label %243

233:                                              ; preds = %221
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %235 = load i32, i32* @KERN_WARNING, align 4
  %236 = load i32, i32* @LOG_LIBDFC, align 4
  %237 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %238 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %234, i32 %235, i32 %236, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 32, i32 %239)
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %18, align 4
  br label %267

243:                                              ; preds = %221
  %244 = load i32, i32* %17, align 4
  %245 = load %struct.diag_status*, %struct.diag_status** %16, align 8
  %246 = getelementptr inbounds %struct.diag_status, %struct.diag_status* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = load i8*, i8** %14, align 8
  %248 = load %struct.diag_status*, %struct.diag_status** %16, align 8
  %249 = getelementptr inbounds %struct.diag_status, %struct.diag_status* %248, i32 0, i32 2
  store i8* %247, i8** %249, align 8
  %250 = load i8*, i8** %15, align 8
  %251 = load %struct.diag_status*, %struct.diag_status** %16, align 8
  %252 = getelementptr inbounds %struct.diag_status, %struct.diag_status* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %243, %123, %111
  %254 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %255 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %254, i32 0)
  store i32 %255, i32* %18, align 4
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %257 = icmp ne %struct.TYPE_21__* %256, null
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @mempool_free(%struct.TYPE_21__* %259, i32 %262)
  br label %264

264:                                              ; preds = %258, %253
  %265 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %266 = call i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %265)
  br label %267

267:                                              ; preds = %264, %233, %102, %90, %75, %66, %55, %46, %37, %29
  %268 = load i32, i32* %18, align 4
  %269 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %270 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 8
  %271 = load i32, i32* %18, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %267
  %274 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %275 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %276 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %4, align 8
  %279 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @bsg_job_done(%struct.bsg_job* %274, i32 %277, i32 %280)
  br label %282

282:                                              ; preds = %273, %267
  %283 = load i32, i32* %18, align 4
  ret i32 %283
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.lpfc_vport* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.TYPE_21__* @mempool_alloc(i32, i32) #1

declare dso_local i8* @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_21__*, i32, i32, i8*, i32) #1

declare dso_local i32 @bf_set(i32, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
