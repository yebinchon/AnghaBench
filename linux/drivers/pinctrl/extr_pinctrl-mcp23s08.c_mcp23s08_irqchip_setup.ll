; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp23s08_irqchip_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-mcp23s08.c_mcp23s08_irqchip_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcp23s08 = type { i32, i32, %struct.gpio_chip }
%struct.gpio_chip = type { i32 }

@handle_simple_irq = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not connect irqchip to gpiochip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcp23s08*)* @mcp23s08_irqchip_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcp23s08_irqchip_setup(%struct.mcp23s08* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcp23s08*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.mcp23s08* %0, %struct.mcp23s08** %3, align 8
  %6 = load %struct.mcp23s08*, %struct.mcp23s08** %3, align 8
  %7 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %6, i32 0, i32 2
  store %struct.gpio_chip* %7, %struct.gpio_chip** %4, align 8
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %9 = load %struct.mcp23s08*, %struct.mcp23s08** %3, align 8
  %10 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %9, i32 0, i32 1
  %11 = load i32, i32* @handle_simple_irq, align 4
  %12 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %13 = call i32 @gpiochip_irqchip_add_nested(%struct.gpio_chip* %8, i32* %10, i32 0, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %18 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %25 = load %struct.mcp23s08*, %struct.mcp23s08** %3, align 8
  %26 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %25, i32 0, i32 1
  %27 = load %struct.mcp23s08*, %struct.mcp23s08** %3, align 8
  %28 = getelementptr inbounds %struct.mcp23s08, %struct.mcp23s08* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiochip_set_nested_irqchip(%struct.gpio_chip* %24, i32* %26, i32 %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @gpiochip_irqchip_add_nested(%struct.gpio_chip*, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpiochip_set_nested_irqchip(%struct.gpio_chip*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
