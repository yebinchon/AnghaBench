; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_omap_wdt.c_omap_wdt_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_omap_wdt.c_omap_wdt_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_wdt_dev = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @omap_wdt_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_wdt_shutdown(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_wdt_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.omap_wdt_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.omap_wdt_dev* %5, %struct.omap_wdt_dev** %3, align 8
  %6 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %3, align 8
  %7 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %3, align 8
  %10 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %3, align 8
  %15 = call i32 @omap_wdt_disable(%struct.omap_wdt_dev* %14)
  %16 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %3, align 8
  %17 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pm_runtime_put_sync(i32 %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.omap_wdt_dev*, %struct.omap_wdt_dev** %3, align 8
  %22 = getelementptr inbounds %struct.omap_wdt_dev, %struct.omap_wdt_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  ret void
}

declare dso_local %struct.omap_wdt_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omap_wdt_disable(%struct.omap_wdt_dev*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
