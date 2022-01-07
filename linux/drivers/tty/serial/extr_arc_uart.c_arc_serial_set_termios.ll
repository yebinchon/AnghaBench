; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32 }
%struct.arc_uart_port = type { i32 }

@CMSPAR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @arc_serial_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_serial_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca %struct.arc_uart_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %14 = call %struct.arc_uart_port* @to_arc_port(%struct.uart_port* %13)
  store %struct.arc_uart_port* %14, %struct.arc_uart_port** %7, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %17 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %18 = call i32 @uart_get_baud_rate(%struct.uart_port* %15, %struct.ktermios* %16, %struct.ktermios* %17, i32 0, i32 460800)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.arc_uart_port*, %struct.arc_uart_port** %7, align 8
  %23 = getelementptr inbounds %struct.arc_uart_port, %struct.arc_uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  %26 = sdiv i32 %21, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 8
  %32 = and i32 %31, 255
  store i32 %32, i32* %10, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = call i32 @UART_ALL_IRQ_DISABLE(%struct.uart_port* %37)
  %39 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @UART_SET_BAUDL(%struct.uart_port* %39, i32 %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @UART_SET_BAUDH(%struct.uart_port* %42, i32 %43)
  %45 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %46 = call i32 @UART_RX_IRQ_ENABLE(%struct.uart_port* %45)
  %47 = load i32, i32* @CMSPAR, align 4
  %48 = load i32, i32* @CRTSCTS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CSIZE, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %54 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @CS8, align 4
  %58 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %59 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %63 = icmp ne %struct.ktermios* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %3
  %65 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %66 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %67 = call i32 @tty_termios_copy_hw(%struct.ktermios* %65, %struct.ktermios* %66)
  br label %68

68:                                               ; preds = %64, %3
  %69 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %70 = call i64 @tty_termios_baud_rate(%struct.ktermios* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72, %68
  %78 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %79 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %80 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @uart_update_timeout(%struct.uart_port* %78, i32 %81, i32 %82)
  %84 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %85 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %84, i32 0, i32 1
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  ret void
}

declare dso_local %struct.arc_uart_port* @to_arc_port(%struct.uart_port*) #1

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @UART_ALL_IRQ_DISABLE(%struct.uart_port*) #1

declare dso_local i32 @UART_SET_BAUDL(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_SET_BAUDH(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_RX_IRQ_ENABLE(%struct.uart_port*) #1

declare dso_local i32 @tty_termios_copy_hw(%struct.ktermios*, %struct.ktermios*) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
