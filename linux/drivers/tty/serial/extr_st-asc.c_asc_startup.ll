; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_st-asc.c_asc_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32 }

@asc_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot allocate irq.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @asc_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asc_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %5 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @asc_interrupt, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call i32 @asc_port_name(%struct.uart_port* %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call i64 @request_irq(i32 %6, i32 %7, i32 0, i32 %9, %struct.uart_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = call i32 @asc_transmit_chars(%struct.uart_port* %21)
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = call i32 @asc_enable_rx_interrupts(%struct.uart_port* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i32 @asc_port_name(%struct.uart_port*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @asc_transmit_chars(%struct.uart_port*) #1

declare dso_local i32 @asc_enable_rx_interrupts(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
