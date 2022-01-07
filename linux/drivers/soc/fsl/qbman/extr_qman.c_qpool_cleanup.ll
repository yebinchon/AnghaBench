; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qpool_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_qpool_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }
%struct.qm_mcr_queryfq_np = type { i32 }
%struct.qm_fqd = type { i32 }

@QM_FQID_RANGE_START = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@QM_MCR_NP_STATE_MASK = common dso_local global i32 0, align 4
@QM_MCR_NP_STATE_OOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @qpool_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpool_cleanup(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.qman_fq, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qm_mcr_queryfq_np, align 4
  %7 = alloca %struct.qm_fqd, align 4
  store i64 %0, i64* %3, align 8
  %8 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %4, i32 0, i32 0
  %9 = load i32, i32* @QM_FQID_RANGE_START, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = call i32 @qman_query_fq_np(%struct.qman_fq* %4, %struct.qm_mcr_queryfq_np* %6)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ERANGE, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %57

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %57

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.qm_mcr_queryfq_np, %struct.qm_mcr_queryfq_np* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @QM_MCR_NP_STATE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @QM_MCR_NP_STATE_OOS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = call i32 @qman_query_fq(%struct.qman_fq* %4, %struct.qm_fqd* %7)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %31
  %39 = call i64 @qm_fqd_get_chan(%struct.qm_fqd* %7)
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qman_shutdown_fq(i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %57

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %24
  %53 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %52
  br i1 true, label %10, label %57

57:                                               ; preds = %16, %21, %36, %48, %56
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @qman_query_fq_np(%struct.qman_fq*, %struct.qm_mcr_queryfq_np*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @qman_query_fq(%struct.qman_fq*, %struct.qm_fqd*) #1

declare dso_local i64 @qm_fqd_get_chan(%struct.qm_fqd*) #1

declare dso_local i32 @qman_shutdown_fq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
