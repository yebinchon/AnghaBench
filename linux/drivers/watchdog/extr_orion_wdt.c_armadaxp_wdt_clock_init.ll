; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armadaxp_wdt_clock_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_orion_wdt.c_armadaxp_wdt_clock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.orion_watchdog = type { i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@WDT_AXP_FIXED_ENABLE_BIT = common dso_local global i32 0, align 4
@TIMER1_FIXED_ENABLE_BIT = common dso_local global i32 0, align 4
@TIMER_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.orion_watchdog*)* @armadaxp_wdt_clock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armadaxp_wdt_clock_init(%struct.platform_device* %0, %struct.orion_watchdog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.orion_watchdog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.orion_watchdog* %1, %struct.orion_watchdog** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @of_clk_get_by_name(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %14 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %16 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @IS_ERR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %22 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @PTR_ERR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %2
  %26 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %27 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_prepare_enable(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %34 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @clk_put(i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %25
  %39 = load i32, i32* @WDT_AXP_FIXED_ENABLE_BIT, align 4
  %40 = load i32, i32* @TIMER1_FIXED_ENABLE_BIT, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %43 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TIMER_CTRL, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @atomic_io_modify(i64 %46, i32 %47, i32 %48)
  %50 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %51 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_get_rate(i32 %52)
  %54 = load %struct.orion_watchdog*, %struct.orion_watchdog** %5, align 8
  %55 = getelementptr inbounds %struct.orion_watchdog, %struct.orion_watchdog* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %38, %32, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @of_clk_get_by_name(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @atomic_io_modify(i64, i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
