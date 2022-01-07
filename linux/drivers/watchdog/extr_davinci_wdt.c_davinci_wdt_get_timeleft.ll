; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_davinci_wdt.c_davinci_wdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.davinci_wdt_device = type { i64, i32 }

@WDTCR = common dso_local global i64 0, align 8
@WDFLAG = common dso_local global i32 0, align 4
@TIM12 = common dso_local global i64 0, align 8
@TIM34 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @davinci_wdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_wdt_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.davinci_wdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %9 = call %struct.davinci_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.davinci_wdt_device* %9, %struct.davinci_wdt_device** %7, align 8
  %10 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %11 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WDTCR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @ioread32(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @WDFLAG, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  %22 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %23 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @clk_get_rate(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %31 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TIM12, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @ioread32(i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.davinci_wdt_device*, %struct.davinci_wdt_device** %7, align 8
  %37 = getelementptr inbounds %struct.davinci_wdt_device, %struct.davinci_wdt_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TIM34, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  %42 = shl i32 %41, 32
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @do_div(i32 %45, i64 %46)
  %48 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %49 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub i32 %50, %51
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %29, %28, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.davinci_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
