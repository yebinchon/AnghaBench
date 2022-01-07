; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gid_ft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_ct.c_lpfc_cmpl_ct_cmd_gid_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_11__, %struct.TYPE_19__, i64, i64, %struct.lpfc_vport* }
%struct.TYPE_11__ = type { %struct.lpfc_nodelist*, %struct.lpfc_iocbq* }
%struct.lpfc_nodelist = type { i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.lpfc_vport = type { i64, i32, i32, i32, i64, i64, i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_dmabuf = type { i64 }
%struct.lpfc_sli_ct_request = type { i64, i64, %struct.TYPE_17__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@LPFC_DISC_TRC_CT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"GID_FT cmpl:     status:x%x/x%x rtry:%d\00", align 1
@FC_UNLOADING = common dso_local global i32 0, align 4
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"0216 Link event during NS query\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"0226 NS query failed due to link event\0A\00", align 1
@FC_RSCN_DEFERRED = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"0151 Process Deferred RSCN Data: x%x x%x\0A\00", align 1
@LPFC_MAX_NS_RETRY = common dso_local global i64 0, align 8
@IOSTAT_LOCAL_REJECT = common dso_local global i32 0, align 4
@IOERR_PARAM_MASK = common dso_local global i32 0, align 4
@IOERR_NO_RESOURCES = common dso_local global i32 0, align 4
@SLI_CTNS_GID_FT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"0257 GID_FT Query error: 0x%x 0x%x\0A\00", align 1
@SLI_CT_RESPONSE_FS_ACC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"0208 NameServer Rsp Data: x%x x%x sz x%x\0A\00", align 1
@SLI_CT_RESPONSE_FS_RJT = common dso_local global i32 0, align 4
@SLI_CT_UNABLE_TO_PERFORM_REQ = common dso_local global i64 0, align 8
@SLI_CT_NO_FC4_TYPES = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"0269 No NameServer Entries Data: x%x x%x x%x x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"GID_FT no entry  cmd:x%x rsn:x%x exp:x%x\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"0240 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"GID_FT rsp err1  cmd:x%x rsn:x%x exp:x%x\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"0241 NameServer Rsp Error Data: x%x x%x x%x x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"GID_FT rsp err2  cmd:x%x rsn:x%x exp:x%x\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"4216 GID_FT cmpl inp %d disc %d\0A\00", align 1
@LPFC_DISC_AUTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*)* @lpfc_cmpl_ct_cmd_gid_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_ct_cmd_gid_ft(%struct.lpfc_hba* %0, %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_iocbq*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca %struct.lpfc_dmabuf*, align 8
  %12 = alloca %struct.lpfc_sli_ct_request*, align 8
  %13 = alloca %struct.lpfc_sli_ct_request*, align 8
  %14 = alloca %struct.lpfc_nodelist*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_iocbq* %1, %struct.lpfc_iocbq** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %17 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %18 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %17, i32 0, i32 4
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %18, align 8
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %7, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %21 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %8, align 8
  %22 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %23 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %24, align 8
  store %struct.lpfc_nodelist* %25, %struct.lpfc_nodelist** %14, align 8
  %26 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %27 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store %struct.lpfc_iocbq* %26, %struct.lpfc_iocbq** %29, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %33, %struct.lpfc_dmabuf** %11, align 8
  %34 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %35 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %37, %struct.lpfc_dmabuf** %10, align 8
  %38 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %39 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %38, i32 0, i32 1
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %9, align 8
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %41 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %52 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %40, i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %50, i64 %53)
  %55 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %56 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FC_UNLOADING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %3
  %62 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %63 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FC_RSCN_MODE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %70 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %69)
  br label %71

71:                                               ; preds = %68, %61
  br label %472

72:                                               ; preds = %3
  %73 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %74 = call i64 @lpfc_els_chk_latt(%struct.lpfc_vport* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %78 = load i32, i32* @KERN_INFO, align 4
  %79 = load i32, i32* @LOG_DISCOVERY, align 4
  %80 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %77, i32 %78, i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %82 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FC_RSCN_MODE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %89 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %88)
  br label %90

90:                                               ; preds = %87, %76
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %92 = load i32, i32* @FC_VPORT_FAILED, align 4
  %93 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %91, i32 %92)
  br label %472

94:                                               ; preds = %72
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %96 = call i64 @lpfc_error_lost_link(%struct.TYPE_19__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %100 = load i32, i32* @KERN_INFO, align 4
  %101 = load i32, i32* @LOG_DISCOVERY, align 4
  %102 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @FC_RSCN_MODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %111 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %110)
  br label %112

