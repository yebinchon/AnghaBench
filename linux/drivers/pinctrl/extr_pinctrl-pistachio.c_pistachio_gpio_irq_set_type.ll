; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_gpio_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-pistachio.c_pistachio_gpio_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.pistachio_gpio_bank = type { i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@GPIO_INPUT_POLARITY = common dso_local global i32 0, align 4
@GPIO_INTERRUPT_TYPE = common dso_local global i32 0, align 4
@GPIO_INTERRUPT_TYPE_EDGE = common dso_local global i32 0, align 4
@GPIO_INTERRUPT_EDGE = common dso_local global i32 0, align 4
@GPIO_INTERRUPT_EDGE_SINGLE = common dso_local global i32 0, align 4
@GPIO_INTERRUPT_EDGE_DUAL = common dso_local global i32 0, align 4
@GPIO_INTERRUPT_TYPE_LEVEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@handle_edge_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @pistachio_gpio_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_gpio_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pistachio_gpio_bank*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %8 = call %struct.pistachio_gpio_bank* @irqd_to_bank(%struct.irq_data* %7)
  store %struct.pistachio_gpio_bank* %8, %struct.pistachio_gpio_bank** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %97 [
    i32 130, label %12
    i32 131, label %33
    i32 132, label %54
    i32 129, label %69
    i32 128, label %83
  ]

12:                                               ; preds = %2
  %13 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %14 = load i32, i32* @GPIO_INPUT_POLARITY, align 4
  %15 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %16 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %13, i32 %14, i32 %17, i32 1)
  %19 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %20 = load i32, i32* @GPIO_INTERRUPT_TYPE, align 4
  %21 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %22 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GPIO_INTERRUPT_TYPE_EDGE, align 4
  %25 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %19, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %27 = load i32, i32* @GPIO_INTERRUPT_EDGE, align 4
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GPIO_INTERRUPT_EDGE_SINGLE, align 4
  %32 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %26, i32 %27, i32 %30, i32 %31)
  br label %100

33:                                               ; preds = %2
  %34 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %35 = load i32, i32* @GPIO_INPUT_POLARITY, align 4
  %36 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %37 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %34, i32 %35, i32 %38, i32 0)
  %40 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %41 = load i32, i32* @GPIO_INTERRUPT_TYPE, align 4
  %42 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %43 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GPIO_INTERRUPT_TYPE_EDGE, align 4
  %46 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %40, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %48 = load i32, i32* @GPIO_INTERRUPT_EDGE, align 4
  %49 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %50 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GPIO_INTERRUPT_EDGE_SINGLE, align 4
  %53 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %47, i32 %48, i32 %51, i32 %52)
  br label %100

54:                                               ; preds = %2
  %55 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %56 = load i32, i32* @GPIO_INTERRUPT_TYPE, align 4
  %57 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %58 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GPIO_INTERRUPT_TYPE_EDGE, align 4
  %61 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %55, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %63 = load i32, i32* @GPIO_INTERRUPT_EDGE, align 4
  %64 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %65 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GPIO_INTERRUPT_EDGE_DUAL, align 4
  %68 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %62, i32 %63, i32 %66, i32 %67)
  br label %100

69:                                               ; preds = %2
  %70 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %71 = load i32, i32* @GPIO_INPUT_POLARITY, align 4
  %72 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %73 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %70, i32 %71, i32 %74, i32 1)
  %76 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %77 = load i32, i32* @GPIO_INTERRUPT_TYPE, align 4
  %78 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %79 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GPIO_INTERRUPT_TYPE_LEVEL, align 4
  %82 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %76, i32 %77, i32 %80, i32 %81)
  br label %100

83:                                               ; preds = %2
  %84 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %85 = load i32, i32* @GPIO_INPUT_POLARITY, align 4
  %86 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %87 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %84, i32 %85, i32 %88, i32 0)
  %90 = load %struct.pistachio_gpio_bank*, %struct.pistachio_gpio_bank** %6, align 8
  %91 = load i32, i32* @GPIO_INTERRUPT_TYPE, align 4
  %92 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %93 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GPIO_INTERRUPT_TYPE_LEVEL, align 4
  %96 = call i32 @gpio_mask_writel(%struct.pistachio_gpio_bank* %90, i32 %91, i32 %94, i32 %95)
  br label %100

97:                                               ; preds = %2
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %114

100:                                              ; preds = %83, %69, %54, %33, %12
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %107 = load i32, i32* @handle_level_irq, align 4
  %108 = call i32 @irq_set_handler_locked(%struct.irq_data* %106, i32 %107)
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %111 = load i32, i32* @handle_edge_irq, align 4
  %112 = call i32 @irq_set_handler_locked(%struct.irq_data* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %97
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.pistachio_gpio_bank* @irqd_to_bank(%struct.irq_data*) #1

declare dso_local i32 @gpio_mask_writel(%struct.pistachio_gpio_bank*, i32, i32, i32) #1

declare dso_local i32 @irq_set_handler_locked(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
