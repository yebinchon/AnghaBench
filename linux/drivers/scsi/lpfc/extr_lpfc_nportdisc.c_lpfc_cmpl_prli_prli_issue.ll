; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_prli_prli_issue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nportdisc.c_lpfc_cmpl_prli_prli_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i64, i64 }
%struct.lpfc_nodelist = type { i32, i32, i64, i32, i64, i8*, i32, i32, i32, i32 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_iocbq = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.lpfc_iocbq* }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64 }
%struct.lpfc_nvme_prli = type { i32, i32, i32 }

@LPFC_PRLI_FCP_REQ = common dso_local global i32 0, align 4
@LPFC_PRLI_NVME_REQ = common dso_local global i32 0, align 4
@LPFC_NPIV_PORT = common dso_local global i64 0, align 8
@NLP_FC4_FCP = common dso_local global i32 0, align 4
@NLP_FC4_NVME = common dso_local global i32 0, align 4
@PRLI_REQ_EXECUTED = common dso_local global i64 0, align 8
@PRLI_FCP_TYPE = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_NVME_DISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"6028 FCP NPR PRLI Cmpl Init %d Target %d\0A\00", align 1
@NLP_FCP_INITIATOR = common dso_local global i32 0, align 4
@NLP_FCP_TARGET = common dso_local global i32 0, align 4
@NLP_FIRSTBURST = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@prli_acc_rsp_code = common dso_local global i32 0, align 4
@prli_type_code = common dso_local global i32 0, align 4
@PRLI_NVME_TYPE = common dso_local global i32 0, align 4
@prli_init = common dso_local global i32 0, align 4
@NLP_NVME_INITIATOR = common dso_local global i32 0, align 4
@prli_nsler = common dso_local global i32 0, align 4
@NLP_NVME_NSLER = common dso_local global i32 0, align 4
@prli_tgt = common dso_local global i32 0, align 4
@NLP_NVME_TARGET = common dso_local global i32 0, align 4
@prli_disc = common dso_local global i32 0, align 4
@NLP_NVME_DISCOVERY = common dso_local global i32 0, align 4
@prli_fba = common dso_local global i32 0, align 4
@prli_fb_sz = common dso_local global i32 0, align 4
@LPFC_NVME_FB_SHIFT = common dso_local global i32 0, align 4
@LPFC_NVME_MAX_FB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"6029 NVME PRLI Cmpl w1 x%08x w4 x%08x w5 x%08x flag x%x, fcp_info x%x nlp_type x%x\0A\00", align 1
@NLP_TARGET_REMOVE = common dso_local global i32 0, align 4
@NLP_STE_PRLI_ISSUE = common dso_local global i8* null, align 8
@NLP_STE_NPR_NODE = common dso_local global i32 0, align 4
@NLP_STE_MAPPED_NODE = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"3067 PRLI's still outstanding on x%06x - count %d, Pend Node Mode transition...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_nodelist*, i8*, i32)* @lpfc_cmpl_prli_prli_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_cmpl_prli_prli_issue(%struct.lpfc_vport* %0, %struct.lpfc_nodelist* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_iocbq*, align 8
  %13 = alloca %struct.lpfc_hba*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.lpfc_nvme_prli*, align 8
  %17 = alloca i8*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %6, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %19 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %10, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.lpfc_iocbq*
  store %struct.lpfc_iocbq* %24, %struct.lpfc_iocbq** %11, align 8
  %25 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %26 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %27, align 8
  store %struct.lpfc_iocbq* %28, %struct.lpfc_iocbq** %12, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %15, align 8
  store %struct.lpfc_nvme_prli* null, %struct.lpfc_nvme_prli** %16, align 8
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %30 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %31 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %32 = call i8* @lpfc_check_elscmpl_iocb(%struct.lpfc_hba* %29, %struct.lpfc_iocbq* %30, %struct.lpfc_iocbq* %31)
  store i8* %32, i8** %17, align 8
  %33 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %34 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @LPFC_PRLI_FCP_REQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %4
  %40 = load i8*, i8** %17, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %15, align 8
  br label %53

42:                                               ; preds = %4
  %43 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %44 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @LPFC_PRLI_NVME_REQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i8*, i8** %17, align 8
  %51 = bitcast i8* %50 to %struct.lpfc_nvme_prli*
  store %struct.lpfc_nvme_prli* %51, %struct.lpfc_nvme_prli** %16, align 8
  br label %52

52:                                               ; preds = %49, %42
  br label %53

