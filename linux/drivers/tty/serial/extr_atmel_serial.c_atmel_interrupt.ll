; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32, i32, i64 }

@ATMEL_US_CSR = common dso_local global i32 0, align 4
@ATMEL_US_IMR = common dso_local global i32 0, align 4
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_ISR_PASS_LIMIT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.atmel_uart_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_port*
  store %struct.uart_port* %12, %struct.uart_port** %5, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %14 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %13)
  store %struct.atmel_uart_port* %14, %struct.atmel_uart_port** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %15, i32 0, i32 2
  %17 = call i32 @spin_lock(i32* %16)
  br label %18

18:                                               ; preds = %61, %2
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = load i32, i32* @ATMEL_US_CSR, align 4
  %21 = call i32 @atmel_uart_readl(%struct.uart_port* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = load i32, i32* @ATMEL_US_IMR, align 4
  %24 = call i32 @atmel_uart_readl(%struct.uart_port* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %66

31:                                               ; preds = %18
  %32 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %6, align 8
  %33 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %6, align 8
  %39 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %6, align 8
  %44 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %46 = load i32, i32* @ATMEL_US_IDR, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @atmel_uart_writel(%struct.uart_port* %45, i32 %46, i32 %47)
  %49 = call i32 (...) @pm_system_wakeup()
  br label %66

50:                                               ; preds = %31
  %51 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @atmel_handle_receive(%struct.uart_port* %51, i32 %52)
  %54 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @atmel_handle_status(%struct.uart_port* %54, i32 %55, i32 %56)
  %58 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @atmel_handle_transmit(%struct.uart_port* %58, i32 %59)
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* @ATMEL_ISR_PASS_LIMIT, align 4
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %18, label %66

66:                                               ; preds = %61, %36, %30
  %67 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %67, i32 0, i32 2
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @IRQ_HANDLED, align 4
  br label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @IRQ_NONE, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  ret i32 %77
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @pm_system_wakeup(...) #1

declare dso_local i32 @atmel_handle_receive(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_handle_status(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_handle_transmit(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
