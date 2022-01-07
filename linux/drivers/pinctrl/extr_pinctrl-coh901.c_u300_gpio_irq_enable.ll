; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-coh901.c_u300_gpio_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.gpio_chip = type { i32 }
%struct.u300_gpio = type { i32, %struct.u300_gpio_port* }
%struct.u300_gpio_port = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"enable IRQ for hwirq %lu on port %s, offset %d\0A\00", align 1
@ien = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @u300_gpio_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u300_gpio_irq_enable(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca %struct.u300_gpio*, align 8
  %5 = alloca %struct.u300_gpio_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.gpio_chip* %10, %struct.gpio_chip** %3, align 8
  %11 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %12 = call %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip* %11)
  store %struct.u300_gpio* %12, %struct.u300_gpio** %4, align 8
  %13 = load %struct.u300_gpio*, %struct.u300_gpio** %4, align 8
  %14 = getelementptr inbounds %struct.u300_gpio, %struct.u300_gpio* %13, i32 0, i32 1
  %15 = load %struct.u300_gpio_port*, %struct.u300_gpio_port** %14, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.u300_gpio_port, %struct.u300_gpio_port* %15, i64 %20
  store %struct.u300_gpio_port* %21, %struct.u300_gpio_port** %5, align 8
  %22 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %23 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.u300_gpio*, %struct.u300_gpio** %4, align 8
  %26 = getelementptr inbounds %struct.u300_gpio, %struct.u300_gpio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.u300_gpio_port*, %struct.u300_gpio_port** %5, align 8
  %32 = getelementptr inbounds %struct.u300_gpio_port, %struct.u300_gpio_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ien, align 4
  %40 = call i32 @U300_PIN_REG(i32 %38, i32 %39)
  %41 = call i32 @readl(i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @U300_PIN_BIT(i32 %43)
  %45 = or i32 %42, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ien, align 4
  %48 = call i32 @U300_PIN_REG(i32 %46, i32 %47)
  %49 = call i32 @writel(i32 %45, i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @local_irq_restore(i64 %50)
  ret void
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local %struct.u300_gpio* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @U300_PIN_REG(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @U300_PIN_BIT(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
