; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_prli.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_issue_els_prli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i32, i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, %struct.TYPE_7__, i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_nodelist = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lpfc_nvme_prli = type { i8*, i8* }
%struct.lpfc_iocbq = type { i32, i32, i64 }
%struct.lpfc_dmabuf = type { i64 }

@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_RSCN_MODE = common dso_local global i32 0, align 4
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@NLP_NVME_INITIATOR = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@NLP_FIRSTBURST = common dso_local global i32 0, align 4
@NLP_NPR_2B_DISC = common dso_local global i32 0, align 4
@NLP_FC4_FCP = common dso_local global i32 0, align 4
@ELS_CMD_PRLI = common dso_local global i8* null, align 8
@ELS_CMD_NVMEPRLI = common dso_local global i8* null, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"3083 Unknown FC_TYPE x%x ndlp x%06x\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"3088 Rport fc4 type 0x%x not supported by SLI3 adapter\0A\00", align 1
@NLP_EVT_DEVICE_RM = common dso_local global i32 0, align 4
@PRLI_FCP_TYPE = common dso_local global i32 0, align 4
@LPFC_PRLI_FCP_REQ = common dso_local global i32 0, align 4
@prli_type_code = common dso_local global i32 0, align 4
@PRLI_NVME_TYPE = common dso_local global i32 0, align 4
@prli_estabImagePair = common dso_local global i32 0, align 4
@prli_nsler = common dso_local global i32 0, align 4
@prli_conf = common dso_local global i32 0, align 4
@prli_fba = common dso_local global i32 0, align 4
@prli_tgt = common dso_local global i32 0, align 4
@prli_disc = common dso_local global i32 0, align 4
@prli_init = common dso_local global i32 0, align 4
@LPFC_PRLI_NVME_REQ = common dso_local global i32 0, align 4
@LPFC_DISC_TRC_ELS_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Issue PRLI:      did:x%x\00", align 1
@lpfc_cmpl_els_prli = common dso_local global i32 0, align 4
@NLP_PRLI_SND = common dso_local global i32 0, align 4
@LPFC_ELS_RING = common dso_local global i32 0, align 4
@IOCB_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_issue_els_prli(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.lpfc_hba*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.lpfc_nvme_prli*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %5, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %18 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %17)
  store %struct.Scsi_Host* %18, %struct.Scsi_Host** %8, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %20, align 8
  store %struct.lpfc_hba* %21, %struct.lpfc_hba** %9, align 8
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LPFC_SLI_REV4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %3
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FC_RSCN_MODE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* @NLP_FC4_NVME, align 4
  %41 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %34, %27, %3
  %46 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %47 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* @NLP_FCP_TARGET, align 4
  %50 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %54 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @NLP_NVME_TARGET, align 4
  %58 = load i32, i32* @NLP_NVME_INITIATOR, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %68 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* @NLP_FIRSTBURST, align 4
  %72 = load i32, i32* @NLP_NPR_2B_DISC, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %76 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %80 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %79, i32 0, i32 5
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %369, %45
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @NLP_FC4_FCP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  store i32 40, i32* %14, align 4
  %87 = load i8*, i8** @ELS_CMD_PRLI, align 8
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %16, align 4
  br label %109

89:                                               ; preds = %81
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @NLP_FC4_NVME, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  store i32 24, i32* %14, align 4
  %95 = load i8*, i8** @ELS_CMD_NVMEPRLI, align 8
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %16, align 4
  br label %108

97:                                               ; preds = %89
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %99 = load i32, i32* @KERN_INFO, align 4
  %100 = load i32, i32* @LOG_DISCOVERY, align 4
  %101 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %102 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %106)
  store i32 1, i32* %4, align 4
  br label %371

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %86
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LPFC_SLI_REV3, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  %116 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %117 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @NLP_FC4_NVME, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %123 = load i32, i32* @KERN_INFO, align 4
  %124 = load i32, i32* @LOG_DISCOVERY, align 4
  %125 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %126 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i32, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %122, i32 %123, i32 %124, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %130 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %131 = load i32, i32* @NLP_EVT_DEVICE_RM, align 4
  %132 = call i32 @lpfc_disc_state_machine(%struct.lpfc_vport* %129, %struct.lpfc_nodelist* %130, i32* null, i32 %131)
  store i32 1, i32* %4, align 4
  br label %371

