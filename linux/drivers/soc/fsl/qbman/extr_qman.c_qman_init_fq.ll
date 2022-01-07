; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_init_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_init_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qman_fq = type { i64, i32, i32 }
%struct.qm_mcc_initfq = type { %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%union.qm_mc_command = type { %struct.qm_mcc_initfq }
%union.qm_mc_result = type { i64 }

@QMAN_INITFQ_FLAG_SCHED = common dso_local global i32 0, align 4
@QM_MCC_VERB_INITFQ_SCHED = common dso_local global i64 0, align 8
@QM_MCC_VERB_INITFQ_PARKED = common dso_local global i64 0, align 8
@qman_fq_state_oos = common dso_local global i64 0, align 8
@qman_fq_state_parked = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QM_INITFQ_WE_OAC = common dso_local global i32 0, align 4
@QM_INITFQ_WE_TDTHRESH = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_TO_DCPORTAL = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CONTEXTB = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CONTEXTA = common dso_local global i32 0, align 4
@qman_dma_portal = common dso_local global %struct.qman_portal* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dma_mapping failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QMAN_INITFQ_FLAG_LOCAL = common dso_local global i32 0, align 4
@QM_INITFQ_WE_DESTWQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MCR timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i64 0, align 8
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@QM_INITFQ_WE_FQCTRL = common dso_local global i32 0, align 4
@QM_FQCTRL_CGE = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CGR_EN = common dso_local global i32 0, align 4
@QM_INITFQ_WE_CGID = common dso_local global i32 0, align 4
@qman_fq_state_sched = common dso_local global i64 0, align 8
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_init_fq(%struct.qman_fq* %0, i32 %1, %struct.qm_mcc_initfq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qm_mcc_initfq*, align 8
  %8 = alloca %union.qm_mc_command*, align 8
  %9 = alloca %union.qm_mc_result*, align 8
  %10 = alloca %struct.qman_portal*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.qman_portal*, align 8
  %16 = alloca i32, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qm_mcc_initfq* %2, %struct.qm_mcc_initfq** %7, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @QMAN_INITFQ_FLAG_SCHED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @QM_MCC_VERB_INITFQ_SCHED, align 8
  br label %25

23:                                               ; preds = %3
  %24 = load i64, i64* @QM_MCC_VERB_INITFQ_PARKED, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %12, align 8
  %27 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %28 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @qman_fq_state_oos, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %34 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @qman_fq_state_parked, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %312

41:                                               ; preds = %32, %25
  %42 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %43 = icmp ne %struct.qm_mcc_initfq* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %46 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @be16_to_cpu(i32 %47)
  %49 = load i32, i32* @QM_INITFQ_WE_OAC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %54 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @be16_to_cpu(i32 %55)
  %57 = load i32, i32* @QM_INITFQ_WE_TDTHRESH, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %312

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %44, %41
  %65 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %65, %struct.qman_portal** %10, align 8
  %66 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %67 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %68 = call i64 @fq_isset(%struct.qman_fq* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %64
  %71 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %72 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @qman_fq_state_oos, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %78 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @qman_fq_state_parked, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %64
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %13, align 4
  br label %309

85:                                               ; preds = %76, %70
  %86 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %87 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %86, i32 0, i32 1
  %88 = call %union.qm_mc_command* @qm_mc_start(i32* %87)
  store %union.qm_mc_command* %88, %union.qm_mc_command** %8, align 8
  %89 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %90 = icmp ne %struct.qm_mcc_initfq* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %93 = bitcast %union.qm_mc_command* %92 to %struct.qm_mcc_initfq*
  %94 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %95 = bitcast %struct.qm_mcc_initfq* %93 to i8*
  %96 = bitcast %struct.qm_mcc_initfq* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 32, i1 false)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %99 = bitcast %union.qm_mc_command* %98 to i32*
  %100 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %101 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @qm_fqid_set(i32* %99, i32 %102)
  %104 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %105 = bitcast %union.qm_mc_command* %104 to %struct.qm_mcc_initfq*
  %106 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %105, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %108 = load i32, i32* @QMAN_FQ_FLAG_TO_DCPORTAL, align 4
  %109 = call i64 @fq_isclear(%struct.qman_fq* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %181

111:                                              ; preds = %97
  %112 = load i32, i32* @QM_INITFQ_WE_CONTEXTB, align 4
  %113 = call i32 @cpu_to_be16(i32 %112)
  %114 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %115 = bitcast %union.qm_mc_command* %114 to %struct.qm_mcc_initfq*
  %116 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %113
  store i32 %118, i32* %116, align 8
  %119 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %120 = call i32 @fq_to_tag(%struct.qman_fq* %119)
  %121 = call i32 @cpu_to_be32(i32 %120)
  %122 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %123 = bitcast %union.qm_mc_command* %122 to %struct.qm_mcc_initfq*
  %124 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  store i32 %121, i32* %125, align 4
  %126 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %127 = bitcast %union.qm_mc_command* %126 to %struct.qm_mcc_initfq*
  %128 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @be16_to_cpu(i32 %129)
  %131 = load i32, i32* @QM_INITFQ_WE_CONTEXTA, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %111
  %135 = load i32, i32* @QM_INITFQ_WE_CONTEXTA, align 4
  %136 = call i32 @cpu_to_be16(i32 %135)
  %137 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %138 = bitcast %union.qm_mc_command* %137 to %struct.qm_mcc_initfq*
  %139 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 8
  %142 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %143 = bitcast %union.qm_mc_command* %142 to %struct.qm_mcc_initfq*
  %144 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = call i32 @memset(i32* %145, i32 0, i32 4)
  br label %180

147:                                              ; preds = %111
  %148 = load %struct.qman_portal*, %struct.qman_portal** @qman_dma_portal, align 8
  store %struct.qman_portal* %148, %struct.qman_portal** %15, align 8
  %149 = load %struct.qman_portal*, %struct.qman_portal** %15, align 8
  %150 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %155 = load i32, i32* @DMA_TO_DEVICE, align 4
  %156 = call i32 @dma_map_single(i32 %153, %struct.qman_fq* %154, i32 16, i32 %155)
  store i32 %156, i32* %14, align 4
  %157 = load %struct.qman_portal*, %struct.qman_portal** %15, align 8
  %158 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i64 @dma_mapping_error(i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %147
  %166 = load %struct.qman_portal*, %struct.qman_portal** %15, align 8
  %167 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dev_err(i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %13, align 4
  br label %309

174:                                              ; preds = %147
  %175 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %176 = bitcast %union.qm_mc_command* %175 to %struct.qm_mcc_initfq*
  %177 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %176, i32 0, i32 0
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @qm_fqd_stashing_set64(%struct.TYPE_5__* %177, i32 %178)
  br label %180

180:                                              ; preds = %174, %134
  br label %181

181:                                              ; preds = %180, %97
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @QMAN_INITFQ_FLAG_LOCAL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %214

186:                                              ; preds = %181
  store i32 0, i32* %16, align 4
  %187 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %188 = bitcast %union.qm_mc_command* %187 to %struct.qm_mcc_initfq*
  %189 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @be16_to_cpu(i32 %190)
  %192 = load i32, i32* @QM_INITFQ_WE_DESTWQ, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %186
  %196 = load i32, i32* @QM_INITFQ_WE_DESTWQ, align 4
  %197 = call i32 @cpu_to_be16(i32 %196)
  %198 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %199 = bitcast %union.qm_mc_command* %198 to %struct.qm_mcc_initfq*
  %200 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %197
  store i32 %202, i32* %200, align 8
  store i32 4, i32* %16, align 4
  br label %203

203:                                              ; preds = %195, %186
  %204 = load %union.qm_mc_command*, %union.qm_mc_command** %8, align 8
  %205 = bitcast %union.qm_mc_command* %204 to %struct.qm_mcc_initfq*
  %206 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %205, i32 0, i32 0
  %207 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %208 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %16, align 4
  %213 = call i32 @qm_fqd_set_destwq(%struct.TYPE_5__* %206, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %203, %181
  %215 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %216 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %215, i32 0, i32 1
  %217 = load i64, i64* %12, align 8
  %218 = call i32 @qm_mc_commit(i32* %216, i64 %217)
  %219 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %220 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %219, i32 0, i32 1
  %221 = call i32 @qm_mc_result_timeout(i32* %220, %union.qm_mc_result** %9)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %214
  %224 = load %struct.qman_portal*, %struct.qman_portal** %10, align 8
  %225 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %224, i32 0, i32 0
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @dev_err(i32 %228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %230 = load i32, i32* @ETIMEDOUT, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %13, align 4
  br label %309

232:                                              ; preds = %214
  %233 = load %union.qm_mc_result*, %union.qm_mc_result** %9, align 8
  %234 = bitcast %union.qm_mc_result* %233 to i64*
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @QM_MCR_VERB_MASK, align 8
  %237 = and i64 %235, %236
  %238 = load i64, i64* %12, align 8
  %239 = icmp eq i64 %237, %238
  %240 = zext i1 %239 to i32
  %241 = call i32 @DPAA_ASSERT(i32 %240)
  %242 = load %union.qm_mc_result*, %union.qm_mc_result** %9, align 8
  %243 = bitcast %union.qm_mc_result* %242 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %11, align 8
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %247 = icmp ne i64 %245, %246
  br i1 %247, label %248, label %251

248:                                              ; preds = %232
  %249 = load i32, i32* @EIO, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %13, align 4
  br label %309

251:                                              ; preds = %232
  %252 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %253 = icmp ne %struct.qm_mcc_initfq* %252, null
  br i1 %253, label %254, label %296

254:                                              ; preds = %251
  %255 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %256 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @be16_to_cpu(i32 %257)
  %259 = load i32, i32* @QM_INITFQ_WE_FQCTRL, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %280

262:                                              ; preds = %254
  %263 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %264 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @be16_to_cpu(i32 %266)
  %268 = load i32, i32* @QM_FQCTRL_CGE, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %262
  %272 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %273 = load i32, i32* @QMAN_FQ_STATE_CGR_EN, align 4
  %274 = call i32 @fq_set(%struct.qman_fq* %272, i32 %273)
  br label %279

275:                                              ; preds = %262
  %276 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %277 = load i32, i32* @QMAN_FQ_STATE_CGR_EN, align 4
  %278 = call i32 @fq_clear(%struct.qman_fq* %276, i32 %277)
  br label %279

279:                                              ; preds = %275, %271
  br label %280

280:                                              ; preds = %279, %254
  %281 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %282 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @be16_to_cpu(i32 %283)
  %285 = load i32, i32* @QM_INITFQ_WE_CGID, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %295

288:                                              ; preds = %280
  %289 = load %struct.qm_mcc_initfq*, %struct.qm_mcc_initfq** %7, align 8
  %290 = getelementptr inbounds %struct.qm_mcc_initfq, %struct.qm_mcc_initfq* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %294 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %293, i32 0, i32 1
  store i32 %292, i32* %294, align 8
  br label %295

295:                                              ; preds = %288, %280
  br label %296

296:                                              ; preds = %295, %251
  %297 = load i32, i32* %6, align 4
  %298 = load i32, i32* @QMAN_INITFQ_FLAG_SCHED, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i64, i64* @qman_fq_state_sched, align 8
  br label %305

303:                                              ; preds = %296
  %304 = load i64, i64* @qman_fq_state_parked, align 8
  br label %305

305:                                              ; preds = %303, %301
  %306 = phi i64 [ %302, %301 ], [ %304, %303 ]
  %307 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %308 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %307, i32 0, i32 0
  store i64 %306, i64* %308, align 8
  br label %309

309:                                              ; preds = %305, %248, %223, %165, %82
  %310 = call i32 (...) @put_affine_portal()
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* %4, align 4
  br label %312

312:                                              ; preds = %309, %60, %38
  %313 = load i32, i32* %4, align 4
  ret i32 %313
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local i64 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qm_fqid_set(i32*, i32) #1

declare dso_local i64 @fq_isclear(%struct.qman_fq*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fq_to_tag(%struct.qman_fq*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.qman_fq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @qm_fqd_stashing_set64(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @qm_fqd_set_destwq(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @qm_mc_commit(i32*, i64) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @fq_set(%struct.qman_fq*, i32) #1

declare dso_local i32 @fq_clear(%struct.qman_fq*, i32) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
