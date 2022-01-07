; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_qcom_geni_serial.c_qcom_geni_serial_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.qcom_geni_serial_port = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"qcom_serial_%s%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@qcom_geni_serial_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to get IRQ ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @qcom_geni_serial_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_geni_serial_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_geni_serial_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = call %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port* %6, %struct.uart_port* %7)
  store %struct.qcom_geni_serial_port* %8, %struct.qcom_geni_serial_port** %5, align 8
  %9 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %13 = call i64 @uart_console(%struct.uart_port* %12)
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scnprintf(i32 %11, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %19)
  %21 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %22 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = call i32 @qcom_geni_serial_port_setup(%struct.uart_port* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @qcom_geni_serial_isr, align 4
  %38 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %39 = load %struct.qcom_geni_serial_port*, %struct.qcom_geni_serial_port** %5, align 8
  %40 = getelementptr inbounds %struct.qcom_geni_serial_port, %struct.qcom_geni_serial_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = call i32 @request_irq(i32 %36, i32 %37, i32 %38, i32 %41, %struct.uart_port* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %33
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %30
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.qcom_geni_serial_port* @to_dev_port(%struct.uart_port*, %struct.uart_port*) #1

declare dso_local i32 @scnprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @qcom_geni_serial_port_setup(%struct.uart_port*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
