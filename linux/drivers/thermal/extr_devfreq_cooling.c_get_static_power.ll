; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_get_static_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_get_static_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_cooling_device = type { %struct.TYPE_2__*, %struct.devfreq* }
%struct.TYPE_2__ = type { i64 (%struct.devfreq*, i64)* }
%struct.devfreq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.devfreq_cooling_device*, i64)* @get_static_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_static_power(%struct.devfreq_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.devfreq_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.devfreq*, align 8
  %7 = alloca i64, align 8
  store %struct.devfreq_cooling_device* %0, %struct.devfreq_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %4, align 8
  %9 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %8, i32 0, i32 1
  %10 = load %struct.devfreq*, %struct.devfreq** %9, align 8
  store %struct.devfreq* %10, %struct.devfreq** %6, align 8
  %11 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %4, align 8
  %12 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64 (%struct.devfreq*, i64)*, i64 (%struct.devfreq*, i64)** %14, align 8
  %16 = icmp ne i64 (%struct.devfreq*, i64)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.devfreq*, %struct.devfreq** %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @get_voltage(%struct.devfreq* %19, i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i64 0, i64* %3, align 8
  br label %34

25:                                               ; preds = %18
  %26 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %4, align 8
  %27 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.devfreq*, i64)*, i64 (%struct.devfreq*, i64)** %29, align 8
  %31 = load %struct.devfreq*, %struct.devfreq** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 %30(%struct.devfreq* %31, i64 %32)
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %25, %24, %17
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i64 @get_voltage(%struct.devfreq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
