; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_shutdown_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_shutdown_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%union.qm_mc_command = type { i32 }
%union.qm_mc_result = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@QM_MCC_VERB_QUERYFQ_NP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"QUERYFQ_NP timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_QUERYFQ_NP = common dso_local global i32 0, align 4
@QM_MCR_NP_STATE_MASK = common dso_local global i32 0, align 4
@QM_MCC_VERB_QUERYFQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"QUERYFQ timeout\0A\00", align 1
@QM_MCR_VERB_QUERYFQ = common dso_local global i32 0, align 4
@qm_channel_pool1 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"Can't find portal for dedicated channel 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QM_MCC_VERB_ALTER_RETIRE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"ALTER_RETIRE timeout\0A\00", align 1
@QM_MCR_VERB_ALTER_RETIRE = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@QM_MCR_RESULT_PENDING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Can't recover FQ 0x%x, ch: 0x%x\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@QM_SDQCR_TYPE_ACTIVE = common dso_local global i32 0, align 4
@QM_SDQCR_CHANNELS_DEDICATED = common dso_local global i32 0, align 4
@FQRN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"retire_fq failed: FQ 0x%x, res=0x%x\0A\00", align 1
@QM_MCR_FQS_ORLPRESENT = common dso_local global i32 0, align 4
@QM_MCR_FQS_NOTEMPTY = common dso_local global i32 0, align 4
@FQ_EMPTY = common dso_local global i32 0, align 4
@FQRL = common dso_local global i32 0, align 4
@QM_MCC_VERB_ALTER_OOS = common dso_local global i32 0, align 4
@QM_MCR_VERB_ALTER_OOS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"OOS after drain fail: FQ 0x%x (0x%x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"OOS fail: FQ 0x%x (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_shutdown_fq(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qman_portal*, align 8
  %4 = alloca %struct.qman_portal*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %union.qm_mc_command*, align 8
  %7 = alloca %union.qm_mc_result*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %18, %struct.qman_portal** %3, align 8
  %19 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %20 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %5, align 8
  %24 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %25 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %24, i32 0, i32 1
  %26 = call %union.qm_mc_command* @qm_mc_start(i32* %25)
  store %union.qm_mc_command* %26, %union.qm_mc_command** %6, align 8
  %27 = load %union.qm_mc_command*, %union.qm_mc_command** %6, align 8
  %28 = bitcast %union.qm_mc_command* %27 to i32*
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @qm_fqid_set(i32* %28, i64 %29)
  %31 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %32 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %31, i32 0, i32 1
  %33 = load i32, i32* @QM_MCC_VERB_QUERYFQ_NP, align 4
  %34 = call i32 @qm_mc_commit(i32* %32, i32 %33)
  %35 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %36 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %35, i32 0, i32 1
  %37 = call i32 @qm_mc_result_timeout(i32* %36, %union.qm_mc_result** %7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %1
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %396

44:                                               ; preds = %1
  %45 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %46 = bitcast %union.qm_mc_result* %45 to i32*
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @QM_MCR_VERB_QUERYFQ_NP, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @DPAA_ASSERT(i32 %52)
  %54 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %55 = bitcast %union.qm_mc_result* %54 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @QM_MCR_NP_STATE_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp eq i32 %60, 132
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %396

63:                                               ; preds = %44
  %64 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %65 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %64, i32 0, i32 1
  %66 = call %union.qm_mc_command* @qm_mc_start(i32* %65)
  store %union.qm_mc_command* %66, %union.qm_mc_command** %6, align 8
  %67 = load %union.qm_mc_command*, %union.qm_mc_command** %6, align 8
  %68 = bitcast %union.qm_mc_command* %67 to i32*
  %69 = load i64, i64* %2, align 8
  %70 = call i32 @qm_fqid_set(i32* %68, i64 %69)
  %71 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %72 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %71, i32 0, i32 1
  %73 = load i32, i32* @QM_MCC_VERB_QUERYFQ, align 4
  %74 = call i32 @qm_mc_commit(i32* %72, i32 %73)
  %75 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %76 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %75, i32 0, i32 1
  %77 = call i32 @qm_mc_result_timeout(i32* %76, %union.qm_mc_result** %7)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %63
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %396

84:                                               ; preds = %63
  %85 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %86 = bitcast %union.qm_mc_result* %85 to i32*
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* @QM_MCR_VERB_QUERYFQ, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @DPAA_ASSERT(i32 %92)
  %94 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %95 = bitcast %union.qm_mc_result* %94 to %struct.TYPE_7__*
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = call i64 @qm_fqd_get_chan(i32* %96)
  store i64 %97, i64* %11, align 8
  %98 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %99 = bitcast %union.qm_mc_result* %98 to %struct.TYPE_7__*
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = call i64 @qm_fqd_get_wq(i32* %100)
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @qm_channel_pool1, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %84
  %106 = load i64, i64* %11, align 8
  %107 = call %struct.qman_portal* @get_portal_for_channel(i64 %106)
  store %struct.qman_portal* %107, %struct.qman_portal** %4, align 8
  %108 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %109 = icmp eq %struct.qman_portal* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %396

116:                                              ; preds = %105
  br label %119

117:                                              ; preds = %84
  %118 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  store %struct.qman_portal* %118, %struct.qman_portal** %4, align 8
  br label %119

119:                                              ; preds = %117, %116
  %120 = load i32, i32* %14, align 4
  switch i32 %120, label %392 [
    i32 129, label %121
    i32 128, label %121
    i32 133, label %121
    i32 131, label %121
    i32 130, label %347
    i32 132, label %391
  ]

121:                                              ; preds = %119, %119, %119, %119
  store i32 0, i32* %8, align 4
  %122 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %123 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %122, i32 0, i32 1
  %124 = call %union.qm_mc_command* @qm_mc_start(i32* %123)
  store %union.qm_mc_command* %124, %union.qm_mc_command** %6, align 8
  %125 = load %union.qm_mc_command*, %union.qm_mc_command** %6, align 8
  %126 = bitcast %union.qm_mc_command* %125 to i32*
  %127 = load i64, i64* %2, align 8
  %128 = call i32 @qm_fqid_set(i32* %126, i64 %127)
  %129 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %130 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %129, i32 0, i32 1
  %131 = load i32, i32* @QM_MCC_VERB_ALTER_RETIRE, align 4
  %132 = call i32 @qm_mc_commit(i32* %130, i32 %131)
  %133 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %134 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %133, i32 0, i32 1
  %135 = call i32 @qm_mc_result_timeout(i32* %134, %union.qm_mc_result** %7)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %121
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @ETIMEDOUT, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %10, align 4
  br label %396

142:                                              ; preds = %121
  %143 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %144 = bitcast %union.qm_mc_result* %143 to i32*
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @QM_MCR_VERB_ALTER_RETIRE, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @DPAA_ASSERT(i32 %150)
  %152 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %153 = bitcast %union.qm_mc_result* %152 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %13, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %142
  %159 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %160 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %159, i32 0, i32 1
  %161 = call i32 @drain_mr_fqrni(i32* %160)
  br label %162

162:                                              ; preds = %158, %142
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* @QM_MCR_RESULT_PENDING, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %239

166:                                              ; preds = %162
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %9, align 4
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* @qm_channel_pool1, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %166
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @qm_channel_pool1, align 8
  %173 = add nsw i64 %172, 15
  %174 = icmp slt i64 %171, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i64, i64* %11, align 8
  %177 = load i64, i64* @qm_channel_pool1, align 8
  %178 = sub nsw i64 %176, %177
  %179 = add nsw i64 %178, 1
  %180 = shl i64 %179, 4
  %181 = load i64, i64* %12, align 8
  %182 = or i64 %180, %181
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %16, align 4
  br label %199

184:                                              ; preds = %170, %166
  %185 = load i64, i64* %11, align 8
  %186 = load i64, i64* @qm_channel_pool1, align 8
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = load i64, i64* %12, align 8
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %16, align 4
  br label %198

191:                                              ; preds = %184
  %192 = load %struct.device*, %struct.device** %5, align 8
  %193 = load i64, i64* %2, align 8
  %194 = load i64, i64* %11, align 8
  %195 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %192, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %193, i64 %194)
  %196 = load i32, i32* @EBUSY, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %10, align 4
  br label %396

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %175
  %200 = load i64, i64* %11, align 8
  %201 = load i64, i64* @qm_channel_pool1, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %203, label %210

203:                                              ; preds = %199
  %204 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %205 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %204, i32 0, i32 1
  %206 = load i32, i32* @QM_SDQCR_TYPE_ACTIVE, align 4
  %207 = load i32, i32* @QM_SDQCR_CHANNELS_DEDICATED, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @qm_dqrr_sdqcr_set(i32* %205, i32 %208)
  br label %218

210:                                              ; preds = %199
  %211 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %212 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %211, i32 0, i32 1
  %213 = load i32, i32* @QM_SDQCR_TYPE_ACTIVE, align 4
  %214 = load i64, i64* %11, align 8
  %215 = call i32 @QM_SDQCR_CHANNELS_POOL_CONV(i64 %214)
  %216 = or i32 %213, %215
  %217 = call i32 @qm_dqrr_sdqcr_set(i32* %212, i32 %216)
  br label %218

218:                                              ; preds = %210, %203
  br label %219

219:                                              ; preds = %228, %218
  %220 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %221 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %220, i32 0, i32 1
  %222 = call i32 @qm_dqrr_drain_nomatch(i32* %221)
  %223 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %224 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %223, i32 0, i32 1
  %225 = load i32, i32* @FQRN, align 4
  %226 = call i32 @qm_mr_drain(i32* %224, i32 %225)
  store i32 %226, i32* %15, align 4
  %227 = call i32 (...) @cpu_relax()
  br label %228

228:                                              ; preds = %219
  %229 = load i32, i32* %15, align 4
  %230 = icmp ne i32 %229, 0
  %231 = xor i1 %230, true
  br i1 %231, label %219, label %232

232:                                              ; preds = %228
  %233 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %234 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %233, i32 0, i32 1
  %235 = load %struct.qman_portal*, %struct.qman_portal** %4, align 8
  %236 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @qm_dqrr_sdqcr_set(i32* %234, i32 %237)
  br label %239

239:                                              ; preds = %232, %162
  %240 = load i64, i64* %13, align 8
  %241 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %242 = icmp ne i64 %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %239
  %244 = load i64, i64* %13, align 8
  %245 = load i64, i64* @QM_MCR_RESULT_PENDING, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load %struct.device*, %struct.device** %5, align 8
  %249 = load i64, i64* %2, align 8
  %250 = load i64, i64* %13, align 8
  %251 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %248, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i64 %249, i64 %250)
  %252 = load i32, i32* @EIO, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %10, align 4
  br label %396

254:                                              ; preds = %243, %239
  %255 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %256 = bitcast %union.qm_mc_result* %255 to %struct.TYPE_8__*
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @QM_MCR_FQS_ORLPRESENT, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %254
  store i32 1, i32* %8, align 4
  br label %263

263:                                              ; preds = %262, %254
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %263
  %267 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %268 = bitcast %union.qm_mc_result* %267 to %struct.TYPE_8__*
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @QM_MCR_FQS_NOTEMPTY, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %292

274:                                              ; preds = %266, %263
  br label %275

275:                                              ; preds = %283, %274
  %276 = load i64, i64* %2, align 8
  %277 = call i64 @QM_VDQCR_NUMFRAMES_SET(i32 3)
  %278 = or i64 %276, %277
  store i64 %278, i64* %17, align 8
  %279 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %280 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %279, i32 0, i32 1
  %281 = load i64, i64* %17, align 8
  %282 = call i32 @qm_dqrr_vdqcr_set(i32* %280, i64 %281)
  br label %283

283:                                              ; preds = %275
  %284 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %285 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %284, i32 0, i32 1
  %286 = load i64, i64* %2, align 8
  %287 = load i32, i32* @FQ_EMPTY, align 4
  %288 = call i32 @qm_dqrr_drain_wait(i32* %285, i64 %286, i32 %287)
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  br i1 %290, label %275, label %291

291:                                              ; preds = %283
  br label %292

292:                                              ; preds = %291, %266
  br label %293

293:                                              ; preds = %297, %292
  %294 = load i32, i32* %8, align 4
  %295 = icmp ne i32 %294, 0
  %296 = xor i1 %295, true
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %299 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %298, i32 0, i32 1
  %300 = load i32, i32* @FQRL, align 4
  %301 = call i32 @qm_mr_drain(i32* %299, i32 %300)
  store i32 %301, i32* %8, align 4
  %302 = call i32 (...) @cpu_relax()
  br label %293

303:                                              ; preds = %293
  %304 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %305 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %304, i32 0, i32 1
  %306 = call %union.qm_mc_command* @qm_mc_start(i32* %305)
  store %union.qm_mc_command* %306, %union.qm_mc_command** %6, align 8
  %307 = load %union.qm_mc_command*, %union.qm_mc_command** %6, align 8
  %308 = bitcast %union.qm_mc_command* %307 to i32*
  %309 = load i64, i64* %2, align 8
  %310 = call i32 @qm_fqid_set(i32* %308, i64 %309)
  %311 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %312 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %311, i32 0, i32 1
  %313 = load i32, i32* @QM_MCC_VERB_ALTER_OOS, align 4
  %314 = call i32 @qm_mc_commit(i32* %312, i32 %313)
  %315 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %316 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %315, i32 0, i32 1
  %317 = call i32 @qm_mc_result_timeout(i32* %316, %union.qm_mc_result** %7)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %303
  %320 = load i32, i32* @ETIMEDOUT, align 4
  %321 = sub nsw i32 0, %320
  store i32 %321, i32* %10, align 4
  br label %396

322:                                              ; preds = %303
  %323 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %324 = bitcast %union.qm_mc_result* %323 to i32*
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %327 = and i32 %325, %326
  %328 = load i32, i32* @QM_MCR_VERB_ALTER_OOS, align 4
  %329 = icmp eq i32 %327, %328
  %330 = zext i1 %329 to i32
  %331 = call i32 @DPAA_ASSERT(i32 %330)
  %332 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %333 = bitcast %union.qm_mc_result* %332 to i64*
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %322
  %338 = load %struct.device*, %struct.device** %5, align 8
  %339 = load i64, i64* %2, align 8
  %340 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %341 = bitcast %union.qm_mc_result* %340 to i64*
  %342 = load i64, i64* %341, align 8
  %343 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %338, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %339, i64 %342)
  %344 = load i32, i32* @EIO, align 4
  %345 = sub nsw i32 0, %344
  store i32 %345, i32* %10, align 4
  br label %396

