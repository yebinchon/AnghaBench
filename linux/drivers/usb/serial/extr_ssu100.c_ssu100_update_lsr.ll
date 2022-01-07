; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_update_lsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_ssu100.c_ssu100_update_lsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ssu100_port_private = type { i32, i32 }

@TTY_NORMAL = common dso_local global i8 0, align 1
@UART_LSR_BRK_ERROR_BITS = common dso_local global i32 0, align 4
@UART_LSR_BI = common dso_local global i32 0, align 4
@TTY_BREAK = common dso_local global i8 0, align 1
@UART_LSR_PE = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@UART_LSR_FE = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@UART_LSR_OE = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_serial_port*, i32, i8*)* @ssu100_update_lsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssu100_update_lsr(%struct.usb_serial_port* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ssu100_port_private*, align 8
  %8 = alloca i64, align 8
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %10 = call %struct.ssu100_port_private* @usb_get_serial_port_data(%struct.usb_serial_port* %9)
  store %struct.ssu100_port_private* %10, %struct.ssu100_port_private** %7, align 8
  %11 = load %struct.ssu100_port_private*, %struct.ssu100_port_private** %7, align 8
  %12 = getelementptr inbounds %struct.ssu100_port_private, %struct.ssu100_port_private* %11, i32 0, i32 1
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ssu100_port_private*, %struct.ssu100_port_private** %7, align 8
  %17 = getelementptr inbounds %struct.ssu100_port_private, %struct.ssu100_port_private* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ssu100_port_private*, %struct.ssu100_port_private** %7, align 8
  %19 = getelementptr inbounds %struct.ssu100_port_private, %struct.ssu100_port_private* %18, i32 0, i32 1
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load i8, i8* @TTY_NORMAL, align 1
  %23 = load i8*, i8** %6, align 8
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @UART_LSR_BRK_ERROR_BITS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @UART_LSR_BI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %35 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i8, i8* @TTY_BREAK, align 1
  %40 = load i8*, i8** %6, align 8
  store i8 %39, i8* %40, align 1
  %41 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %42 = call i32 @usb_serial_handle_break(%struct.usb_serial_port* %41)
  br label %43

43:                                               ; preds = %33, %28
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @UART_LSR_PE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %50 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @TTY_NORMAL, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i8, i8* @TTY_PARITY, align 1
  %62 = load i8*, i8** %6, align 8
  store i8 %61, i8* %62, align 1
  br label %63

63:                                               ; preds = %60, %48
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @UART_LSR_FE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %71 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = load i8, i8* @TTY_NORMAL, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i8, i8* @TTY_FRAME, align 1
  %83 = load i8*, i8** %6, align 8
  store i8 %82, i8* %83, align 1
  br label %84

84:                                               ; preds = %81, %69
  br label %85

85:                                               ; preds = %84, %64
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @UART_LSR_OE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %92 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %97 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %96, i32 0, i32 0
  %98 = load i32, i32* @TTY_OVERRUN, align 4
  %99 = call i32 @tty_insert_flip_char(i32* %97, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %90, %85
  br label %101

101:                                              ; preds = %100, %3
  ret void
}

declare dso_local %struct.ssu100_port_private* @usb_get_serial_port_data(%struct.usb_serial_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_serial_handle_break(%struct.usb_serial_port*) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
