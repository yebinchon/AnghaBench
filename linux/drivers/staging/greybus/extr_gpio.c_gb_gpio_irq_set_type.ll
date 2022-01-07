; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gpio.c_gb_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }
%struct.gpio_chip = type { i32 }
%struct.gb_gpio_controller = type { %struct.TYPE_2__*, %struct.gb_gpio_line* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_gpio_line = type { i32, i32 }

@GB_GPIO_IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@GB_GPIO_IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@GB_GPIO_IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@GB_GPIO_IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@GB_GPIO_IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@GB_GPIO_IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unsupported irq type: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @gb_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.gb_gpio_controller*, align 8
  %8 = alloca %struct.gb_gpio_line*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %12 = call %struct.gpio_chip* @irq_data_to_gpio_chip(%struct.irq_data* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %6, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %14 = call %struct.gb_gpio_controller* @gpio_chip_to_gb_gpio_controller(%struct.gpio_chip* %13)
  store %struct.gb_gpio_controller* %14, %struct.gb_gpio_controller** %7, align 8
  %15 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %16 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %15, i32 0, i32 1
  %17 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %16, align 8
  %18 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %17, i64 %20
  store %struct.gb_gpio_line* %21, %struct.gb_gpio_line** %8, align 8
  %22 = load %struct.gb_gpio_controller*, %struct.gb_gpio_controller** %7, align 8
  %23 = getelementptr inbounds %struct.gb_gpio_controller, %struct.gb_gpio_controller* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store %struct.device* %25, %struct.device** %9, align 8
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %39 [
    i32 128, label %27
    i32 131, label %29
    i32 132, label %31
    i32 133, label %33
    i32 129, label %35
    i32 130, label %37
  ]

27:                                               ; preds = %2
  %28 = load i32, i32* @GB_GPIO_IRQ_TYPE_NONE, align 4
  store i32 %28, i32* %10, align 4
  br label %45

29:                                               ; preds = %2
  %30 = load i32, i32* @GB_GPIO_IRQ_TYPE_EDGE_RISING, align 4
  store i32 %30, i32* %10, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i32, i32* @GB_GPIO_IRQ_TYPE_EDGE_FALLING, align 4
  store i32 %32, i32* %10, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load i32, i32* @GB_GPIO_IRQ_TYPE_EDGE_BOTH, align 4
  store i32 %34, i32* %10, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load i32, i32* @GB_GPIO_IRQ_TYPE_LEVEL_LOW, align 4
  store i32 %36, i32* %10, align 4
  br label %45

37:                                               ; preds = %2
  %38 = load i32, i32* @GB_GPIO_IRQ_TYPE_LEVEL_HIGH, align 4
  store i32 %38, i32* %10, align 4
  br label %45

39:                                               ; preds = %2
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %37, %35, %33, %31, %29, %27
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %8, align 8
  %48 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.gb_gpio_line*, %struct.gb_gpio_line** %8, align 8
  %50 = getelementptr inbounds %struct.gb_gpio_line, %struct.gb_gpio_line* %49, i32 0, i32 0
  store i32 1, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.gpio_chip* @irq_data_to_gpio_chip(%struct.irq_data*) #1

declare dso_local %struct.gb_gpio_controller* @gpio_chip_to_gb_gpio_controller(%struct.gpio_chip*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