346:                                              ; preds = %322
  br label %395

347:                                              ; preds = %119
  %348 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %349 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %348, i32 0, i32 1
  %350 = call %union.qm_mc_command* @qm_mc_start(i32* %349)
  store %union.qm_mc_command* %350, %union.qm_mc_command** %6, align 8
  %351 = load %union.qm_mc_command*, %union.qm_mc_command** %6, align 8
  %352 = bitcast %union.qm_mc_command* %351 to i32*
  %353 = load i64, i64* %2, align 8
  %354 = call i32 @qm_fqid_set(i32* %352, i64 %353)
  %355 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %356 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %355, i32 0, i32 1
  %357 = load i32, i32* @QM_MCC_VERB_ALTER_OOS, align 4
  %358 = call i32 @qm_mc_commit(i32* %356, i32 %357)
  %359 = load %struct.qman_portal*, %struct.qman_portal** %3, align 8
  %360 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %359, i32 0, i32 1
  %361 = call i32 @qm_mc_result_timeout(i32* %360, %union.qm_mc_result** %7)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %347
  %364 = load i32, i32* @ETIMEDOUT, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %10, align 4
  br label %396

366:                                              ; preds = %347
  %367 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %368 = bitcast %union.qm_mc_result* %367 to i32*
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %371 = and i32 %369, %370
  %372 = load i32, i32* @QM_MCR_VERB_ALTER_OOS, align 4
  %373 = icmp eq i32 %371, %372
  %374 = zext i1 %373 to i32
  %375 = call i32 @DPAA_ASSERT(i32 %374)
  %376 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %377 = bitcast %union.qm_mc_result* %376 to i64*
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %390

