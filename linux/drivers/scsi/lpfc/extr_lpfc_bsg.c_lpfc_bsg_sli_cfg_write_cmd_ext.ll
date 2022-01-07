; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_sli_cfg_write_cmd_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_bsg_sli_cfg_write_cmd_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_20__, i32, %struct.TYPE_25__ }
%struct.TYPE_20__ = type { i32, i32, i32, %struct.lpfc_dmabuf*, i32, i32, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.bsg_job = type { %struct.bsg_job_data*, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.bsg_job_data = type { %struct.TYPE_19__, %struct.bsg_job*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.TYPE_21__*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.bsg_job_data*, i32, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_21__ }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64 }
%struct.lpfc_dmabuf = type { i64 }
%struct.dfc_mbox_req = type { i32, i32 }
%struct.lpfc_sli_config_mbox = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_26__ = type { i32 }

@SLI_CONFIG_NOT_HANDLED = common dso_local global i32 0, align 4
@nemb_mse = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_mse_cnt = common dso_local global i32 0, align 4
@LPFC_MBX_SLI_CONFIG_MAX_MSE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"2953 Failed SLI_CONFIG(mse) wr, ext_buf_cnt(%d) out of range(%d)\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"2949 Handled SLI_CONFIG(mse) wr, ext_buf_cnt:%d\0A\00", align 1
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@LPFC_MBX_SLI_CONFIG_MAX_HBD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"2954 Failed SLI_CONFIG(hbd) wr, ext_buf_cnt(%d) out of range(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"2950 Handled SLI_CONFIG(hbd) wr, ext_buf_cnt:%d\0A\00", align 1
@mbox_wr = common dso_local global i32 0, align 4
@dma_mbox = common dso_local global i32 0, align 4
@sta_pre_addr = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@sta_pos_addr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"2951 SLI_CONFIG(mse), buf[%d]-length:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"2952 SLI_CONFIG(hbd), buf[%d]-length:%d\0A\00", align 1
@lpfc_mbox_sli_config_ecmn_hbd_len = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i32 0, align 4
@lpfc_bsg_issue_write_mbox_ext_cmpl = common dso_local global i32 0, align 4
@TYPE_MBOX = common dso_local global i32 0, align 4
@LPFC_BSG_MBOX_PORT = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_SUCCESS = common dso_local global i32 0, align 4
@MBX_BUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [59 x i8] c"2955 Issued SLI_CONFIG ext-buffer mailbox command, rc:x%x\0A\00", align 1
@SLI_CONFIG_HANDLED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"2956 Failed to issue SLI_CONFIG ext-buffer mailbox command, rc:x%x\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.bsg_job*, i32, %struct.lpfc_dmabuf*)* @lpfc_bsg_sli_cfg_write_cmd_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bsg_sli_cfg_write_cmd_ext(%struct.lpfc_hba* %0, %struct.bsg_job* %1, i32 %2, %struct.lpfc_dmabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.bsg_job*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lpfc_dmabuf*, align 8
  %10 = alloca %struct.fc_bsg_request*, align 8
  %11 = alloca %struct.fc_bsg_reply*, align 8
  %12 = alloca %struct.dfc_mbox_req*, align 8
  %13 = alloca %struct.lpfc_sli_config_mbox*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bsg_job_data*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca %struct.TYPE_21__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %6, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.lpfc_dmabuf* %3, %struct.lpfc_dmabuf** %9, align 8
  %21 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 2
  %23 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %22, align 8
  store %struct.fc_bsg_request* %23, %struct.fc_bsg_request** %10, align 8
  %24 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %25 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %24, i32 0, i32 1
  %26 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %25, align 8
  store %struct.fc_bsg_reply* %26, %struct.fc_bsg_reply** %11, align 8
  store %struct.bsg_job_data* null, %struct.bsg_job_data** %15, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %16, align 8
  %27 = load i32, i32* @SLI_CONFIG_NOT_HANDLED, align 4
  store i32 %27, i32* %19, align 4
  %28 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %10, align 8
  %29 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.dfc_mbox_req*
  store %struct.dfc_mbox_req* %33, %struct.dfc_mbox_req** %12, align 8
  %34 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %35 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.lpfc_sli_config_mbox*
  store %struct.lpfc_sli_config_mbox* %37, %struct.lpfc_sli_config_mbox** %13, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @nemb_mse, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %4
  %42 = load i32, i32* @lpfc_mbox_hdr_mse_cnt, align 4
  %43 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %13, align 8
  %44 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 1
  %47 = call i32 @bsg_bf_get(i32 %42, i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_MSE, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %53 = load i32, i32* @KERN_ERR, align 4
  %54 = load i32, i32* @LOG_LIBDFC, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_MSE, align 4
  %57 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* @ERANGE, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %325

60:                                               ; preds = %41
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %62 = load i32, i32* @KERN_INFO, align 4
  %63 = load i32, i32* @LOG_LIBDFC, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %101

66:                                               ; preds = %4
  %67 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = call i64 @bf_get(i32 %67, i32* %70)
  %72 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %325

77:                                               ; preds = %66
  %78 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %13, align 8
  %79 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_HBD, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %77
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @LOG_LIBDFC, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @LPFC_MBX_SLI_CONFIG_MAX_HBD, align 4
  %92 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @ERANGE, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %325

95:                                               ; preds = %77
  %96 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %97 = load i32, i32* @KERN_INFO, align 4
  %98 = load i32, i32* @LOG_LIBDFC, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %60
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @mbox_wr, align 4
  %105 = load i32, i32* @dma_mbox, align 4
  %106 = load i32, i32* @sta_pre_addr, align 4
  %107 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %102, i32 %103, i32 %104, i32 %105, i32 %106, %struct.lpfc_dmabuf* %107, i32 %108)
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load i32, i32* @EPERM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %325

115:                                              ; preds = %101
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %119 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %120 = call i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba* %116, i32 %117, i32 0, %struct.lpfc_dmabuf* %118, %struct.lpfc_dmabuf* %119)
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @mbox_wr, align 4
  %124 = load i32, i32* @dma_mbox, align 4
  %125 = load i32, i32* @sta_pos_addr, align 4
  %126 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %127 = load i32, i32* %14, align 4
  %128 = call i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba* %121, i32 %122, i32 %123, i32 %124, i32 %125, %struct.lpfc_dmabuf* %126, i32 %127)
  store i32 1, i32* %20, align 4
  br label %129

