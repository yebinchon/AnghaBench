; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_scan_fifo_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_apbuart.c_apbuart_scan_fifo_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_CTRL_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32)* @apbuart_scan_fifo_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apbuart_scan_fifo_size(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call i32 @UART_GET_CTRL(%struct.uart_port* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %9, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @UART_CTRL_TE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @UART_PUT_CTRL(%struct.uart_port* %14, i32 %17)
  br label %19

19:                                               ; preds = %25, %2
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = call i32 @UART_GET_STATUS(%struct.uart_port* %20)
  %22 = call i32 @UART_TX_READY(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %19

28:                                               ; preds = %19
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @UART_CTRL_TE, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @UART_PUT_CTRL(%struct.uart_port* %29, i32 %33)
  store i32 1, i32* %8, align 4
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = call i32 @UART_PUT_CHAR(%struct.uart_port* %35, i32 0)
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = call i32 @UART_GET_STATUS(%struct.uart_port* %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %45, %28
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 20
  %42 = and i32 %41, 63
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %49 = call i32 @UART_PUT_CHAR(%struct.uart_port* %48, i32 0)
  %50 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %51 = call i32 @UART_GET_STATUS(%struct.uart_port* %50)
  store i32 %51, i32* %7, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @UART_PUT_CTRL(%struct.uart_port* %55, i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @local_irq_restore(i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 1, i32* %8, align 4
  br label %63

63:                                               ; preds = %62, %52
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local i32 @UART_GET_CTRL(%struct.uart_port*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @UART_PUT_CTRL(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_TX_READY(i32) #1

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

declare dso_local i32 @UART_PUT_CHAR(%struct.uart_port*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