381:                                              ; preds = %366
  %382 = load %struct.device*, %struct.device** %5, align 8
  %383 = load i64, i64* %2, align 8
  %384 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %385 = bitcast %union.qm_mc_result* %384 to i64*
  %386 = load i64, i64* %385, align 8
  %387 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %382, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i64 %383, i64 %386)
  %388 = load i32, i32* @EIO, align 4
  %389 = sub nsw i32 0, %388
  store i32 %389, i32* %10, align 4
  br label %396

390:                                              ; preds = %366
  br label %395

391:                                              ; preds = %119
  br label %395

392:                                              ; preds = %119
  %393 = load i32, i32* @EIO, align 4
  %394 = sub nsw i32 0, %393
  store i32 %394, i32* %10, align 4
  br label %395

395:                                              ; preds = %392, %391, %390, %346
  br label %396

396:                                              ; preds = %395, %381, %363, %337, %319, %247, %191, %137, %110, %79, %62, %39
  %397 = call i32 (...) @put_affine_portal()
  %398 = load i32, i32* %10, align 4
  ret i32 %398
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

declare dso_local i32 @qm_fqid_set(i32*, i64) #1

declare dso_local i32 @qm_mc_commit(i32*, i32) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i64 @qm_fqd_get_chan(i32*) #1

declare dso_local i64 @qm_fqd_get_wq(i32*) #1

declare dso_local %struct.qman_portal* @get_portal_for_channel(i64) #1

declare dso_local i32 @drain_mr_fqrni(i32*) #1

declare dso_local i32 @qm_dqrr_sdqcr_set(i32*, i32) #1

declare dso_local i32 @QM_SDQCR_CHANNELS_POOL_CONV(i64) #1

declare dso_local i32 @qm_dqrr_drain_nomatch(i32*) #1

declare dso_local i32 @qm_mr_drain(i32*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @QM_VDQCR_NUMFRAMES_SET(i32) #1

declare dso_local i32 @qm_dqrr_vdqcr_set(i32*, i64) #1

declare dso_local i32 @qm_dqrr_drain_wait(i32*, i64, i32) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
