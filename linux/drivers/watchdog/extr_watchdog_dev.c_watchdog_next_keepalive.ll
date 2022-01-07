; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_next_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_dev.c_watchdog_next_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32, %struct.watchdog_core_data* }
%struct.watchdog_core_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @watchdog_next_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_next_keepalive(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.watchdog_core_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %11 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %12 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %11, i32 0, i32 2
  %13 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %12, align 8
  store %struct.watchdog_core_data* %13, %struct.watchdog_core_data** %4, align 8
  %14 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %15 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 1000
  store i32 %17, i32* %5, align 4
  %18 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %19 = call i64 @watchdog_active(%struct.watchdog_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %4, align 8
  %23 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ms_to_ktime(i32 %25)
  %27 = call i32 @ktime_add(i32 %24, i32 %26)
  store i32 %27, i32* %9, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.watchdog_core_data*, %struct.watchdog_core_data** %4, align 8
  %30 = getelementptr inbounds %struct.watchdog_core_data, %struct.watchdog_core_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %21
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %35 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @min_not_zero(i32 %33, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = udiv i32 %38, 2
  %40 = call i32 @ms_to_ktime(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @ms_to_ktime(i32 %42)
  %44 = call i32 @ktime_sub(i32 %41, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 (...) @ktime_get()
  %47 = call i32 @ktime_sub(i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @ktime_before(i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @watchdog_active(%struct.watchdog_device*) #1

declare dso_local i32 @ktime_add(i32, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i32 @min_not_zero(i32, i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
