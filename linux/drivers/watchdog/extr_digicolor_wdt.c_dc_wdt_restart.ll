; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_digicolor_wdt.c_dc_wdt_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_digicolor_wdt.c_dc_wdt_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.dc_wdt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i64, i8*)* @dc_wdt_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_wdt_restart(%struct.watchdog_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dc_wdt*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %9 = call %struct.dc_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %8)
  store %struct.dc_wdt* %9, %struct.dc_wdt** %7, align 8
  %10 = load %struct.dc_wdt*, %struct.dc_wdt** %7, align 8
  %11 = call i32 @dc_wdt_set(%struct.dc_wdt* %10, i32 1)
  %12 = call i32 @mdelay(i32 500)
  ret i32 0
}

declare dso_local %struct.dc_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @dc_wdt_set(%struct.dc_wdt*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
