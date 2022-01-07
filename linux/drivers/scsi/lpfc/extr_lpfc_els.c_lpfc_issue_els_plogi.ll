; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_plogi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_plogi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.serv_parm = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32 }
%struct.lpfc_nodelist = type { i32, i32, i64, i32 }
%struct.lpfc_iocbq = type { i32, i64 }
%struct.lpfc_dmabuf = type { i64 }

@NLP_UNREG_INP = common dso_local global i32 0, align 4
@Fabric_DID_MASK = common dso_local global i32 0, align 4
@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"4110 Issue PLOGI x%x deferred on NPort x%x rpi x%x Data: x%px\0A\00", align 1
@NLP_EVT_NOTHING_PENDING = common dso_local global i64 0, align 8
@ELS_CMD_PLOGI = common dso_local global i64 0, align 8
@NLP_FCP_PRLI_RJT = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@FC_PH_4_3 = common dso_local global i64 0, align 8
@FC_PH3 = common dso_local global i64 0, align 8
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Issue PLOGI:     did:x%x\00", align 1
@LPFC_SLI_SUPPRESS_RSP = common dso_local global i32 0, align 4
@LPFC_VV_EMLX_ID = common dso_local global i32 0, align 4
@LPFC_VV_SUPPRESS_RSP = common dso_local global i32 0, align 4
@lpfc_cmpl_els_plogi = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_plogi(%struct.lpfc_vport* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca %struct.serv_parm*, align 8
  %11 = alloca %struct.lpfc_nodelist*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 2
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %17, align 8
  store %struct.lpfc_hba* %18, %struct.lpfc_hba** %8, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %19, i64 %20)
  store %struct.lpfc_nodelist* %21, %struct.lpfc_nodelist** %11, align 8
  %22 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %23 = icmp ne %struct.lpfc_nodelist* %22, null
  br i1 %23, label %24, label %77

24:                                               ; preds = %3
  %25 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %26 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NLP_UNREG_INP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %33 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @Fabric_DID_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @Fabric_DID_MASK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %31
  %40 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %41 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %39
  %47 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %48 = load i32, i32* @KERN_INFO, align 4
  %49 = load i32, i32* @LOG_DISCOVERY, align 4
  %50 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %51 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %57 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %60 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %55, i32 %58, %struct.lpfc_nodelist* %59)
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NLP_EVT_NOTHING_PENDING, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %46
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %69 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %46
  store i32 0, i32* %4, align 4
  br label %226

71:                                               ; preds = %39, %31, %24
  %72 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %73 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %11, align 8
  br label %76

76:                                               ; preds = %75, %71
  br label %77

77:                                               ; preds = %76, %3
  store i32 64, i32* %14, align 4
  %78 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @ELS_CMD_PLOGI, align 8
  %84 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %78, i32 1, i32 %79, i32 %80, %struct.lpfc_nodelist* %81, i64 %82, i64 %83)
  store %struct.lpfc_iocbq* %84, %struct.lpfc_iocbq** %12, align 8
  %85 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %86 = icmp ne %struct.lpfc_iocbq* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  store i32 1, i32* %4, align 4
  br label %226

88:                                               ; preds = %77
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %90 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %89)
  store %struct.Scsi_Host* %90, %struct.Scsi_Host** %9, align 8
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %92 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @spin_lock_irq(i32 %93)
  %95 = load i32, i32* @NLP_FCP_PRLI_RJT, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %11, align 8
  %98 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %102 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @spin_unlock_irq(i32 %103)
  %105 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %106 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to %struct.lpfc_dmabuf*
  %109 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  store i32* %111, i32** %13, align 8
  %112 = load i64, i64* @ELS_CMD_PLOGI, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = bitcast i32* %113 to i64*
  store i64 %112, i64* %114, align 8
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 8
  store i32* %116, i32** %13, align 8
  %117 = load i32*, i32** %13, align 8
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %119 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %118, i32 0, i32 1
  %120 = call i32 @memcpy(i32* %117, i32* %119, i32 56)
  %121 = load i32*, i32** %13, align 8
  %122 = bitcast i32* %121 to %struct.serv_parm*
  store %struct.serv_parm* %122, %struct.serv_parm** %10, align 8
  %123 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %124 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @FC_FABRIC, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %88
  %130 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %131 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %129
  %137 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %138 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  br label %140

140:                                              ; preds = %136, %129, %88
  %141 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %142 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FC_PH_4_3, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %140
  %148 = load i64, i64* @FC_PH_4_3, align 8
  %149 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %150 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  store i64 %148, i64* %151, align 8
  br label %152

152:                                              ; preds = %147, %140
  %153 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %154 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @FC_PH3, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load i64, i64* @FC_PH3, align 8
  %161 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %162 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  store i64 %160, i64* %163, align 8
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %166 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  store i32 0, i32* %167, align 8
  %168 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %169 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @memset(i32 %171, i32 0, i32 4)
  %173 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %174 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 15
  store i32 %177, i32* %175, align 4
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %179 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %178, i32 %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %180, i32 0, i32 0)
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %183 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @LPFC_SLI_SUPPRESS_RSP, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %205

189:                                              ; preds = %164
  %190 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %191 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  store i32 1, i32* %192, align 8
  %193 = load i32, i32* @LPFC_VV_EMLX_ID, align 4
  %194 = call i8* @cpu_to_be32(i32 %193)
  %195 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %196 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  store i8* %194, i8** %198, align 8
  %199 = load i32, i32* @LPFC_VV_SUPPRESS_RSP, align 4
  %200 = call i8* @cpu_to_be32(i32 %199)
  %201 = load %struct.serv_parm*, %struct.serv_parm** %10, align 8
  %202 = getelementptr inbounds %struct.serv_parm, %struct.serv_parm* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  store i8* %200, i8** %204, align 8
  br label %205

205:                                              ; preds = %189, %164
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %207 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* @lpfc_cmpl_els_plogi, align 4
  %212 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %213 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %215 = load i32, i32* @LPFC_ELS_RING, align 4
  %216 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %217 = call i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %214, i32 %215, %struct.lpfc_iocbq* %216, i32 0)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @IOCB_ERROR, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %225

221:                                              ; preds = %205
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %223 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %224 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %222, %struct.lpfc_iocbq* %223)
  store i32 1, i32* %4, align 4
  br label %226

225:                                              ; preds = %205
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %225, %221, %87, %70
  %227 = load i32, i32* %4, align 4
  ret i32 %227
}

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i64) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i64, i64) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i64, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
