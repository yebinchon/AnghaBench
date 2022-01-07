; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_domain_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_gpio_domain_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_domain = type { %struct.TYPE_2__*, %struct.stm32_gpio_bank* }
%struct.TYPE_2__ = type { i32 }
%struct.stm32_gpio_bank = type { i32 }
%struct.irq_fwspec = type { i32, i32*, i32 }

@stm32_gpio_irq_chip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, i8*)* @stm32_gpio_domain_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_gpio_domain_alloc(%struct.irq_domain* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.irq_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stm32_gpio_bank*, align 8
  %10 = alloca %struct.irq_fwspec*, align 8
  %11 = alloca %struct.irq_fwspec, align 8
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %14 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %13, i32 0, i32 1
  %15 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %14, align 8
  store %struct.stm32_gpio_bank* %15, %struct.stm32_gpio_bank** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.irq_fwspec*
  store %struct.irq_fwspec* %17, %struct.irq_fwspec** %10, align 8
  %18 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %19 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %24 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 2
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 0
  store i32 2, i32* %29, align 8
  %30 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %31 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.irq_fwspec*, %struct.irq_fwspec** %10, align 8
  %39 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.irq_fwspec, %struct.irq_fwspec* %11, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.stm32_gpio_bank*, %struct.stm32_gpio_bank** %9, align 8
  %50 = call i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain* %46, i32 %47, i32 %48, i32* @stm32_gpio_irq_chip, %struct.stm32_gpio_bank* %49)
  %51 = load %struct.irq_domain*, %struct.irq_domain** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain* %51, i32 %52, i32 %53, %struct.irq_fwspec* %11)
  ret i32 %54
}

declare dso_local i32 @irq_domain_set_hwirq_and_chip(%struct.irq_domain*, i32, i32, i32*, %struct.stm32_gpio_bank*) #1

declare dso_local i32 @irq_domain_alloc_irqs_parent(%struct.irq_domain*, i32, i32, %struct.irq_fwspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
