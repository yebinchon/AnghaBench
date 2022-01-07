; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-bcm2835.c_bcm2835_gpio_irq_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_pinctrl = type { i32* }

@GPREN0 = common dso_local global i32 0, align 4
@GPFEN0 = common dso_local global i32 0, align 4
@GPHEN0 = common dso_local global i32 0, align 4
@GPLEN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_pinctrl*, i32, i32)* @bcm2835_gpio_irq_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm2835_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcm2835_pinctrl* %0, %struct.bcm2835_pinctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %8 = getelementptr inbounds %struct.bcm2835_pinctrl, %struct.bcm2835_pinctrl* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %49 [
    i32 130, label %14
    i32 131, label %20
    i32 132, label %26
    i32 129, label %37
    i32 128, label %43
  ]

14:                                               ; preds = %3
  %15 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %16 = load i32, i32* @GPREN0, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %15, i32 %16, i32 %17, i32 %18)
  br label %49

20:                                               ; preds = %3
  %21 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %22 = load i32, i32* @GPFEN0, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %21, i32 %22, i32 %23, i32 %24)
  br label %49

26:                                               ; preds = %3
  %27 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %28 = load i32, i32* @GPREN0, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %33 = load i32, i32* @GPFEN0, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %32, i32 %33, i32 %34, i32 %35)
  br label %49

37:                                               ; preds = %3
  %38 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %39 = load i32, i32* @GPHEN0, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %38, i32 %39, i32 %40, i32 %41)
  br label %49

43:                                               ; preds = %3
  %44 = load %struct.bcm2835_pinctrl*, %struct.bcm2835_pinctrl** %4, align 8
  %45 = load i32, i32* @GPLEN0, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl* %44, i32 %45, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %3, %43, %37, %26, %20, %14
  ret void
}

declare dso_local i32 @__bcm2835_gpio_irq_config(%struct.bcm2835_pinctrl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
