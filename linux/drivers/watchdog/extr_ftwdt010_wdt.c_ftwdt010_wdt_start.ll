; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ftwdt010_wdt.c_ftwdt010_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ftwdt010_wdt.c_ftwdt010_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.ftwdt010_wdt = type { i64, i64 }

@WDT_CLOCK = common dso_local global i32 0, align 4
@FTWDT010_WDLOAD = common dso_local global i64 0, align 8
@WDRESTART_MAGIC = common dso_local global i32 0, align 4
@FTWDT010_WDRESTART = common dso_local global i64 0, align 8
@WDCR_CLOCK_5MHZ = common dso_local global i32 0, align 4
@WDCR_SYS_RST = common dso_local global i32 0, align 4
@FTWDT010_WDCR = common dso_local global i64 0, align 8
@WDCR_WDINTR = common dso_local global i32 0, align 4
@WDCR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @ftwdt010_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftwdt010_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.ftwdt010_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.ftwdt010_wdt* @to_ftwdt010_wdt(%struct.watchdog_device* %5)
  store %struct.ftwdt010_wdt* %6, %struct.ftwdt010_wdt** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WDT_CLOCK, align 4
  %11 = mul nsw i32 %9, %10
  %12 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %3, align 8
  %13 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @FTWDT010_WDLOAD, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %11, i64 %16)
  %18 = load i32, i32* @WDRESTART_MAGIC, align 4
  %19 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %3, align 8
  %20 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FTWDT010_WDRESTART, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load i32, i32* @WDCR_CLOCK_5MHZ, align 4
  %26 = load i32, i32* @WDCR_SYS_RST, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %3, align 8
  %30 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FTWDT010_WDCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %3, align 8
  %36 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %1
  %40 = load i32, i32* @WDCR_WDINTR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %1
  %44 = load i32, i32* @WDCR_ENABLE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.ftwdt010_wdt*, %struct.ftwdt010_wdt** %3, align 8
  %49 = getelementptr inbounds %struct.ftwdt010_wdt, %struct.ftwdt010_wdt* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FTWDT010_WDCR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret i32 0
}

declare dso_local %struct.ftwdt010_wdt* @to_ftwdt010_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