129:                                              ; preds = %170, %115
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %173

133:                                              ; preds = %129
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @nemb_mse, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %139 = load i32, i32* @KERN_INFO, align 4
  %140 = load i32, i32* @LOG_LIBDFC, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %13, align 8
  %143 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %138, i32 %139, i32 %140, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %141, i32 %151)
  br label %169

153:                                              ; preds = %133
  %154 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %155 = load i32, i32* @KERN_INFO, align 4
  %156 = load i32, i32* @LOG_LIBDFC, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* @lpfc_mbox_sli_config_ecmn_hbd_len, align 4
  %159 = load %struct.lpfc_sli_config_mbox*, %struct.lpfc_sli_config_mbox** %13, align 8
  %160 = getelementptr inbounds %struct.lpfc_sli_config_mbox, %struct.lpfc_sli_config_mbox* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = call i32 @bsg_bf_get(i32 %158, i32* %166)
  %168 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %154, i32 %155, i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %157, i32 %167)
  br label %169

169:                                              ; preds = %153, %137
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %20, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %20, align 4
  br label %129

173:                                              ; preds = %129
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 8
  %178 = load i32, i32* @mbox_wr, align 4
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 6
  store i32 %178, i32* %181, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 4
  %186 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %12, align 8
  %187 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 5
  store i32 %188, i32* %191, align 4
  %192 = load %struct.dfc_mbox_req*, %struct.dfc_mbox_req** %12, align 8
  %193 = getelementptr inbounds %struct.dfc_mbox_req, %struct.dfc_mbox_req* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 4
  store i32 %194, i32* %197, align 8
  %198 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 3
  store %struct.lpfc_dmabuf* %198, %struct.lpfc_dmabuf** %201, align 8
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %300

204:                                              ; preds = %173
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call %struct.bsg_job_data* @kmalloc(i32 32, i32 %205)
  store %struct.bsg_job_data* %206, %struct.bsg_job_data** %15, align 8
  %207 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %208 = icmp ne %struct.bsg_job_data* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %19, align 4
  br label %312

212:                                              ; preds = %204
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = call %struct.TYPE_22__* @mempool_alloc(i32 %215, i32 %216)
  store %struct.TYPE_22__* %217, %struct.TYPE_22__** %16, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %219 = icmp ne %struct.TYPE_22__* %218, null
  br i1 %219, label %223, label %220

220:                                              ; preds = %212
  %221 = load i32, i32* @ENOMEM, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %19, align 4
  br label %312

