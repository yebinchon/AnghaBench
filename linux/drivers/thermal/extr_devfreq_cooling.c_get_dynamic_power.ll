; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_get_dynamic_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_get_dynamic_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_cooling_device = type { i32, %struct.devfreq_cooling_power* }
%struct.devfreq_cooling_power = type { i64 (i32, i64, i64)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.devfreq_cooling_device*, i64, i64)* @get_dynamic_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_dynamic_power(%struct.devfreq_cooling_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.devfreq_cooling_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.devfreq_cooling_power*, align 8
  store %struct.devfreq_cooling_device* %0, %struct.devfreq_cooling_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %5, align 8
  %12 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %11, i32 0, i32 1
  %13 = load %struct.devfreq_cooling_power*, %struct.devfreq_cooling_power** %12, align 8
  store %struct.devfreq_cooling_power* %13, %struct.devfreq_cooling_power** %10, align 8
  %14 = load %struct.devfreq_cooling_power*, %struct.devfreq_cooling_power** %10, align 8
  %15 = getelementptr inbounds %struct.devfreq_cooling_power, %struct.devfreq_cooling_power* %14, i32 0, i32 0
  %16 = load i64 (i32, i64, i64)*, i64 (i32, i64, i64)** %15, align 8
  %17 = icmp ne i64 (i32, i64, i64)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load %struct.devfreq_cooling_power*, %struct.devfreq_cooling_power** %10, align 8
  %20 = getelementptr inbounds %struct.devfreq_cooling_power, %struct.devfreq_cooling_power* %19, i32 0, i32 0
  %21 = load i64 (i32, i64, i64)*, i64 (i32, i64, i64)** %20, align 8
  %22 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %5, align 8
  %23 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 %21(i32 %24, i64 %25, i64 %26)
  store i64 %27, i64* %4, align 8
  br label %43

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = udiv i64 %29, 1000000
  store i64 %30, i64* %9, align 8
  %31 = load %struct.devfreq_cooling_power*, %struct.devfreq_cooling_power** %10, align 8
  %32 = getelementptr inbounds %struct.devfreq_cooling_power, %struct.devfreq_cooling_power* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = mul i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = mul i64 %35, %36
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %37, %38
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @do_div(i64 %40, i32 1000000000)
  %42 = load i64, i64* %8, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %28, %18
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
