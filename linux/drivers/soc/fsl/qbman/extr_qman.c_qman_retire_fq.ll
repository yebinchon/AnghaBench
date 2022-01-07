; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_retire_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_retire_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.qman_portal*, %struct.qman_fq.0*, %union.qm_mr_entry*)* }
%struct.qman_portal = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qman_fq.0 = type opaque
%union.qm_mr_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%union.qm_mc_command = type { %struct.TYPE_8__ }
%union.qm_mc_result = type { i64 }
%struct.TYPE_6__ = type { i32 }

@qman_fq_state_parked = common dso_local global i64 0, align 8
@qman_fq_state_sched = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@qman_fq_state_retired = common dso_local global i64 0, align 8
@qman_fq_state_oos = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@QM_MCC_VERB_ALTER_RETIRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ALTER_RETIRE timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_ALTER_RETIRE = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@QM_MCR_FQS_NOTEMPTY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@QM_MCR_FQS_ORLPRESENT = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_ORL = common dso_local global i32 0, align 4
@QM_MR_VERB_FQRNI = common dso_local global i32 0, align 4
@QM_MCR_RESULT_PENDING = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_retire_fq(%struct.qman_fq* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qman_fq*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.qm_mc_command*, align 8
  %7 = alloca %union.qm_mc_result*, align 8
  %8 = alloca %struct.qman_portal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %union.qm_mr_entry, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %13 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @qman_fq_state_parked, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %19 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @qman_fq_state_sched, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %175

26:                                               ; preds = %17, %2
  %27 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %27, %struct.qman_portal** %8, align 8
  %28 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %29 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %30 = call i64 @fq_isset(%struct.qman_fq* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %34 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @qman_fq_state_retired, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %40 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @qman_fq_state_oos, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %32, %26
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %172

47:                                               ; preds = %38
  %48 = load %struct.qman_portal*, %struct.qman_portal** %8, align 8
  %49 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %48, i32 0, i32 1
  %50 = call %union.qm_mc_command* @qm_mc_start(i32* %49)
  store %union.qm_mc_command* %50, %union.qm_mc_command** %6, align 8
  %51 = load %union.qm_mc_command*, %union.qm_mc_command** %6, align 8
  %52 = bitcast %union.qm_mc_command* %51 to %struct.TYPE_8__*
  %53 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %54 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @qm_fqid_set(%struct.TYPE_8__* %52, i32 %55)
  %57 = load %struct.qman_portal*, %struct.qman_portal** %8, align 8
  %58 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %57, i32 0, i32 1
  %59 = load i32, i32* @QM_MCC_VERB_ALTER_RETIRE, align 4
  %60 = call i32 @qm_mc_commit(i32* %58, i32 %59)
  %61 = load %struct.qman_portal*, %struct.qman_portal** %8, align 8
  %62 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %61, i32 0, i32 1
  %63 = call i32 @qm_mc_result_timeout(i32* %62, %union.qm_mc_result** %7)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %47
  %66 = load %struct.qman_portal*, %struct.qman_portal** %8, align 8
  %67 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_crit(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ETIMEDOUT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %172

74:                                               ; preds = %47
  %75 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %76 = bitcast %union.qm_mc_result* %75 to i32*
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @QM_MCR_VERB_ALTER_RETIRE, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @DPAA_ASSERT(i32 %82)
  %84 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %85 = bitcast %union.qm_mc_result* %84 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %159

90:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  %91 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %92 = bitcast %union.qm_mc_result* %91 to %struct.TYPE_6__*
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @QM_MCR_FQS_NOTEMPTY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %90
  %99 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %100 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %101 = call i32 @fq_set(%struct.qman_fq* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %90
  %103 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %104 = bitcast %union.qm_mc_result* %103 to %struct.TYPE_6__*
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @QM_MCR_FQS_ORLPRESENT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %102
  %111 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %112 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %113 = call i32 @fq_set(%struct.qman_fq* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %102
  %115 = load i32*, i32** %5, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %119 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %5, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i64, i64* @qman_fq_state_retired, align 8
  %124 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %125 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %127 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32 (%struct.qman_portal*, %struct.qman_fq.0*, %union.qm_mr_entry*)*, i32 (%struct.qman_portal*, %struct.qman_fq.0*, %union.qm_mr_entry*)** %128, align 8
  %130 = icmp ne i32 (%struct.qman_portal*, %struct.qman_fq.0*, %union.qm_mr_entry*)* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %122
  %132 = load i32, i32* @QM_MR_VERB_FQRNI, align 4
  %133 = bitcast %union.qm_mr_entry* %11 to i32*
  store i32 %132, i32* %133, align 4
  %134 = load %union.qm_mc_result*, %union.qm_mc_result** %7, align 8
  %135 = bitcast %union.qm_mc_result* %134 to %struct.TYPE_6__*
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = bitcast %union.qm_mr_entry* %11 to %struct.TYPE_8__*
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = bitcast %union.qm_mr_entry* %11 to %struct.TYPE_8__*
  %141 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %142 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @qm_fqid_set(%struct.TYPE_8__* %140, i32 %143)
  %145 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %146 = call i32 @fq_to_tag(%struct.qman_fq* %145)
  %147 = call i32 @cpu_to_be32(i32 %146)
  %148 = bitcast %union.qm_mr_entry* %11 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %151 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32 (%struct.qman_portal*, %struct.qman_fq.0*, %union.qm_mr_entry*)*, i32 (%struct.qman_portal*, %struct.qman_fq.0*, %union.qm_mr_entry*)** %152, align 8
  %154 = load %struct.qman_portal*, %struct.qman_portal** %8, align 8
  %155 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %156 = bitcast %struct.qman_fq* %155 to %struct.qman_fq.0*
  %157 = call i32 %153(%struct.qman_portal* %154, %struct.qman_fq.0* %156, %union.qm_mr_entry* %11)
  br label %158

158:                                              ; preds = %131, %122
  br label %171

159:                                              ; preds = %74
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* @QM_MCR_RESULT_PENDING, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  store i32 1, i32* %9, align 4
  %164 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %165 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %166 = call i32 @fq_set(%struct.qman_fq* %164, i32 %165)
  br label %170

167:                                              ; preds = %159
  %168 = load i32, i32* @EIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %167, %163
  br label %171

171:                                              ; preds = %170, %158
  br label %172

172:                                              ; preds = %171, %65, %44
  %173 = call i32 (...) @put_affine_portal()
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %172, %23
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local i64 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

declare dso_local i32 @qm_fqid_set(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @qm_mc_commit(i32*, i32) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @fq_set(%struct.qman_fq*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @fq_to_tag(%struct.qman_fq*) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
