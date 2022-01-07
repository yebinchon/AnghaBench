; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i64 }
%struct.davinci_wdt_device = type { i64, i32 }

@TCR = common dso_local global i64 0, align 8
@TGCR = common dso_local global i64 0, align 8
@TIMMODE_64BIT_WDOG = common dso_local global i32 0, align 4
@TIM12RS_UNRESET = common dso_local global i32 0, align 4
@TIM34RS_UNRESET = common dso_local global i32 0, align 4
@TIM12 = common dso_local global i64 0, align 8
@TIM34 = common dso_local global i64 0, align 8
@PRD12 = common dso_local global i64 0, align 8
@PRD34 = common dso_local global i64 0, align 8
@ENAMODE12_PERIODIC = common dso_local global i32 0, align 4
@WDKEY_SEQ0 = common dso_local global i32 0, align 4
@WDEN = common dso_local global i32 0, align 4
@WDTCR = common dso_local global i64 0, align 8
@WDKEY_SEQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @davinci_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.davinci_wdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.davinci_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.davinci_wdt_device* %8, %struct.davinci_wdt_device** %6, align 8
  %9 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %10 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @clk_get_rate(i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %14 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @iowrite32(i32 0, i64 %17)
  %19 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %20 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TGCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @iowrite32(i32 0, i64 %23)
  %25 = load i32, i32* @TIMMODE_64BIT_WDOG, align 4
  %26 = load i32, i32* @TIM12RS_UNRESET, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TIM34RS_UNRESET, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %32 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TGCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %38 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TIM12, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @iowrite32(i32 0, i64 %41)
  %43 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %44 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TIM34, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @iowrite32(i32 0, i64 %47)
  %49 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %50 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = mul i64 %51, %52
  %54 = and i64 %53, 4294967295
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %58 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PRD12, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @iowrite32(i32 %56, i64 %61)
  %63 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %64 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = mul i64 %65, %66
  %68 = lshr i64 %67, 32
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %72 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PRD34, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @iowrite32(i32 %70, i64 %75)
  %77 = load i32, i32* @ENAMODE12_PERIODIC, align 4
  %78 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %79 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @iowrite32(i32 %77, i64 %82)
  %84 = load i32, i32* @WDKEY_SEQ0, align 4
  %85 = load i32, i32* @WDEN, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %88 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @WDTCR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @iowrite32(i32 %86, i64 %91)
  %93 = load i32, i32* @WDKEY_SEQ1, align 4
  %94 = load i32, i32* @WDEN, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %6, align 8
  %97 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WDTCR, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @iowrite32(i32 %95, i64 %100)
  ret i32 0
}

declare dso_local %struct.davinci_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
