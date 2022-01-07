; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_domain_is_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_domain_is_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { %struct.TYPE_4__*, %struct.rockchip_pmu* }
%struct.TYPE_4__ = type { i32 }
%struct.rockchip_pmu = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pm_domain*)* @rockchip_pmu_domain_is_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmu_domain_is_on(%struct.rockchip_pm_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pm_domain*, align 8
  %4 = alloca %struct.rockchip_pmu*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %3, align 8
  %6 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %6, i32 0, i32 1
  %8 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %7, align 8
  store %struct.rockchip_pmu* %8, %struct.rockchip_pmu** %4, align 8
  %9 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %17 = call i32 @rockchip_pmu_domain_is_idle(%struct.rockchip_pm_domain* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %23 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %4, align 8
  %26 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @regmap_read(i32 %24, i32 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %3, align 8
  %33 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %31, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %21, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @rockchip_pmu_domain_is_idle(%struct.rockchip_pm_domain*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
