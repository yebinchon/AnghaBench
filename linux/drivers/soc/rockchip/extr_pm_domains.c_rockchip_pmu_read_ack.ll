; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_read_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pmu_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pmu = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pmu*)* @rockchip_pmu_read_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pmu_read_ack(%struct.rockchip_pmu* %0) #0 {
  %2 = alloca %struct.rockchip_pmu*, align 8
  %3 = alloca i32, align 4
  store %struct.rockchip_pmu* %0, %struct.rockchip_pmu** %2, align 8
  %4 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %2, align 8
  %5 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %2, align 8
  %8 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regmap_read(i32 %6, i32 %11, i32* %3)
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
