; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83627hf_wdt.c_wdt_get_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_w83627hf_wdt.c_wdt_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }

@W83627HF_LD_WDT = common dso_local global i32 0, align 4
@cr_wdt_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @wdt_get_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_get_time(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %6 = call i32 (...) @superio_enter()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

10:                                               ; preds = %1
  %11 = load i32, i32* @W83627HF_LD_WDT, align 4
  %12 = call i32 @superio_select(i32 %11)
  %13 = load i32, i32* @cr_wdt_timeout, align 4
  %14 = call i32 @superio_inb(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = call i32 (...) @superio_exit()
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %10, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @superio_enter(...) #1

declare dso_local i32 @superio_select(i32) #1

declare dso_local i32 @superio_inb(i32) #1

declare dso_local i32 @superio_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
