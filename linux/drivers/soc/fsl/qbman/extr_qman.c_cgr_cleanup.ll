; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_cgr_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/fsl/qbman/extr_qman.c_cgr_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }
%struct.qm_mcr_queryfq_np = type { i32 }
%struct.qm_fqd = type { i64, i32 }

@QM_FQID_RANGE_START = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@QM_MCR_NP_STATE_MASK = common dso_local global i32 0, align 4
@QM_MCR_NP_STATE_OOS = common dso_local global i32 0, align 4
@QM_FQCTRL_CGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"CRGID 0x%x is being used by FQID 0x%x, CGR will be leaked\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @cgr_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgr_cleanup(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.qman_fq, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qm_mcr_queryfq_np, align 4
  %7 = alloca %struct.qm_fqd, align 8
  store i64 %0, i64* %3, align 8
  %8 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %4, i32 0, i32 0
  %9 = load i32, i32* @QM_FQID_RANGE_START, align 4
  store i32 %9, i32* %8, align 4
  br label %10

10:                                               ; preds = %62, %1
  %11 = call i32 @qman_query_fq_np(%struct.qman_fq* %4, %struct.qm_mcr_queryfq_np* %6)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ERANGE, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %63

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %63

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.qm_mcr_queryfq_np, %struct.qm_mcr_queryfq_np* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @QM_MCR_NP_STATE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @QM_MCR_NP_STATE_OOS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %58

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
  br label %63

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.qm_fqd, %struct.qm_fqd* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be16_to_cpu(i32 %40)
  %42 = load i32, i32* @QM_FQCTRL_CGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.qm_fqd, %struct.qm_fqd* %7, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %3, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %4, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %63

57:                                               ; preds = %45, %38
  br label %58

58:                                               ; preds = %57, %24
  %59 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %58
  br i1 true, label %10, label %63

63:                                               ; preds = %16, %21, %36, %50, %62
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @qman_query_fq_np(%struct.qman_fq*, %struct.qm_mcr_queryfq_np*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @qman_query_fq(%struct.qman_fq*, %struct.qm_fqd*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
