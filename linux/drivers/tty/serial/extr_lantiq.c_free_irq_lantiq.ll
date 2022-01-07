; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_free_irq_lantiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lantiq.c_free_irq_lantiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ltq_uart_port = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @free_irq_lantiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_irq_lantiq(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.ltq_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port* %4)
  store %struct.ltq_uart_port* %5, %struct.ltq_uart_port** %3, align 8
  %6 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i32 @free_irq(i32 %8, %struct.uart_port* %9)
  %11 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.uart_port* %14)
  %16 = load %struct.ltq_uart_port*, %struct.ltq_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.ltq_uart_port, %struct.ltq_uart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %20 = call i32 @free_irq(i32 %18, %struct.uart_port* %19)
  ret void
}

declare dso_local %struct.ltq_uart_port* @to_ltq_uart_port(%struct.uart_port*) #1

declare dso_local i32 @free_irq(i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
