; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rk3368_iodomain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/avs/extr_rockchip-io-domain.c_rk3368_iodomain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_iodomain = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RK3368_SOC_FLASH_SUPPLY_NUM = common dso_local global i64 0, align 8
@RK3368_SOC_CON15_FLASH0 = common dso_local global i32 0, align 4
@RK3368_SOC_CON15 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"couldn't update flash0 ctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_iodomain*)* @rk3368_iodomain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3368_iodomain_init(%struct.rockchip_iodomain* %0) #0 {
  %2 = alloca %struct.rockchip_iodomain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rockchip_iodomain* %0, %struct.rockchip_iodomain** %2, align 8
  %5 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %2, align 8
  %6 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load i64, i64* @RK3368_SOC_FLASH_SUPPLY_NUM, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @RK3368_SOC_CON15_FLASH0, align 4
  %16 = load i32, i32* @RK3368_SOC_CON15_FLASH0, align 4
  %17 = shl i32 %16, 16
  %18 = or i32 %15, %17
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %2, align 8
  %20 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RK3368_SOC_CON15, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @regmap_write(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %14
  %28 = load %struct.rockchip_iodomain*, %struct.rockchip_iodomain** %2, align 8
  %29 = getelementptr inbounds %struct.rockchip_iodomain, %struct.rockchip_iodomain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %13, %27, %14
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
