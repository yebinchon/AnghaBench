; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_ulite_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.uartlite_data* }
%struct.uartlite_data = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@ulite_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"uartlite\00", align 1
@ULITE_CONTROL_RST_RX = common dso_local global i32 0, align 4
@ULITE_CONTROL_RST_TX = common dso_local global i32 0, align 4
@ULITE_CONTROL = common dso_local global i32 0, align 4
@ULITE_CONTROL_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @ulite_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ulite_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uartlite_data*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 2
  %8 = load %struct.uartlite_data*, %struct.uartlite_data** %7, align 8
  store %struct.uartlite_data* %8, %struct.uartlite_data** %4, align 8
  %9 = load %struct.uartlite_data*, %struct.uartlite_data** %4, align 8
  %10 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_enable(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %46

21:                                               ; preds = %1
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ulite_isr, align 4
  %26 = load i32, i32* @IRQF_SHARED, align 4
  %27 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %30 = call i32 @request_irq(i32 %24, i32 %25, i32 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.uart_port* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %21
  %36 = load i32, i32* @ULITE_CONTROL_RST_RX, align 4
  %37 = load i32, i32* @ULITE_CONTROL_RST_TX, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ULITE_CONTROL, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = call i32 @uart_out32(i32 %38, i32 %39, %struct.uart_port* %40)
  %42 = load i32, i32* @ULITE_CONTROL_IE, align 4
  %43 = load i32, i32* @ULITE_CONTROL, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %45 = call i32 @uart_out32(i32 %42, i32 %43, %struct.uart_port* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %33, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.uart_port*) #1

declare dso_local i32 @uart_out32(i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
