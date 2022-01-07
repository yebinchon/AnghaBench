; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_get_port_from_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_get_port_from_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_geni_serial_port = type { i32 }

@GENI_UART_CONS_PORTS = common dso_local global i32 0, align 4
@GENI_UART_PORTS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@qcom_geni_console_port = common dso_local global %struct.qcom_geni_serial_port zeroinitializer, align 4
@qcom_geni_uart_ports = common dso_local global %struct.qcom_geni_serial_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qcom_geni_serial_port* (i32, i32)* @get_port_from_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qcom_geni_serial_port* @get_port_from_line(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_geni_serial_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_geni_serial_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @GENI_UART_CONS_PORTS, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @GENI_UART_PORTS, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.qcom_geni_serial_port* @ERR_PTR(i32 %24)
  store %struct.qcom_geni_serial_port* %25, %struct.qcom_geni_serial_port** %3, align 8
  br label %38

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %35

30:                                               ; preds = %26
  %31 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** @qcom_geni_uart_ports, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %31, i64 %33
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi %struct.qcom_geni_serial_port* [ @qcom_geni_console_port, %29 ], [ %34, %30 ]
  store %struct.qcom_geni_serial_port* %36, %struct.qcom_geni_serial_port** %6, align 8
  %37 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %6, align 8
  store %struct.qcom_geni_serial_port* %37, %struct.qcom_geni_serial_port** %3, align 8
  br label %38

38:                                               ; preds = %35, %22
  %39 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %3, align 8
  ret %struct.qcom_geni_serial_port* %39
}

declare dso_local %struct.qcom_geni_serial_port* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
