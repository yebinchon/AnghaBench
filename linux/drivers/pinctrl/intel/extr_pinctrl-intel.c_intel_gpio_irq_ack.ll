; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_irq_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/intel/extr_pinctrl-intel.c_intel_gpio_irq_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.intel_pinctrl = type { i32 }
%struct.intel_community = type { i32, i64 }
%struct.intel_padgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @intel_gpio_irq_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_gpio_irq_ack(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.intel_pinctrl*, align 8
  %5 = alloca %struct.intel_community*, align 8
  %6 = alloca %struct.intel_padgroup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %11 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %12 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %11)
  store %struct.gpio_chip* %12, %struct.gpio_chip** %3, align 8
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %14 = call %struct.intel_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %13)
  store %struct.intel_pinctrl* %14, %struct.intel_pinctrl** %4, align 8
  %15 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = call i32 @irqd_to_hwirq(%struct.irq_data* %16)
  %18 = call i32 @intel_gpio_to_pin(%struct.intel_pinctrl* %15, i32 %17, %struct.intel_community** %5, %struct.intel_padgroup** %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  %22 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %23 = getelementptr inbounds %struct.intel_padgroup, %struct.intel_padgroup* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.intel_padgroup*, %struct.intel_padgroup** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @padgroup_offset(%struct.intel_padgroup* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %29 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = mul i32 %31, 4
  %33 = add i32 %30, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %35 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %34, i32 0, i32 0
  %36 = call i32 @raw_spin_lock(i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.intel_community*, %struct.intel_community** %5, align 8
  %40 = getelementptr inbounds %struct.intel_community, %struct.intel_community* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i32 %38, i64 %44)
  %46 = load %struct.intel_pinctrl*, %struct.intel_pinctrl** %4, align 8
  %47 = getelementptr inbounds %struct.intel_pinctrl, %struct.intel_pinctrl* %46, i32 0, i32 0
  %48 = call i32 @raw_spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.intel_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @intel_gpio_to_pin(%struct.intel_pinctrl*, i32, %struct.intel_community**, %struct.intel_padgroup**) #1

declare dso_local i32 @irqd_to_hwirq(%struct.irq_data*) #1

declare dso_local i32 @padgroup_offset(%struct.intel_padgroup*, i32) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
