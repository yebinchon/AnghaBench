; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ip22zilog.c_ip22zilog_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_ip22zilog_port = type { i32* }
%struct.zilog_channel = type { i32 }

@RxINT_MASK = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @ip22zilog_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip22zilog_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_ip22zilog_port*, align 8
  %4 = alloca %struct.zilog_channel*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_ip22zilog_port* @UART_ZILOG(%struct.uart_port* %5)
  store %struct.uart_ip22zilog_port* %6, %struct.uart_ip22zilog_port** %3, align 8
  %7 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %8 = call i64 @ZS_IS_CONS(%struct.uart_ip22zilog_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port* %12)
  store %struct.zilog_channel* %13, %struct.zilog_channel** %4, align 8
  %14 = load i32, i32* @RxINT_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_ip22zilog_port, %struct.uart_ip22zilog_port* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @R1, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %15
  store i32 %22, i32* %20, align 4
  %23 = load %struct.uart_ip22zilog_port*, %struct.uart_ip22zilog_port** %3, align 8
  %24 = load %struct.zilog_channel*, %struct.zilog_channel** %4, align 8
  %25 = call i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port* %23, %struct.zilog_channel* %24)
  br label %26

26:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.uart_ip22zilog_port* @UART_ZILOG(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_CONS(%struct.uart_ip22zilog_port*) #1

declare dso_local %struct.zilog_channel* @ZILOG_CHANNEL_FROM_PORT(%struct.uart_port*) #1

declare dso_local i32 @ip22zilog_maybe_update_regs(%struct.uart_ip22zilog_port*, %struct.zilog_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
