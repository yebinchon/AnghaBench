; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.qcom_geni_serial_port = type { i32 }

@UART_PM_STATE_UNDEFINED = common dso_local global i32 0, align 4
@UART_PM_STATE_OFF = common dso_local global i32 0, align 4
@UART_PM_STATE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32, i32)* @qcom_geni_serial_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_geni_serial_pm(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qcom_geni_serial_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %10 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %8, %struct.uart_port* %9)
  store %struct.qcom_geni_serial_port* %10, %struct.qcom_geni_serial_port** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @UART_PM_STATE_UNDEFINED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @UART_PM_STATE_OFF, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @UART_PM_STATE_ON, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @UART_PM_STATE_OFF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %7, align 8
  %26 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %25, i32 0, i32 0
  %27 = call i32 @geni_se_resources_on(i32* %26)
  br label %41

28:                                               ; preds = %20, %16
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @UART_PM_STATE_OFF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @UART_PM_STATE_ON, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %7, align 8
  %38 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %37, i32 0, i32 0
  %39 = call i32 @geni_se_resources_off(i32* %38)
  br label %40

40:                                               ; preds = %36, %32, %28
  br label %41

41:                                               ; preds = %40, %24
  ret void
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @geni_se_resources_on(i32*) #1

declare dso_local i32 @geni_se_resources_off(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
