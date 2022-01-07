; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-armada-37xx.c_armada_37xx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.gpio_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.irq_domain* }
%struct.irq_domain = type { i32 }
%struct.irq_chip = type { i32 }
%struct.armada_37xx_pinctrl = type { i32, i64 }

@GPIO_PER_REG = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i64 0, align 8
@IRQ_EN = common dso_local global i64 0, align 8
@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @armada_37xx_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @armada_37xx_irq_handler(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.irq_chip*, align 8
  %5 = alloca %struct.armada_37xx_pinctrl*, align 8
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %14 = call %struct.gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc* %13)
  store %struct.gpio_chip* %14, %struct.gpio_chip** %3, align 8
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = call %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc* %15)
  store %struct.irq_chip* %16, %struct.irq_chip** %4, align 8
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %18 = call %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %17)
  store %struct.armada_37xx_pinctrl* %18, %struct.armada_37xx_pinctrl** %5, align 8
  %19 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %20 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.irq_domain*, %struct.irq_domain** %21, align 8
  store %struct.irq_domain* %22, %struct.irq_domain** %6, align 8
  %23 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %24 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %25 = call i32 @chained_irq_enter(%struct.irq_chip* %23, %struct.irq_desc* %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %144, %1
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %29 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GPIO_PER_REG, align 4
  %32 = sdiv i32 %30, %31
  %33 = icmp sle i32 %27, %32
  br i1 %33, label %34, label %147

34:                                               ; preds = %26
  %35 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %36 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %40 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IRQ_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 4, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %43, %46
  %48 = call i32 @readl_relaxed(i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %50 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IRQ_EN, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 4, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = call i32 @readl_relaxed(i64 %57)
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %62 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %61, i32 0, i32 0
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %112, %34
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %143

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @ffs(i32 %69)
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @GPIO_PER_REG, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = call i32 @irq_find_mapping(%struct.irq_domain* %72, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @irq_get_trigger_type(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %68
  %87 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @GPIO_PER_REG, align 4
  %91 = mul nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  %93 = call i64 @armada_37xx_edge_both_irq_swap_pol(%struct.armada_37xx_pinctrl* %87, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %86
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 1, %96
  %98 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %99 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IRQ_STATUS, align 8
  %102 = add nsw i64 %100, %101
  %103 = load i32, i32* %7, align 4
  %104 = mul nsw i32 4, %103
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %102, %105
  %107 = call i32 @writel(i32 %97, i64 %106)
  br label %112

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %68
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @generic_handle_irq(i32 %110)
  br label %112

112:                                              ; preds = %109, %95
  %113 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %114 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %113, i32 0, i32 0
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %118 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IRQ_STATUS, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i32, i32* %7, align 4
  %123 = mul nsw i32 4, %122
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = call i32 @readl_relaxed(i64 %125)
  store i32 %126, i32* %8, align 4
  %127 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %128 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @IRQ_EN, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 4, %132
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %131, %134
  %136 = call i32 @readl_relaxed(i64 %135)
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load %struct.armada_37xx_pinctrl*, %struct.armada_37xx_pinctrl** %5, align 8
  %140 = getelementptr inbounds %struct.armada_37xx_pinctrl, %struct.armada_37xx_pinctrl* %139, i32 0, i32 0
  %141 = load i64, i64* %9, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  br label %65

143:                                              ; preds = %65
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %26

147:                                              ; preds = %26
  %148 = load %struct.irq_chip*, %struct.irq_chip** %4, align 8
  %149 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %150 = call i32 @chained_irq_exit(%struct.irq_chip* %148, %struct.irq_desc* %149)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local %struct.irq_chip* @irq_desc_get_chip(%struct.irq_desc*) #1

declare dso_local %struct.armada_37xx_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @chained_irq_enter(%struct.irq_chip*, %struct.irq_desc*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i64 @armada_37xx_edge_both_irq_swap_pol(%struct.armada_37xx_pinctrl*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @generic_handle_irq(i32) #1

declare dso_local i32 @chained_irq_exit(%struct.irq_chip*, %struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
