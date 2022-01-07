; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_fq_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_fq_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%union.qm_mr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QMAN_FQ_STATE_ORL = common dso_local global i32 0, align 4
@qman_fq_state_parked = common dso_local global i32 0, align 4
@qman_fq_state_sched = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@QM_MR_FQS_NOTEMPTY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@QM_MR_FQS_ORLPRESENT = common dso_local global i32 0, align 4
@qman_fq_state_retired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_portal*, %struct.qman_fq*, %union.qm_mr_entry*, i32)* @fq_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_state_change(%struct.qman_portal* %0, %struct.qman_fq* %1, %union.qm_mr_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.qman_portal*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca %union.qm_mr_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store %union.qm_mr_entry* %2, %union.qm_mr_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %83 [
    i32 129, label %10
    i32 128, label %18
    i32 130, label %68
  ]

10:                                               ; preds = %4
  %11 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %12 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %13 = call i32 @fq_isset(%struct.qman_fq* %11, i32 %12)
  %14 = call i32 @DPAA_ASSERT(i32 %13)
  %15 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %16 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %17 = call i32 @fq_clear(%struct.qman_fq* %15, i32 %16)
  br label %83

18:                                               ; preds = %4
  %19 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %20 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @qman_fq_state_parked, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %26 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @qman_fq_state_sched, align 4
  %29 = icmp eq i32 %27, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ true, %18 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @DPAA_ASSERT(i32 %32)
  %34 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %35 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %36 = call i32 @fq_isset(%struct.qman_fq* %34, i32 %35)
  %37 = call i32 @DPAA_ASSERT(i32 %36)
  %38 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %39 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %40 = call i32 @fq_clear(%struct.qman_fq* %38, i32 %39)
  %41 = load %union.qm_mr_entry*, %union.qm_mr_entry** %7, align 8
  %42 = bitcast %union.qm_mr_entry* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @QM_MR_FQS_NOTEMPTY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %30
  %49 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %50 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %51 = call i32 @fq_set(%struct.qman_fq* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %30
  %53 = load %union.qm_mr_entry*, %union.qm_mr_entry** %7, align 8
  %54 = bitcast %union.qm_mr_entry* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @QM_MR_FQS_ORLPRESENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %62 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %63 = call i32 @fq_set(%struct.qman_fq* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* @qman_fq_state_retired, align 4
  %66 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %67 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %83

68:                                               ; preds = %4
  %69 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %70 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @qman_fq_state_sched, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @DPAA_ASSERT(i32 %74)
  %76 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %77 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %78 = call i32 @fq_isclear(%struct.qman_fq* %76, i32 %77)
  %79 = call i32 @DPAA_ASSERT(i32 %78)
  %80 = load i32, i32* @qman_fq_state_parked, align 4
  %81 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %82 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %68, %4, %64, %10
  ret void
}

declare dso_local i32 @DPAA_ASSERT(i32) #1

declare dso_local i32 @fq_isset(%struct.qman_fq*, i32) #1

declare dso_local i32 @fq_clear(%struct.qman_fq*, i32) #1

declare dso_local i32 @fq_set(%struct.qman_fq*, i32) #1

declare dso_local i32 @fq_isclear(%struct.qman_fq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
