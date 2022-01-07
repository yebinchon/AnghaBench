; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_zx2967_wdt.c_zx2967_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_zx2967_wdt.c_zx2967_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.zx2967_wdt = type { i32 }

@ZX2967_WDT_DIV_DEFAULT = common dso_local global i32 0, align 4
@ZX2967_WDT_CLK_FREQ = common dso_local global i32 0, align 4
@ZX2967_WDT_MAX_COUNT = common dso_local global i32 0, align 4
@ZX2967_WDT_CFG_REG = common dso_local global i32 0, align 4
@ZX2967_WDT_VAL_MASK = common dso_local global i32 0, align 4
@ZX2967_WDT_LOAD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @zx2967_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx2967_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zx2967_wdt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.zx2967_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.zx2967_wdt* %9, %struct.zx2967_wdt** %5, align 8
  %10 = load i32, i32* @ZX2967_WDT_DIV_DEFAULT, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ZX2967_WDT_CLK_FREQ, align 4
  %13 = mul i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ZX2967_WDT_MAX_COUNT, align 4
  %17 = mul i32 %15, %16
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ZX2967_WDT_MAX_COUNT, align 4
  %22 = call i32 @DIV_ROUND_UP(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %28 = load i32, i32* @ZX2967_WDT_CFG_REG, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @ZX2967_WDT_CFG_DIV(i32 %29)
  %31 = load i32, i32* @ZX2967_WDT_VAL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @zx2967_wdt_writel(%struct.zx2967_wdt* %27, i32 %28, i32 %32)
  %34 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %35 = load i32, i32* @ZX2967_WDT_LOAD_REG, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ZX2967_WDT_VAL_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @zx2967_wdt_writel(%struct.zx2967_wdt* %34, i32 %35, i32 %38)
  %40 = load %struct.zx2967_wdt*, %struct.zx2967_wdt** %5, align 8
  %41 = call i32 @zx2967_wdt_refresh(%struct.zx2967_wdt* %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul i32 %42, %43
  %45 = load i32, i32* @ZX2967_WDT_CLK_FREQ, align 4
  %46 = udiv i32 %44, %45
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %48 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  ret i32 0
}

declare dso_local %struct.zx2967_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @zx2967_wdt_writel(%struct.zx2967_wdt*, i32, i32) #1

declare dso_local i32 @ZX2967_WDT_CFG_DIV(i32) #1

declare dso_local i32 @zx2967_wdt_refresh(%struct.zx2967_wdt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
