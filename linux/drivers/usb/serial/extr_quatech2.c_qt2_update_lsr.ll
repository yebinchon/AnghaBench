; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_update_lsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_quatech2.c_qt2_update_lsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { %struct.async_icount }
%struct.async_icount = type { i32, i32, i32, i32 }
%struct.qt2_port_private = type { i32, i32 }

@UART_LSR_BI = common dso_local global i32 0, align 4
@UART_LSR_OE = common dso_local global i32 0, align 4
@UART_LSR_BRK_ERROR_BITS = common dso_local global i32 0, align 4
@UART_LSR_PE = common dso_local global i32 0, align 4
@UART_LSR_FE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i8*)* @qt2_update_lsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qt2_update_lsr(%struct.usb_serial_port* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_serial_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qt2_port_private*, align 8
  %6 = alloca %struct.async_icount*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %13 = call %struct.qt2_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %12)
  store %struct.qt2_port_private* %13, %struct.qt2_port_private** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @UART_LSR_BI, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @UART_LSR_OE, align 4
  %20 = load i32, i32* @UART_LSR_BI, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %26 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %25, i32 0, i32 1
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %31 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.qt2_port_private*, %struct.qt2_port_private** %5, align 8
  %33 = getelementptr inbounds %struct.qt2_port_private, %struct.qt2_port_private* %32, i32 0, i32 1
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load %struct.usb_serial_port*, %struct.usb_serial_port** %3, align 8
  %37 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %36, i32 0, i32 0
  store %struct.async_icount* %37, %struct.async_icount** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @UART_LSR_BRK_ERROR_BITS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %24
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @UART_LSR_BI, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %49 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @UART_LSR_OE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %59 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @UART_LSR_PE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %69 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @UART_LSR_FE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.async_icount*, %struct.async_icount** %6, align 8
  %79 = getelementptr inbounds %struct.async_icount, %struct.async_icount* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %77, %72
  br label %83

83:                                               ; preds = %82, %24
  ret void
}

declare dso_local %struct.qt2_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
