; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.bcm2835_pinctrl = type { i32 }
%struct.irq_chip = type { i32 }

@BCM2835_NUM_IRQS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @bcm2835_gpio_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_gpio_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.bcm2835_pinctrl*, align 8
  %5 = alloca %struct.irq_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %10 = call %struct.gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %3, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.bcm2835_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.bcm2835_pinctrl* %12, %struct.bcm2835_pinctrl** %4, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %13)
  store %struct.irq_chip* %14, %struct.irq_chip** %5, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call i32 @irq_desc_get_irq(%struct.irq_desc* %15)
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %35, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BCM2835_NUM_IRQS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %23 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %7, align 4
  br label %38

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %17

38:                                               ; preds = %32, %17
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @BCM2835_NUM_IRQS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @BUG()
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %46 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %47 = call i32 @chained_irq_enter(%struct.irq_chip* %45, %struct.irq_desc* %46)
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %60 [
    i32 0, label %49
    i32 1, label %52
    i32 2, label %57
  ]

49:                                               ; preds = %44
  %50 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %51 = call i32 @bcm2835_gpio_irq_handle_bank(%struct.bcm2835_pinctrl* %50, i32 0, i32 268435455)
  br label %60

52:                                               ; preds = %44
  %53 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %54 = call i32 @bcm2835_gpio_irq_handle_bank(%struct.bcm2835_pinctrl* %53, i32 0, i32 -268435456)
  %55 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %56 = call i32 @bcm2835_gpio_irq_handle_bank(%struct.bcm2835_pinctrl* %55, i32 1, i32 16383)
  br label %60

57:                                               ; preds = %44
  %58 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %59 = call i32 @bcm2835_gpio_irq_handle_bank(%struct.bcm2835_pinctrl* %58, i32 1, i32 4177920)
  br label %60

60:                                               ; preds = %44, %57, %52, %49
  %61 = load %struct.irq_chip*, %struct.irq_chip** %5, align 8
  %62 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %63 = call i32 @chained_irq_exit(%struct.irq_chip* %61, %struct.irq_desc* %62)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.bcm2835_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local i32 @irq_desc_get_irq(%struct.irq_desc*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @bcm2835_gpio_irq_handle_bank(%struct.bcm2835_pinctrl*, i32, i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
