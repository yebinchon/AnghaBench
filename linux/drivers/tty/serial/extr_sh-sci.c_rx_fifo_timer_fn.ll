; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_rx_fifo_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sh-sci.c_rx_fifo_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_port = type { %struct.uart_port }
%struct.uart_port = type { i32 }
%struct.timer_list = type { i32 }

@rx_fifo_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Rx timed out\0A\00", align 1
@s = common dso_local global %struct.sci_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rx_fifo_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_fifo_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.sci_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %6 = ptrtoint %struct.sci_port* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @rx_fifo_timer, align 4
  %9 = call %struct.sci_port* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.sci_port* %9, %struct.sci_port** %3, align 8
  %10 = load %struct.sci_port*, %struct.sci_port** %3, align 8
  %11 = getelementptr inbounds %struct.sci_port, %struct.sci_port* %10, i32 0, i32 0
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = call i32 @scif_set_rtrg(%struct.uart_port* %16, i32 1)
  ret void
}

declare dso_local %struct.sci_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @scif_set_rtrg(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
