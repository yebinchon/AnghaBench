; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_men_z135_uart.c_men_z135_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.men_z135_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MEN_Z135_ALL_IRQS = common dso_local global i32 0, align 4
@MEN_Z135_CONF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @men_z135_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @men_z135_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.men_z135_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.men_z135_port* @to_men_z135(%struct.uart_port* %5)
  store %struct.men_z135_port* %6, %struct.men_z135_port** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @MEN_Z135_ALL_IRQS, align 4
  %8 = load i32, i32* %4, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.men_z135_port*, %struct.men_z135_port** %3, align 8
  %11 = load i32, i32* @MEN_Z135_CONF_REG, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @men_z135_reg_clr(%struct.men_z135_port* %10, i32 %11, i32 %12)
  %14 = load %struct.men_z135_port*, %struct.men_z135_port** %3, align 8
  %15 = getelementptr inbounds %struct.men_z135_port, %struct.men_z135_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.men_z135_port*, %struct.men_z135_port** %3, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.men_z135_port* %18)
  ret void
}

declare dso_local %struct.men_z135_port* @to_men_z135(%struct.uart_port*) #1

declare dso_local i32 @men_z135_reg_clr(%struct.men_z135_port*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.men_z135_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