112:                                              ; preds = %109, %98
  br label %472

113:                                              ; preds = %94
  %114 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %115 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @spin_lock_irq(i32 %116)
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %119 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FC_RSCN_DEFERRED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %151

124:                                              ; preds = %113
  %125 = load i32, i32* @FC_RSCN_DEFERRED, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @spin_unlock_irq(i32 %133)
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %136 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %140 = load i32, i32* @KERN_INFO, align 4
  %141 = load i32, i32* @LOG_ELS, align 4
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %143 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %146 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %144, i64 %147)
  %149 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %150 = call i32 @lpfc_els_handle_rscn(%struct.lpfc_vport* %149)
  br label %472

151:                                              ; preds = %113
  %152 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %153 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @spin_unlock_irq(i32 %154)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %238

160:                                              ; preds = %151
  %161 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %162 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @LPFC_MAX_NS_RETRY, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %214

166:                                              ; preds = %160
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @IOSTAT_LOCAL_REJECT, align 4
  %171 = sext i32 %170 to i64
  %172 = icmp ne i64 %169, %171
  br i1 %172, label %186, label %173

173:                                              ; preds = %166
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = getelementptr inbounds i64, i64* %177, i64 4
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* @IOERR_PARAM_MASK, align 4
  %181 = sext i32 %180 to i64
  %182 = and i64 %179, %181
  %183 = load i32, i32* @IOERR_NO_RESOURCES, align 4
  %184 = sext i32 %183 to i64
  %185 = icmp ne i64 %182, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %173, %166
  %187 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %188 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  br label %191

191:                                              ; preds = %186, %173
  %192 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %193 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %194 = call i32 @lpfc_get_gidft_type(%struct.lpfc_vport* %192, %struct.lpfc_iocbq* %193)
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %472

198:                                              ; preds = %191
  %199 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %200 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %200, align 8
  %203 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %204 = load i32, i32* @SLI_CTNS_GID_FT, align 4
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %206 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %16, align 4
  %209 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %203, i32 %204, i64 %207, i32 %208)
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %198
  br label %472

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %160
  %215 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %216 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @FC_RSCN_MODE, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %214
  %222 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %223 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %222)
  br label %224

224:                                              ; preds = %221, %214
  %225 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %226 = load i32, i32* @FC_VPORT_FAILED, align 4
  %227 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %225, i32 %226)
  %228 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %229 = load i32, i32* @KERN_ERR, align 4
  %230 = load i32, i32* @LOG_ELS, align 4
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %235 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %228, i32 %229, i32 %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64 %233, i64 %236)
  br label %415

238:                                              ; preds = %151
  %239 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %11, align 8
  %240 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %242, %struct.lpfc_sli_ct_request** %13, align 8
  %243 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %244 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = inttoptr i64 %245 to %struct.lpfc_sli_ct_request*
  store %struct.lpfc_sli_ct_request* %246, %struct.lpfc_sli_ct_request** %12, align 8
  %247 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %248 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* @SLI_CT_RESPONSE_FS_ACC, align 4
  %253 = call i64 @cpu_to_be16(i32 %252)
  %254 = icmp eq i64 %251, %253
  br i1 %254, label %255, label %288

255:                                              ; preds = %238
  %256 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %257 = load i32, i32* @KERN_INFO, align 4
  %258 = load i32, i32* @LOG_DISCOVERY, align 4
  %259 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %260 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %13, align 8
  %263 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %256, i32 %257, i32 %258, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %261, i32 %266, i64 %272)
  %274 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %275 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %276 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %13, align 8
  %277 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = call i32 @lpfc_ns_rsp(%struct.lpfc_vport* %274, %struct.lpfc_dmabuf* %275, i32 %280, i64 %286)
  br label %410

288:                                              ; preds = %238
  %289 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %290 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* @SLI_CT_RESPONSE_FS_RJT, align 4
  %295 = call i64 @be16_to_cpu(i32 %294)
  %296 = icmp eq i64 %293, %295
  br i1 %296, label %297, label %376

297:                                              ; preds = %288
  %298 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %299 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @SLI_CT_UNABLE_TO_PERFORM_REQ, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %342

303:                                              ; preds = %297
  %304 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %305 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @SLI_CT_NO_FC4_TYPES, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %342

