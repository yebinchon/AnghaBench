; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_tqmx86_wdt.c_tqmx86_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_tqmx86_wdt.c_tqmx86_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.tqmx86_wdt = type { i64 }

@TQMX86_WDCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @tqmx86_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tqmx86_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tqmx86_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.tqmx86_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.tqmx86_wdt* %8, %struct.tqmx86_wdt** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @roundup_pow_of_two(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ilog2(i32 %11)
  %13 = or i32 %12, 144
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 3
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.tqmx86_wdt*, %struct.tqmx86_wdt** %5, align 8
  %18 = getelementptr inbounds %struct.tqmx86_wdt, %struct.tqmx86_wdt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TQMX86_WDCFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @iowrite8(i32 %16, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %25 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret i32 0
}

declare dso_local %struct.tqmx86_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
