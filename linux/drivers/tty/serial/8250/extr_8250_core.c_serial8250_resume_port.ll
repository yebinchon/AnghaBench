; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_resume_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_resume_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32, i64, %struct.uart_port }
%struct.uart_port = type { i32 }

@serial8250_ports = common dso_local global %struct.uart_8250_port* null, align 8
@UART_NATSEMI = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@serial8250_reg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial8250_resume_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %5, i64 %7
  store %struct.uart_8250_port* %8, %struct.uart_8250_port** %3, align 8
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %9, i32 0, i32 2
  store %struct.uart_port* %10, %struct.uart_port** %4, align 8
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @UART_NATSEMI, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %21 = load i32, i32* @UART_LCR, align 4
  %22 = call i32 @serial_port_out(%struct.uart_port* %20, i32 %21, i32 224)
  %23 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %24 = call i32 @ns16550a_goto_highspeed(%struct.uart_8250_port* %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %26 = load i32, i32* @UART_LCR, align 4
  %27 = call i32 @serial_port_out(%struct.uart_port* %25, i32 %26, i32 0)
  %28 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 0
  store i32 14745600, i32* %29, align 4
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %32 = call i32 @uart_resume_port(i32* @serial8250_reg, %struct.uart_port* %31)
  ret void
}

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @ns16550a_goto_highspeed(%struct.uart_8250_port*) #1

declare dso_local i32 @uart_resume_port(i32*, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
