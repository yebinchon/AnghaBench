; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_pds_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_pds_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32 }
%struct.device = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*, %struct.device**, i64)* @q6v5_pds_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_pds_enable(%struct.q6v5* %0, %struct.device** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.q6v5*, align 8
  %6 = alloca %struct.device**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %5, align 8
  store %struct.device** %1, %struct.device*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %33, %3
  %11 = load i32, i32* %9, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %10
  %16 = load %struct.device**, %struct.device*** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.device*, %struct.device** %16, i64 %18
  %20 = load %struct.device*, %struct.device** %19, align 8
  %21 = load i32, i32* @INT_MAX, align 4
  %22 = call i32 @dev_pm_genpd_set_performance_state(%struct.device* %20, i32 %21)
  %23 = load %struct.device**, %struct.device*** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.device*, %struct.device** %23, i64 %25
  %27 = load %struct.device*, %struct.device** %26, align 8
  %28 = call i32 @pm_runtime_get_sync(%struct.device* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %37

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %10

36:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %61

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %56, %37
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.device**, %struct.device*** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.device*, %struct.device** %44, i64 %46
  %48 = load %struct.device*, %struct.device** %47, align 8
  %49 = call i32 @dev_pm_genpd_set_performance_state(%struct.device* %48, i32 0)
  %50 = load %struct.device**, %struct.device*** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.device*, %struct.device** %50, i64 %52
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = call i32 @pm_runtime_put(%struct.device* %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %9, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %36
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @dev_pm_genpd_set_performance_state(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
