; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_owl-uart.c_owl_uart_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@OWL_UART_STAT = common dso_local global i32 0, align 4
@OWL_UART_STAT_RIP = common dso_local global i32 0, align 4
@OWL_UART_STAT_TIP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @owl_uart_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_uart_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %5, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %15 = load i32, i32* @OWL_UART_STAT, align 4
  %16 = call i32 @owl_uart_read(%struct.uart_port* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @OWL_UART_STAT_RIP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = call i32 @owl_uart_receive_chars(%struct.uart_port* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @OWL_UART_STAT_TIP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %31 = call i32 @owl_uart_send_chars(%struct.uart_port* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %34 = load i32, i32* @OWL_UART_STAT, align 4
  %35 = call i32 @owl_uart_read(%struct.uart_port* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @OWL_UART_STAT_RIP, align 4
  %37 = load i32, i32* @OWL_UART_STAT_TIP, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @OWL_UART_STAT, align 4
  %44 = call i32 @owl_uart_write(%struct.uart_port* %41, i32 %42, i32 %43)
  %45 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @owl_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @owl_uart_receive_chars(%struct.uart_port*) #1

declare dso_local i32 @owl_uart_send_chars(%struct.uart_port*) #1

declare dso_local i32 @owl_uart_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
