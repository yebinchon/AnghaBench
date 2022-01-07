; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-ingenic.c_ingenic_gpio_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.ingenic_gpio_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IRQ_TYPE_EDGE_BOTH = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@ID_JZ4760 = common dso_local global i64 0, align 8
@JZ4760_GPIO_FLAG = common dso_local global i32 0, align 4
@JZ4740_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ingenic_gpio_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_gpio_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.ingenic_gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.gpio_chip* %8, %struct.gpio_chip** %3, align 8
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %10 = call %struct.ingenic_gpio_chip* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.ingenic_gpio_chip* %10, %struct.ingenic_gpio_chip** %4, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i64 @irqd_get_trigger_type(%struct.irq_data* %14)
  %16 = load i64, i64* @IRQ_TYPE_EDGE_BOTH, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ingenic_gpio_get_value(%struct.ingenic_gpio_chip* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %28 = call i32 @irq_set_type(%struct.ingenic_gpio_chip* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %18
  %30 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %33 = call i32 @irq_set_type(%struct.ingenic_gpio_chip* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %37 = getelementptr inbounds %struct.ingenic_gpio_chip, %struct.ingenic_gpio_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ID_JZ4760, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %45 = load i32, i32* @JZ4760_GPIO_FLAG, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %44, i32 %45, i32 %46, i32 0)
  br label %53

48:                                               ; preds = %35
  %49 = load %struct.ingenic_gpio_chip*, %struct.ingenic_gpio_chip** %4, align 8
  %50 = load i32, i32* @JZ4740_GPIO_DATA, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip* %49, i32 %50, i32 %51, i32 1)
  br label %53

53:                                               ; preds = %48, %43
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.ingenic_gpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i64 @irqd_get_trigger_type(%struct.irq_data*) #1

declare dso_local i32 @ingenic_gpio_get_value(%struct.ingenic_gpio_chip*, i32) #1

declare dso_local i32 @irq_set_type(%struct.ingenic_gpio_chip*, i32, i32) #1

declare dso_local i32 @ingenic_gpio_set_bit(%struct.ingenic_gpio_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
