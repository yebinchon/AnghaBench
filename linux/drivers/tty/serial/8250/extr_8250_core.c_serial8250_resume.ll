; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_core.c_serial8250_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }
%struct.platform_device = type { i32 }

@UART_NR = common dso_local global i32 0, align 4
@serial8250_ports = common dso_local global %struct.uart_8250_port* null, align 8
@PORT_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @serial8250_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_resume(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_8250_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @UART_NR, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** @serial8250_ports, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i64 %12
  store %struct.uart_8250_port* %13, %struct.uart_8250_port** %4, align 8
  %14 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_UNKNOWN, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %9
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %22 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = icmp eq i32* %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @serial8250_resume_port(i32 %29)
  br label %31

31:                                               ; preds = %28, %20, %9
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %5

35:                                               ; preds = %5
  ret i32 0
}

declare dso_local i32 @serial8250_resume_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
