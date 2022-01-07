; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.davinci_wdt_device = type { i64 }

@TCR = common dso_local global i64 0, align 8
@TGCR = common dso_local global i64 0, align 8
@TIMMODE_64BIT_WDOG = common dso_local global i32 0, align 4
@TIM12RS_UNRESET = common dso_local global i32 0, align 4
@TIM34RS_UNRESET = common dso_local global i32 0, align 4
@TIM12 = common dso_local global i64 0, align 8
@TIM34 = common dso_local global i64 0, align 8
@PRD12 = common dso_local global i64 0, align 8
@PRD34 = common dso_local global i64 0, align 8
@WDKEY_SEQ0 = common dso_local global i32 0, align 4
@WDEN = common dso_local global i32 0, align 4
@WDTCR = common dso_local global i64 0, align 8
@WDKEY_SEQ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @davinci_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.davinci_wdt_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %11 = call %struct.davinci_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %10)
  store %struct.davinci_wdt_device* %11, %struct.davinci_wdt_device** %7, align 8
  %12 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %13 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @iowrite32(i32 0, i64 %16)
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %20 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TGCR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @iowrite32(i32 %18, i64 %23)
  %25 = load i32, i32* @TIMMODE_64BIT_WDOG, align 4
  %26 = load i32, i32* @TIM12RS_UNRESET, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TIM34RS_UNRESET, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %32 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TGCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %38 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TIM12, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @iowrite32(i32 0, i64 %41)
  %43 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %44 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TIM34, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @iowrite32(i32 0, i64 %47)
  %49 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %50 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PRD12, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @iowrite32(i32 0, i64 %53)
  %55 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %56 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PRD34, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @iowrite32(i32 0, i64 %59)
  %61 = load i32, i32* @WDKEY_SEQ0, align 4
  %62 = load i32, i32* @WDEN, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %66 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WDTCR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @iowrite32(i32 %64, i64 %69)
  %71 = load i32, i32* @WDKEY_SEQ1, align 4
  %72 = load i32, i32* @WDEN, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %76 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WDTCR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @iowrite32(i32 %74, i64 %79)
  store i32 16384, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %83 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WDTCR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @iowrite32(i32 %81, i64 %86)
  ret i32 0
}

declare dso_local %struct.davinci_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