223:                                              ; preds = %212
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %225 = call i32 @memset(%struct.TYPE_22__* %224, i32 0, i32 24)
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 0
  store %struct.TYPE_21__* %228, %struct.TYPE_21__** %17, align 8
  %229 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %9, align 8
  %230 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = inttoptr i64 %231 to i32*
  store i32* %232, i32** %18, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %234 = load i32*, i32** %18, align 8
  %235 = call i32 @memcpy(%struct.TYPE_21__* %233, i32* %234, i32 4)
  %236 = load i32, i32* @OWN_HOST, align 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %240 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* @lpfc_bsg_issue_write_mbox_ext_cmpl, align 4
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 8
  %247 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  store %struct.bsg_job_data* %247, %struct.bsg_job_data** %249, align 8
  %250 = load i32, i32* @TYPE_MBOX, align 4
  %251 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %252 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 8
  %253 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %254 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %255 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %254, i32 0, i32 1
  store %struct.bsg_job* %253, %struct.bsg_job** %255, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %257 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %258 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %259, i32 0, i32 1
  store %struct.TYPE_22__* %256, %struct.TYPE_22__** %260, align 8
  %261 = load i32*, i32** %18, align 8
  %262 = bitcast i32* %261 to %struct.TYPE_21__*
  %263 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %264 = getelementptr inbounds %struct.bsg_job_data, %struct.bsg_job_data* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %265, i32 0, i32 0
  store %struct.TYPE_21__* %262, %struct.TYPE_21__** %266, align 8
  %267 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %268 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %269 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %268, i32 0, i32 0
  store %struct.bsg_job_data* %267, %struct.bsg_job_data** %269, align 8
  %270 = load i32, i32* @LPFC_BSG_MBOX_PORT, align 4
  %271 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %272 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 2
  store i32 %270, i32* %273, align 8
  %274 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %276 = load i32, i32* @MBX_NOWAIT, align 4
  %277 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %274, %struct.TYPE_22__* %275, i32 %276)
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* @MBX_SUCCESS, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %223
  %282 = load i32, i32* %19, align 4
  %283 = load i32, i32* @MBX_BUSY, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %281, %223
  %286 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %287 = load i32, i32* @KERN_INFO, align 4
  %288 = load i32, i32* @LOG_LIBDFC, align 4
  %289 = load i32, i32* %19, align 4
  %290 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %286, i32 %287, i32 %288, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %291, i32* %5, align 4
  br label %325

292:                                              ; preds = %281
  %293 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %294 = load i32, i32* @KERN_ERR, align 4
  %295 = load i32, i32* @LOG_LIBDFC, align 4
  %296 = load i32, i32* %19, align 4
  %297 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %293, i32 %294, i32 %295, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* @EPIPE, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %19, align 4
  br label %312

300:                                              ; preds = %173
  %301 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %11, align 8
  %302 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %301, i32 0, i32 1
  store i64 0, i64* %302, align 8
  %303 = load %struct.bsg_job*, %struct.bsg_job** %7, align 8
  %304 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %11, align 8
  %305 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %11, align 8
  %308 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @bsg_job_done(%struct.bsg_job* %303, i64 %306, i32 %309)
  %311 = load i32, i32* @SLI_CONFIG_HANDLED, align 4
  store i32 %311, i32* %5, align 4
  br label %325

312:                                              ; preds = %292, %220, %209
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %314 = icmp ne %struct.TYPE_22__* %313, null
  br i1 %314, label %315, label %321

315:                                              ; preds = %312
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %317 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %318 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @mempool_free(%struct.TYPE_22__* %316, i32 %319)
  br label %321

321:                                              ; preds = %315, %312
  %322 = load %struct.bsg_job_data*, %struct.bsg_job_data** %15, align 8
  %323 = call i32 @kfree(%struct.bsg_job_data* %322)
  %324 = load i32, i32* %19, align 4
  store i32 %324, i32* %5, align 4
  br label %325

325:                                              ; preds = %321, %300, %285, %112, %86, %74, %51
  %326 = load i32, i32* %5, align 4
  ret i32 %326
}

declare dso_local i32 @bsg_bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_idiag_mbxacc_dump_bsg_mbox(%struct.lpfc_hba*, i32, i32, i32, i32, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_bsg_sli_cfg_dma_desc_setup(%struct.lpfc_hba*, i32, i32, %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf*) #1

declare dso_local %struct.bsg_job_data* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_22__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i64, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @kfree(%struct.bsg_job_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
