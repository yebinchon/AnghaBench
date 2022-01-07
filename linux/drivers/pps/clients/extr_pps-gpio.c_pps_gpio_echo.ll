; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_echo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_echo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.pps_gpio_device_data = type { %struct.TYPE_8__, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PPS_ECHOASSERT = common dso_local global i32 0, align 4
@PPS_ECHOCLEAR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pps_device*, i32, i8*)* @pps_gpio_echo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pps_gpio_echo(%struct.pps_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.pps_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.pps_gpio_device_data*, align 8
  store %struct.pps_device* %0, %struct.pps_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.pps_gpio_device_data*
  store %struct.pps_gpio_device_data* %9, %struct.pps_gpio_device_data** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %39 [
    i32 129, label %11
    i32 128, label %25
  ]

11:                                               ; preds = %3
  %12 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %13 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PPS_ECHOASSERT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %7, align 8
  %21 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @gpiod_set_value(i32 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %11
  br label %39

25:                                               ; preds = %3
  %26 = load %struct.pps_device*, %struct.pps_device** %4, align 8
  %27 = getelementptr inbounds %struct.pps_device, %struct.pps_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PPS_ECHOCLEAR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %7, align 8
  %35 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @gpiod_set_value(i32 %36, i32 1)
  br label %38

38:                                               ; preds = %33, %25
  br label %39

39:                                               ; preds = %3, %38, %24
  %40 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %7, align 8
  %41 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PPS_ECHOASSERT, align 4
  %47 = load i32, i32* @PPS_ECHOCLEAR, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %39
  %52 = load i64, i64* @jiffies, align 8
  %53 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %7, align 8
  %54 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %7, align 8
  %58 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %7, align 8
  %61 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %60, i32 0, i32 0
  %62 = call i32 @add_timer(%struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %51, %39
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