53:                                               ; preds = %52, %39
  %54 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %12, align 8
  %55 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %54, i32 0, i32 1
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %14, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %53
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @LPFC_NPIV_PORT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %68 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %324

72:                                               ; preds = %66, %60
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* @NLP_FC4_FCP, align 4
  %77 = xor i32 %76, -1
  %78 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %75, %72
  %83 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %84 = icmp ne %struct.lpfc_nvme_prli* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* @NLP_FC4_NVME, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %89 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %82
  br label %352

93:                                               ; preds = %53
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %95 = icmp ne %struct.TYPE_5__* %94, null
  br i1 %95, label %96, label %163

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PRLI_REQ_EXECUTED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %163

102:                                              ; preds = %96
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PRLI_FCP_TYPE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %163

108:                                              ; preds = %102
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %110 = load i32, i32* @KERN_INFO, align 4
  %111 = load i32, i32* @LOG_NVME_DISC, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %114, i64 %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %108
  %124 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %125 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %126 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %108
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %129
  %135 = load i32, i32* @NLP_FCP_TARGET, align 4
  %136 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %137 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %134
  %145 = load i32, i32* @NLP_FIRSTBURST, align 4
  %146 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %147 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %134
  br label %151

151:                                              ; preds = %150, %129
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %158 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %159 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %151
  br label %305

163:                                              ; preds = %102, %96, %93
  %164 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %165 = icmp ne %struct.lpfc_nvme_prli* %164, null
  br i1 %165, label %166, label %304

166:                                              ; preds = %163
  %167 = load i32, i32* @prli_acc_rsp_code, align 4
  %168 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %169 = call i32 @bf_get_be32(i32 %167, %struct.lpfc_nvme_prli* %168)
  %170 = sext i32 %169 to i64
  %171 = load i64, i64* @PRLI_REQ_EXECUTED, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %304

173:                                              ; preds = %166
  %174 = load i32, i32* @prli_type_code, align 4
  %175 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %176 = call i32 @bf_get_be32(i32 %174, %struct.lpfc_nvme_prli* %175)
  %177 = load i32, i32* @PRLI_NVME_TYPE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %304