133:                                              ; preds = %115, %109
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %138 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %139 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport* %134, i32 1, i32 %135, i32 %136, %struct.lpfc_nodelist* %137, i32 %140, i32 %141)
  store %struct.lpfc_iocbq* %142, %struct.lpfc_iocbq** %12, align 8
  %143 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %144 = icmp ne %struct.lpfc_iocbq* %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %133
  store i32 1, i32* %4, align 4
  br label %371

146:                                              ; preds = %133
  %147 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %148 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.lpfc_dmabuf*
  %151 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to i32*
  store i32* %153, i32** %13, align 8
  %154 = load i32*, i32** %13, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i32 @memset(i32* %154, i32 0, i32 %155)
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @NLP_FC4_FCP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %209

161:                                              ; preds = %146
  %162 = load i8*, i8** @ELS_CMD_PRLI, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = bitcast i32* %163 to i8**
  store i8* %162, i8** %164, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 8
  store i32* %166, i32** %13, align 8
  %167 = load i32*, i32** %13, align 8
  %168 = bitcast i32* %167 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %168, %struct.TYPE_8__** %10, align 8
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp sge i32 %173, 2
  br i1 %174, label %175, label %182

175:                                              ; preds = %161
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  store i32 1, i32* %179, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i32 1, i32* %181, align 4
  br label %182

182:                                              ; preds = %175, %161
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  store i32 1, i32* %186, align 4
  %187 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %188 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %182
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 5
  store i32 1, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %182
  %195 = load i32, i32* @PRLI_FCP_TYPE, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 4
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 6
  store i32 1, i32* %199, align 4
  %200 = load i32, i32* @LPFC_PRLI_FCP_REQ, align 4
  %201 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %202 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* @NLP_FC4_FCP, align 4
  %206 = xor i32 %205, -1
  %207 = load i32, i32* %15, align 4
  %208 = and i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %296

209:                                              ; preds = %146
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* @NLP_FC4_NVME, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %295

214:                                              ; preds = %209
  %215 = load i8*, i8** @ELS_CMD_NVMEPRLI, align 8
  %216 = load i32*, i32** %13, align 8
  %217 = bitcast i32* %216 to i8**
  store i8* %215, i8** %217, align 8
  %218 = load i32*, i32** %13, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 8
  store i32* %219, i32** %13, align 8
  %220 = load i32*, i32** %13, align 8
  %221 = bitcast i32* %220 to %struct.lpfc_nvme_prli*
  store %struct.lpfc_nvme_prli* %221, %struct.lpfc_nvme_prli** %11, align 8
  %222 = load i32, i32* @prli_type_code, align 4
  %223 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %224 = load i32, i32* @PRLI_NVME_TYPE, align 4
  %225 = call i32 @bf_set(i32 %222, %struct.lpfc_nvme_prli* %223, i32 %224)
  %226 = load i32, i32* @prli_estabImagePair, align 4
  %227 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %228 = call i32 @bf_set(i32 %226, %struct.lpfc_nvme_prli* %227, i32 0)
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %214
  %234 = load i32, i32* @prli_nsler, align 4
  %235 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %236 = call i32 @bf_set(i32 %234, %struct.lpfc_nvme_prli* %235, i32 1)
  %237 = load i32, i32* @prli_conf, align 4
  %238 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %239 = call i32 @bf_set(i32 %237, %struct.lpfc_nvme_prli* %238, i32 1)
  br label %240

240:                                              ; preds = %233, %214
  %241 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %242 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %240
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %247 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %245
  %251 = load i32, i32* @prli_fba, align 4
  %252 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %253 = call i32 @bf_set(i32 %251, %struct.lpfc_nvme_prli* %252, i32 1)
  br label %254

254:                                              ; preds = %250, %245, %240
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %254
  %260 = load i32, i32* @prli_tgt, align 4
  %261 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %262 = call i32 @bf_set(i32 %260, %struct.lpfc_nvme_prli* %261, i32 1)
  %263 = load i32, i32* @prli_disc, align 4
  %264 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %265 = call i32 @bf_set(i32 %263, %struct.lpfc_nvme_prli* %264, i32 1)
  br label %273

