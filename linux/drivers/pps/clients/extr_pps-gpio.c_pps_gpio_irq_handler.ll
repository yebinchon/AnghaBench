; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_pps_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_gpio_device_data = type { i32, i64, i64, i32 }
%struct.pps_event_time = type { i32 }

@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pps_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pps_gpio_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pps_gpio_device_data*, align 8
  %6 = alloca %struct.pps_event_time, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = call i32 @pps_get_ts(%struct.pps_event_time* %6)
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pps_gpio_device_data*
  store %struct.pps_gpio_device_data* %10, %struct.pps_gpio_device_data** %5, align 8
  %11 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %12 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @gpiod_get_value(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %19 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17, %2
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  %26 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %27 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25, %17
  %31 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %32 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @pps_event(i32 %33, %struct.pps_event_time* %6, i32 %34, i8* %35)
  br label %66

37:                                               ; preds = %25, %22
  %38 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %39 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %47 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %55 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53, %45
  %59 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %5, align 8
  %60 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PPS_CAPTURECLEAR, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @pps_event(i32 %61, %struct.pps_event_time* %6, i32 %62, i8* %63)
  br label %65

65:                                               ; preds = %58, %53, %50, %37
  br label %66

66:                                               ; preds = %65, %30
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %67
}

declare dso_local i32 @pps_get_ts(%struct.pps_event_time*) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @pps_event(i32, %struct.pps_event_time*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
