; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_int0002_vgpio.c_int0002_irq_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_int0002_vgpio.c_int0002_irq_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @int0002_irq_set_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int0002_irq_set_wake(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %9 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.gpio_chip* %9, %struct.gpio_chip** %5, align 8
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %11 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.platform_device* @to_platform_device(i32 %12)
  store %struct.platform_device* %13, %struct.platform_device** %6, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %15 = call i32 @platform_get_irq(%struct.platform_device* %14, i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @enable_irq_wake(i32 %19)
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @disable_irq_wake(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  ret i32 0
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @disable_irq_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