309:                                              ; preds = %303
  %310 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %311 = load i32, i32* @KERN_INFO, align 4
  %312 = load i32, i32* @LOG_DISCOVERY, align 4
  %313 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %314 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %319 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %322 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %325 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %310, i32 %311, i32 %312, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %317, i64 %320, i64 %323, i32 %326)
  %328 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %329 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %330 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %331 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %336 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %339 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %328, i32 %329, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i64 %334, i64 %337, i64 %340)
  br label %375

342:                                              ; preds = %303, %297
  %343 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %344 = load i32, i32* @KERN_INFO, align 4
  %345 = load i32, i32* @LOG_DISCOVERY, align 4
  %346 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %347 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %352 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %355 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %358 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %343, i32 %344, i32 %345, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i64 %350, i64 %353, i64 %356, i32 %359)
  %361 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %362 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %363 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %364 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %363, i32 0, i32 2
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %369 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %372 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %361, i32 %362, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64 %367, i64 %370, i64 %373)
  br label %375

375:                                              ; preds = %342, %309
  br label %409

376:                                              ; preds = %288
  %377 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %378 = load i32, i32* @KERN_ERR, align 4
  %379 = load i32, i32* @LOG_DISCOVERY, align 4
  %380 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %381 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %386 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %389 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %392 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %377, i32 %378, i32 %379, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i64 %384, i64 %387, i64 %390, i32 %393)
  %395 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %396 = load i32, i32* @LPFC_DISC_TRC_CT, align 4
  %397 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %398 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %403 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load %struct.lpfc_sli_ct_request*, %struct.lpfc_sli_ct_request** %12, align 8
  %406 = getelementptr inbounds %struct.lpfc_sli_ct_request, %struct.lpfc_sli_ct_request* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %395, i32 %396, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i64 %401, i64 %404, i64 %407)
  br label %409

409:                                              ; preds = %376, %375
  br label %410

410:                                              ; preds = %409, %255
  %411 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %412 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = add nsw i32 %413, -1
  store i32 %414, i32* %412, align 8
  br label %415

415:                                              ; preds = %410, %224
  %416 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %417 = load i32, i32* @KERN_INFO, align 4
  %418 = load i32, i32* @LOG_DISCOVERY, align 4
  %419 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %420 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %423 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %422, i32 0, i32 5
  %424 = load i64, i64* %423, align 8
  %425 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %416, i32 %417, i32 %418, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %421, i64 %424)
  %426 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %427 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %426, i32 0, i32 5
  %428 = load i64, i64* %427, align 8
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %430, label %471

430:                                              ; preds = %415
  %431 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %432 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %431, i32 0, i32 3
  %433 = load i32, i32* %432, align 8
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %471

435:                                              ; preds = %430
  %436 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %437 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @LPFC_DISC_AUTH, align 8
  %440 = icmp sge i64 %438, %439
  br i1 %440, label %441, label %468

441:                                              ; preds = %435
  %442 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %443 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @FC_RSCN_MODE, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %464

448:                                              ; preds = %441
  %449 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %450 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %449)
  %451 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %452 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @spin_lock_irq(i32 %453)
  %455 = load i32, i32* @FC_RSCN_MODE, align 4
  %456 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %457 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 4
  %459 = or i32 %458, %455
  store i32 %459, i32* %457, align 4
  %460 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %461 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @spin_unlock_irq(i32 %462)
  br label %467

464:                                              ; preds = %441
  %465 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %466 = call i32 @lpfc_els_flush_rscn(%struct.lpfc_vport* %465)
  br label %467

467:                                              ; preds = %464, %448
  br label %468

468:                                              ; preds = %467, %435
  %469 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %470 = call i32 @lpfc_disc_start(%struct.lpfc_vport* %469)
  br label %471

471:                                              ; preds = %468, %430, %415
  br label %472

472:                                              ; preds = %471, %212, %197, %124, %112, %90, %71
  %473 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %14, align 8
  %474 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %475 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %475, i32 0, i32 0
  store %struct.lpfc_nodelist* %473, %struct.lpfc_nodelist** %476, align 8
  %477 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %478 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %5, align 8
  %479 = call i32 @lpfc_ct_free_iocb(%struct.lpfc_hba* %477, %struct.lpfc_iocbq* %478)
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @lpfc_els_flush_rscn(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_els_chk_latt(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @lpfc_error_lost_link(%struct.TYPE_19__*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_els_handle_rscn(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_get_gidft_type(%struct.lpfc_vport*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i64, i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @lpfc_ns_rsp(%struct.lpfc_vport*, %struct.lpfc_dmabuf*, i32, i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @lpfc_disc_start(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_ct_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
