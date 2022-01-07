; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_set_termios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }
%struct.ktermios = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@CMSPAR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UARTn_BAUDDIV_MASK = common dso_local global i32 0, align 4
@UARTn_BAUDDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @mps2_uart_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps2_uart_set_termios(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %10 = load i32, i32* @CRTSCTS, align 4
  %11 = load i32, i32* @CMSPAR, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @CSIZE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @CS8, align 4
  %25 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %26 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @PARENB, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %32 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @CSTOPB, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %38 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %42 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %43 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UARTn_BAUDDIV_MASK, align 4
  %48 = call i32 @DIV_ROUND_CLOSEST(i32 %46, i32 %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %50 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @DIV_ROUND_CLOSEST(i32 %51, i32 16)
  %53 = call i32 @uart_get_baud_rate(%struct.uart_port* %41, %struct.ktermios* %42, %struct.ktermios* %43, i32 %48, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @DIV_ROUND_CLOSEST(i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %60 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %64 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %65 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @uart_update_timeout(%struct.uart_port* %63, i32 %66, i32 %67)
  %69 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @UARTn_BAUDDIV, align 4
  %72 = call i32 @mps2_uart_write32(%struct.uart_port* %69, i32 %70, i32 %71)
  %73 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 0
  %75 = load i64, i64* %7, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %78 = call i64 @tty_termios_baud_rate(%struct.ktermios* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %3
  %81 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @tty_termios_encode_baud_rate(%struct.ktermios* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %3
  ret void
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uart_update_timeout(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @mps2_uart_write32(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @tty_termios_encode_baud_rate(%struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
