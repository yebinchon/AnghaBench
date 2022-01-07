; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_set_performance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_rpmpd.c_rpmpd_set_performance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.rpmpd = type { i32, i32, i64, i32 }

@rpmpd_lock = common dso_local global i32 0, align 4
@KEY_FLOOR_CORNER = common dso_local global i64 0, align 8
@KEY_FLOOR_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, i32)* @rpmpd_set_performance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmpd_set_performance(%struct.generic_pm_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmpd*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %8 = call %struct.rpmpd* @domain_to_rpmpd(%struct.generic_pm_domain* %7)
  store %struct.rpmpd* %8, %struct.rpmpd** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %11 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %16 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = call i32 @mutex_lock(i32* @rpmpd_lock)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %22 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %24 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %18
  %28 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %29 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KEY_FLOOR_CORNER, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %35 = getelementptr inbounds %struct.rpmpd, %struct.rpmpd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @KEY_FLOOR_LEVEL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %43

40:                                               ; preds = %33, %27, %18
  %41 = load %struct.rpmpd*, %struct.rpmpd** %6, align 8
  %42 = call i32 @rpmpd_aggregate_corner(%struct.rpmpd* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = call i32 @mutex_unlock(i32* @rpmpd_lock)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.rpmpd* @domain_to_rpmpd(%struct.generic_pm_domain*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rpmpd_aggregate_corner(%struct.rpmpd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
