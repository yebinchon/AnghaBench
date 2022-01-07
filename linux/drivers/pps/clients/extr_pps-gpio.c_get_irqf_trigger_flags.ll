; ModuleID = '/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_get_irqf_trigger_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pps/clients/extr_pps-gpio.c_get_irqf_trigger_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_gpio_device_data = type { i64, i64 }

@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@IRQF_TRIGGER_RISING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pps_gpio_device_data*)* @get_irqf_trigger_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_irqf_trigger_flags(%struct.pps_gpio_device_data* %0) #0 {
  %2 = alloca %struct.pps_gpio_device_data*, align 8
  %3 = alloca i64, align 8
  store %struct.pps_gpio_device_data* %0, %struct.pps_gpio_device_data** %2, align 8
  %4 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %2, align 8
  %5 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i64 [ %9, %8 ], [ %11, %10 ]
  store i64 %13, i64* %3, align 8
  %14 = load %struct.pps_gpio_device_data*, %struct.pps_gpio_device_data** %2, align 8
  %15 = getelementptr inbounds %struct.pps_gpio_device_data, %struct.pps_gpio_device_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i64, i64* @IRQF_TRIGGER_RISING, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  %29 = load i64, i64* %3, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %27, %12
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
