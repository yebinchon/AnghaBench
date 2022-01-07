; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pm_domain_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pm_domain_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pmu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.generic_pm_domain** }
%struct.generic_pm_domain = type { i32 }
%struct.rockchip_pm_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_pmu*)* @rockchip_pm_domain_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_pm_domain_cleanup(%struct.rockchip_pmu* %0) #0 {
  %2 = alloca %struct.rockchip_pmu*, align 8
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.rockchip_pm_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pmu* %0, %struct.rockchip_pmu** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %2, align 8
  %9 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %6
  %14 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %2, align 8
  %15 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %17, i64 %19
  %21 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %20, align 8
  store %struct.generic_pm_domain* %21, %struct.generic_pm_domain** %3, align 8
  %22 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %23 = icmp ne %struct.generic_pm_domain* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %26 = call %struct.rockchip_pm_domain* @to_rockchip_pd(%struct.generic_pm_domain* %25)
  store %struct.rockchip_pm_domain* %26, %struct.rockchip_pm_domain** %4, align 8
  %27 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %28 = call i32 @rockchip_pm_remove_one_domain(%struct.rockchip_pm_domain* %27)
  br label %29

29:                                               ; preds = %24, %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6

33:                                               ; preds = %6
  ret void
}

declare dso_local %struct.rockchip_pm_domain* @to_rockchip_pd(%struct.generic_pm_domain*) #1

declare dso_local i32 @rockchip_pm_remove_one_domain(%struct.rockchip_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
