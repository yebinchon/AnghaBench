; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_irq_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/nuvoton/extr_pinctrl-npcm7xx.c_npcmgpio_irq_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_chip = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"startup: %u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*)* @npcmgpio_irq_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @npcmgpio_irq_startup(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = call %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data* %5)
  store %struct.gpio_chip* %6, %struct.gpio_chip** %3, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @npcmgpio_direction_input(%struct.gpio_chip* %20, i32 %21)
  %23 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %24 = call i32 @npcmgpio_irq_ack(%struct.irq_data* %23)
  %25 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %26 = call i32 @npcmgpio_irq_unmask(%struct.irq_data* %25)
  ret i32 0
}

declare dso_local %struct.gpio_chip* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @npcmgpio_direction_input(%struct.gpio_chip*, i32) #1

declare dso_local i32 @npcmgpio_irq_ack(%struct.irq_data*) #1

declare dso_local i32 @npcmgpio_irq_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
