; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pericom_do_set_divisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pericom_do_set_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32, i32)* @pericom_do_set_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pericom_do_set_divisor(%struct.uart_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 5, i32* %9, align 4
  br label %13

13:                                               ; preds = %62, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 15
  br i1 %15, label %16, label %65

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = sdiv i32 14745600, %17
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sdiv i32 %19, 50
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp ugt i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %34 = load i32, i32* @UART_LCR, align 4
  %35 = call i32 @serial_port_in(%struct.uart_port* %33, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %37 = load i32, i32* @UART_LCR, align 4
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, 128
  %40 = call i32 @serial_port_out(%struct.uart_port* %36, i32 %37, i32 %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = load i32, i32* @UART_DLL, align 4
  %43 = call i32 @serial_port_out(%struct.uart_port* %41, i32 %42, i32 1)
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = load i32, i32* @UART_DLM, align 4
  %46 = call i32 @serial_port_out(%struct.uart_port* %44, i32 %45, i32 0)
  %47 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sub nsw i32 16, %48
  %50 = call i32 @serial_port_out(%struct.uart_port* %47, i32 2, i32 %49)
  %51 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %52 = load i32, i32* @UART_LCR, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @serial_port_out(%struct.uart_port* %51, i32 %52, i32 %53)
  br label %71

55:                                               ; preds = %26, %16
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %65

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %13

65:                                               ; preds = %59, %13
  %66 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @serial8250_do_set_divisor(%struct.uart_port* %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %32
  ret void
}

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial8250_do_set_divisor(%struct.uart_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