266:                                              ; preds = %254
  %267 = load i32, i32* @prli_init, align 4
  %268 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %269 = call i32 @bf_set(i32 %267, %struct.lpfc_nvme_prli* %268, i32 1)
  %270 = load i32, i32* @prli_conf, align 4
  %271 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %272 = call i32 @bf_set(i32 %270, %struct.lpfc_nvme_prli* %271, i32 1)
  br label %273

273:                                              ; preds = %266, %259
  %274 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %275 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %274, i32 0, i32 1
  %276 = load i8*, i8** %275, align 8
  %277 = call i8* @cpu_to_be32(i8* %276)
  %278 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %279 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %278, i32 0, i32 1
  store i8* %277, i8** %279, align 8
  %280 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %281 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %280, i32 0, i32 0
  %282 = load i8*, i8** %281, align 8
  %283 = call i8* @cpu_to_be32(i8* %282)
  %284 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %11, align 8
  %285 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %284, i32 0, i32 0
  store i8* %283, i8** %285, align 8
  %286 = load i32, i32* @LPFC_PRLI_NVME_REQ, align 4
  %287 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %288 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = load i32, i32* @NLP_FC4_NVME, align 4
  %292 = xor i32 %291, -1
  %293 = load i32, i32* %15, align 4
  %294 = and i32 %293, %292
  store i32 %294, i32* %15, align 4
  br label %295

295:                                              ; preds = %273, %209
  br label %296

296:                                              ; preds = %295, %194
  %297 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %298 = load i32, i32* @LPFC_DISC_TRC_ELS_CMD, align 4
  %299 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %300 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport* %297, i32 %298, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %301, i32 0, i32 0)
  %303 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %304 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 8
  %308 = load i32, i32* @lpfc_cmpl_els_prli, align 4
  %309 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %310 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  %311 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %312 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @spin_lock_irq(i32 %313)
  %315 = load i32, i32* @NLP_PRLI_SND, align 4
  %316 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %317 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  %320 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %321 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 4
  %324 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %325 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %325, align 4
  %328 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %329 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = call i32 @spin_unlock_irq(i32 %330)
  %332 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %333 = load i32, i32* @LPFC_ELS_RING, align 4
  %334 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %335 = call i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba* %332, i32 %333, %struct.lpfc_iocbq* %334, i32 0)
  %336 = load i64, i64* @IOCB_ERROR, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %356

338:                                              ; preds = %296
  %339 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %340 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @spin_lock_irq(i32 %341)
  %343 = load i32, i32* @NLP_PRLI_SND, align 4
  %344 = xor i32 %343, -1
  %345 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %346 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, %344
  store i32 %348, i32* %346, align 8
  %349 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %350 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = call i32 @spin_unlock_irq(i32 %351)
  %353 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %354 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %355 = call i32 @lpfc_els_free_iocb(%struct.lpfc_hba* %353, %struct.lpfc_iocbq* %354)
  store i32 1, i32* %4, align 4
  br label %371

356:                                              ; preds = %296
  %357 = load %struct.lpfc_hba*, %struct.lpfc_hba** %9, align 8
  %358 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @LPFC_SLI_REV4, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %370

362:                                              ; preds = %356
  %363 = load i32, i32* %15, align 4
  %364 = load i32, i32* @NLP_FC4_FCP, align 4
  %365 = load i32, i32* @NLP_FC4_NVME, align 4
  %366 = or i32 %364, %365
  %367 = and i32 %363, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %362
  br label %81

370:                                              ; preds = %362, %356
  store i32 0, i32* %4, align 4
  br label %371

371:                                              ; preds = %370, %338, %145, %121, %97
  %372 = load i32, i32* %4, align 4
  ret i32 %372
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_disc_state_machine(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32*, i32) #1

declare dso_local %struct.lpfc_iocbq* @lpfc_prep_els_iocb(%struct.lpfc_vport*, i32, i32, i32, %struct.lpfc_nodelist*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.lpfc_nvme_prli*, i32) #1

declare dso_local i8* @cpu_to_be32(i8*) #1

declare dso_local i32 @lpfc_debugfs_disc_trc(%struct.lpfc_vport*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i64 @lpfc_sli_issue_iocb(%struct.lpfc_hba*, i32, %struct.lpfc_iocbq*, i32) #1

declare dso_local i32 @lpfc_els_free_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