179:                                              ; preds = %173
  %180 = load i32, i32* @prli_init, align 4
  %181 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %182 = call i32 @bf_get_be32(i32 %180, %struct.lpfc_nvme_prli* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32, i32* @NLP_NVME_INITIATOR, align 4
  %186 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %187 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %179
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %190
  %196 = load i32, i32* @prli_nsler, align 4
  %197 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %198 = call i32 @bf_get_be32(i32 %196, %struct.lpfc_nvme_prli* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* @NLP_NVME_NSLER, align 4
  %202 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %203 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %213

206:                                              ; preds = %195, %190
  %207 = load i32, i32* @NLP_NVME_NSLER, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %210 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %206, %200
  %214 = load i32, i32* @prli_tgt, align 4
  %215 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %216 = call i32 @bf_get_be32(i32 %214, %struct.lpfc_nvme_prli* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %276

218:                                              ; preds = %213
  %219 = load i32, i32* @NLP_NVME_TARGET, align 4
  %220 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %221 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* @prli_disc, align 4
  %225 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %226 = call i32 @bf_get_be32(i32 %224, %struct.lpfc_nvme_prli* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %218
  %229 = load i32, i32* @NLP_NVME_DISCOVERY, align 4
  %230 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %231 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  br label %234

234:                                              ; preds = %228, %218
  %235 = load i32, i32* @prli_fba, align 4
  %236 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %237 = call i32 @bf_get_be32(i32 %235, %struct.lpfc_nvme_prli* %236)
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %275

239:                                              ; preds = %234
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %275

244:                                              ; preds = %239
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %13, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %275, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* @NLP_FIRSTBURST, align 4
  %251 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %252 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 8
  %254 = or i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* @prli_fb_sz, align 4
  %256 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %257 = call i32 @bf_get_be32(i32 %255, %struct.lpfc_nvme_prli* %256)
  %258 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %259 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 4
  %260 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %261 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %249
  %265 = load i32, i32* @LPFC_NVME_FB_SHIFT, align 4
  %266 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %267 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = shl i32 %268, %265
  store i32 %269, i32* %267, align 4
  br label %274

270:                                              ; preds = %249
  %271 = load i32, i32* @LPFC_NVME_MAX_FB, align 4
  %272 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %273 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %270, %264
  br label %275

275:                                              ; preds = %274, %244, %239, %234
  br label %276

276:                                              ; preds = %275, %213
  %277 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %278 = load i32, i32* @KERN_INFO, align 4
  %279 = load i32, i32* @LOG_NVME_DISC, align 4
  %280 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %281 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @be32_to_cpu(i32 %282)
  %284 = sext i32 %283 to i64
  %285 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %286 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @be32_to_cpu(i32 %287)
  %289 = sext i32 %288 to i64
  %290 = load %struct.lpfc_nvme_prli*, %struct.lpfc_nvme_prli** %16, align 8
  %291 = getelementptr inbounds %struct.lpfc_nvme_prli, %struct.lpfc_nvme_prli* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @be32_to_cpu(i32 %292)
  %294 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %295 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %298 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %297, i32 0, i32 7
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %301 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %277, i32 %278, i32 %279, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i64 %284, i64 %289, i32 %293, i32 %296, i32 %299, i32 %302)
  br label %304

304:                                              ; preds = %276, %173, %166, %163
  br label %305

305:                                              ; preds = %304, %162
  %306 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %307 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @NLP_FCP_TARGET, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %351, label %312

312:                                              ; preds = %305
  %313 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %314 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @LPFC_NPIV_PORT, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %351

318:                                              ; preds = %312
  %319 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %320 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %351

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323, %71
  %325 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %326 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @spin_lock_irq(i32 %327)
  %329 = load i32, i32* @NLP_TARGET_REMOVE, align 4
  %330 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %331 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 8
  %334 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %335 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @spin_unlock_irq(i32 %336)
  %338 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %339 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %340 = call i32 @lpfc_issue_els_logo(%struct.lpfc_vport* %338, %struct.lpfc_nodelist* %339, i32 0)
  %341 = load i8*, i8** @NLP_STE_PRLI_ISSUE, align 8
  %342 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %343 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %342, i32 0, i32 5
  store i8* %341, i8** %343, align 8
  %344 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %345 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %346 = load i32, i32* @NLP_STE_NPR_NODE, align 4
  %347 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %344, %struct.lpfc_nodelist* %345, i32 %346)
  %348 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %349 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  store i32 %350, i32* %5, align 4
  br label %405

351:                                              ; preds = %318, %312, %305
  br label %352

352:                                              ; preds = %351, %92
  %353 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %354 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %390

357:                                              ; preds = %352
  %358 = load i8*, i8** @NLP_STE_PRLI_ISSUE, align 8
  %359 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %360 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %359, i32 0, i32 5
  store i8* %358, i8** %360, align 8
  %361 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %362 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @NLP_FCP_TARGET, align 4
  %365 = load i32, i32* @NLP_NVME_TARGET, align 4
  %366 = or i32 %364, %365
  %367 = and i32 %363, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %357
  %370 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %371 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %372 = load i32, i32* @NLP_STE_MAPPED_NODE, align 4
  %373 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %370, %struct.lpfc_nodelist* %371, i32 %372)
  br label %389

374:                                              ; preds = %357
  %375 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %376 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* @NLP_FCP_INITIATOR, align 4
  %379 = load i32, i32* @NLP_NVME_INITIATOR, align 4
  %380 = or i32 %378, %379
  %381 = and i32 %377, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %374
  %384 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %385 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %386 = load i32, i32* @NLP_STE_UNMAPPED_NODE, align 4
  %387 = call i32 @lpfc_nlp_set_state(%struct.lpfc_vport* %384, %struct.lpfc_nodelist* %385, i32 %386)
  br label %388

388:                                              ; preds = %383, %374
  br label %389

389:                                              ; preds = %388, %369
  br label %401

390:                                              ; preds = %352
  %391 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %392 = load i32, i32* @KERN_INFO, align 4
  %393 = load i32, i32* @LOG_ELS, align 4
  %394 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %395 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %394, i32 0, i32 4
  %396 = load i64, i64* %395, align 8
  %397 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %398 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %397, i32 0, i32 2
  %399 = load i64, i64* %398, align 8
  %400 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, i64, i64, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %391, i32 %392, i32 %393, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i64 %396, i64 %399)
  br label %401

401:                                              ; preds = %390, %389
  %402 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %403 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  store i32 %404, i32* %5, align 4
  br label %405

405:                                              ; preds = %401, %324
  %406 = load i32, i32* %5, align 4
  ret i32 %406
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i8* @lpfc_check_elscmpl_iocb(%struct.lpfc_hba*, %struct.lpfc_iocbq*, %struct.lpfc_iocbq*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i64, ...) #1

declare dso_local i32 @bf_get_be32(i32, %struct.lpfc_nvme_prli*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_issue_els_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_nlp_set_state(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
