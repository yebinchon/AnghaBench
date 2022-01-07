; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i64 }
%struct.qcom_wcnss = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"timed out on wait\0A\00", align 1
@WCNSS_PAS_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to shutdown: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @wcnss_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_stop(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.qcom_wcnss*, align 8
  %4 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %5 = load %struct.rproc*, %struct.rproc** %2, align 8
  %6 = getelementptr inbounds %struct.rproc, %struct.rproc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.qcom_wcnss*
  store %struct.qcom_wcnss* %8, %struct.qcom_wcnss** %3, align 8
  %9 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %10 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %15 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %18 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %22 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = call i32 @qcom_smem_state_update_bits(i64 %16, i32 %20, i32 %24)
  %26 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %27 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %26, i32 0, i32 3
  %28 = call i32 @msecs_to_jiffies(i32 5000)
  %29 = call i32 @wait_for_completion_timeout(i32* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %13
  %33 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %13
  %38 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %39 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %42 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = call i32 @qcom_smem_state_update_bits(i64 %40, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %37, %1
  %47 = load i32, i32* @WCNSS_PAS_ID, align 4
  %48 = call i32 @qcom_scm_pas_shutdown(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %3, align 8
  %53 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @qcom_smem_state_update_bits(i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @qcom_scm_pas_shutdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
