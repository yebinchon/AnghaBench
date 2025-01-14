; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_xen_wdt.c_xen_wdt_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_xen_wdt.c_xen_wdt_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.watchdog_device = type { i32 }

@wdt = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SCHEDOP_watchdog = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@wdt_expires = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @xen_wdt_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_wdt_kick(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call i32 @set_timeout(%struct.watchdog_device* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @wdt, i32 0, i32 0), align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @SCHEDOP_watchdog, align 4
  %11 = call i32 @HYPERVISOR_sched_op(i32 %10, %struct.TYPE_3__* @wdt)
  store i32 %11, i32* %4, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* @wdt_expires, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @set_timeout(%struct.watchdog_device*) #1

declare dso_local i32 @HYPERVISOR_sched_op(i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
