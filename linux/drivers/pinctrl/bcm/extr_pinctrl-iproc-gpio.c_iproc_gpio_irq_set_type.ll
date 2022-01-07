; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-iproc-gpio.c_iproc_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.iproc_gpio = type { i32, i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid GPIO IRQ type 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPROC_GPIO_INT_TYPE_OFFSET = common dso_local global i32 0, align 4
@IPROC_GPIO_INT_DE_OFFSET = common dso_local global i32 0, align 4
@IPROC_GPIO_INT_EDGE_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"gpio:%u level_triggered:%d dual_edge:%d rising_or_high:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @iproc_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_chip*, align 8
  %7 = alloca %struct.iproc_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %14 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %13)
  store %struct.gpio_chip* %14, %struct.gpio_chip** %6, align 8
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %6, align 8
  %16 = call %struct.iproc_gpio* @gpiochip_get_data(%struct.gpio_chip* %15)
  store %struct.iproc_gpio* %16, %struct.iproc_gpio** %7, align 8
  %17 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %18 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %28 [
    i32 130, label %23
    i32 131, label %24
    i32 132, label %25
    i32 129, label %26
    i32 128, label %27
  ]

23:                                               ; preds = %2
  store i32 1, i32* %11, align 4
  br label %36

24:                                               ; preds = %2
  br label %36

25:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %36

26:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %36

27:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %36

28:                                               ; preds = %2
  %29 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %30 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %68

36:                                               ; preds = %27, %26, %25, %24, %23
  %37 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %38 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %37, i32 0, i32 1
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @raw_spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %42 = load i32, i32* @IPROC_GPIO_INT_TYPE_OFFSET, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @iproc_set_bit(%struct.iproc_gpio* %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %47 = load i32, i32* @IPROC_GPIO_INT_DE_OFFSET, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @iproc_set_bit(%struct.iproc_gpio* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %52 = load i32, i32* @IPROC_GPIO_INT_EDGE_OFFSET, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @iproc_set_bit(%struct.iproc_gpio* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %57 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %56, i32 0, i32 1
  %58 = load i64, i64* %12, align 8
  %59 = call i32 @raw_spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load %struct.iproc_gpio*, %struct.iproc_gpio** %7, align 8
  %61 = getelementptr inbounds %struct.iproc_gpio, %struct.iproc_gpio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64, i32 %65, i32 %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %36, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.iproc_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iproc_set_bit(%struct.iproc_gpio*, i32, i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
