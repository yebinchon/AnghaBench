; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_oos_fq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qman_oos_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i64, i32 }
%union.qm_mc_command = type { i32 }
%union.qm_mc_result = type { i64 }
%struct.qman_portal = type { i32 }

@qman_fq_state_retired = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_BLOCKOOS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@QM_MCC_VERB_ALTER_OOS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_ALTER_OOS = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@qman_fq_state_oos = common dso_local global i64 0, align 8
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qman_oos_fq(%struct.qman_fq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qman_fq*, align 8
  %4 = alloca %union.qm_mc_command*, align 8
  %5 = alloca %union.qm_mc_result*, align 8
  %6 = alloca %struct.qman_portal*, align 8
  %7 = alloca i32, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %9 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @qman_fq_state_retired, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %1
  %17 = call %struct.qman_portal* (...) @get_affine_portal()
  store %struct.qman_portal* %17, %struct.qman_portal** %6, align 8
  %18 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %19 = load i32, i32* @QMAN_FQ_STATE_BLOCKOOS, align 4
  %20 = call i64 @fq_isset(%struct.qman_fq* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %24 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @qman_fq_state_retired, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22, %16
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %74

31:                                               ; preds = %22
  %32 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %33 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %32, i32 0, i32 0
  %34 = call %union.qm_mc_command* @qm_mc_start(i32* %33)
  store %union.qm_mc_command* %34, %union.qm_mc_command** %4, align 8
  %35 = load %union.qm_mc_command*, %union.qm_mc_command** %4, align 8
  %36 = bitcast %union.qm_mc_command* %35 to i32*
  %37 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %38 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @qm_fqid_set(i32* %36, i32 %39)
  %41 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %42 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %41, i32 0, i32 0
  %43 = load i32, i32* @QM_MCC_VERB_ALTER_OOS, align 4
  %44 = call i32 @qm_mc_commit(i32* %42, i32 %43)
  %45 = load %struct.qman_portal*, %struct.qman_portal** %6, align 8
  %46 = getelementptr inbounds %struct.qman_portal, %struct.qman_portal* %45, i32 0, i32 0
  %47 = call i32 @qm_mc_result_timeout(i32* %46, %union.qm_mc_result** %5)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %74

52:                                               ; preds = %31
  %53 = load %union.qm_mc_result*, %union.qm_mc_result** %5, align 8
  %54 = bitcast %union.qm_mc_result* %53 to i32*
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @QM_MCR_VERB_ALTER_OOS, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @DPAA_ASSERT(i32 %60)
  %62 = load %union.qm_mc_result*, %union.qm_mc_result** %5, align 8
  %63 = bitcast %union.qm_mc_result* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %74

70:                                               ; preds = %52
  %71 = load i64, i64* @qman_fq_state_oos, align 8
  %72 = load %struct.qman_fq*, %struct.qman_fq** %3, align 8
  %73 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %70, %67, %49, %28
  %75 = call i32 (...) @put_affine_portal()
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %13
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.qman_portal* @get_affine_portal(...) #1

declare dso_local i64 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local %union.qm_mc_command* @qm_mc_start(i32*) #1

declare dso_local i32 @qm_fqid_set(i32*, i32) #1

declare dso_local i32 @qm_mc_commit(i32*, i32) #1

declare dso_local i32 @qm_mc_result_timeout(i32*, %union.qm_mc_result**) #1

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @put_affine_portal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
