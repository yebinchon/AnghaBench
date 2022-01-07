; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, %struct.TYPE_2__*, %struct.watchdog_core_data* }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.watchdog_core_data = type { i32, i32 }

@_WDOG_KEEPALIVE = common dso_local global i32 0, align 4
@WDOG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @watchdog_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.watchdog_core_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 2
  %9 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %8, align 8
  store %struct.watchdog_core_data* %9, %struct.watchdog_core_data** %4, align 8
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %11 = call i64 @watchdog_active(%struct.watchdog_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load i32, i32* @_WDOG_KEEPALIVE, align 4
  %16 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %4, align 8
  %17 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %16, i32 0, i32 1
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = call i32 (...) @ktime_get()
  store i32 %19, i32* %5, align 4
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %21 = call i64 @watchdog_hw_running(%struct.watchdog_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %14
  %24 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %25 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.watchdog_device*)**
  %29 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %28, align 8
  %30 = icmp ne i32 (%struct.watchdog_device*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %33 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.watchdog_device*)**
  %37 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %36, align 8
  %38 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %39 = call i32 %37(%struct.watchdog_device* %38)
  store i32 %39, i32* %6, align 4
  br label %49

40:                                               ; preds = %23, %14
  %41 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %42 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to i32 (%struct.watchdog_device*)**
  %46 = load i32 (%struct.watchdog_device*)*, i32 (%struct.watchdog_device*)** %45, align 8
  %47 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %48 = call i32 %46(%struct.watchdog_device* %47)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %40, %31
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* @WDOG_ACTIVE, align 4
  %54 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %55 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %4, align 8
  %59 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %61 = call i32 @watchdog_update_worker(%struct.watchdog_device* %60)
  br label %62

62:                                               ; preds = %52, %49
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @watchdog_hw_running(%struct.watchdog_device*) #1

declare dso_local i32 @watchdog_update_worker(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
