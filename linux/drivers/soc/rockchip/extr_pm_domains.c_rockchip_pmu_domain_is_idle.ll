; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_domain_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_domain_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { %struct.rockchip_domain_info*, %struct.rockchip_pmu* }
%struct.rockchip_domain_info = type { i32 }
%struct.rockchip_pmu = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pm_domain*)* @rockchip_pmu_domain_is_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmu_domain_is_idle(%struct.rockchip_pm_domain* %0) #0 {
  %2 = alloca %struct.rockchip_pm_domain*, align 8
  %3 = alloca %struct.rockchip_pmu*, align 8
  %4 = alloca %struct.rockchip_domain_info*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %2, align 8
  %6 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %7 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %6, i32 0, i32 1
  %8 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %7, align 8
  store %struct.rockchip_pmu* %8, %struct.rockchip_pmu** %3, align 8
  %9 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %2, align 8
  %10 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %9, i32 0, i32 0
  %11 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %10, align 8
  store %struct.rockchip_domain_info* %11, %struct.rockchip_domain_info** %4, align 8
  %12 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %3, align 8
  %16 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regmap_read(i32 %14, i32 %19, i32* %5)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %4, align 8
  %23 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = load %struct.rockchip_domain_info*, %struct.rockchip_domain_info** %4, align 8
  %27 = getelementptr inbounds %struct.rockchip_domain_info, %struct.rockchip_domain_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
