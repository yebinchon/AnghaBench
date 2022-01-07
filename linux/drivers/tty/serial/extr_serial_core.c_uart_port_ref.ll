; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_port_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_port_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_state = type { %struct.uart_port*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.uart_port* (%struct.uart_state*)* @uart_port_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.uart_port* @uart_port_ref(%struct.uart_state* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_state*, align 8
  store %struct.uart_state* %0, %struct.uart_state** %3, align 8
  %4 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %5 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %4, i32 0, i32 1
  %6 = call i64 @atomic_add_unless(i32* %5, i32 1, i32 0)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %10 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %9, i32 0, i32 0
  %11 = load %struct.uart_port*, %struct.uart_port** %10, align 8
  store %struct.uart_port* %11, %struct.uart_port** %2, align 8
  br label %13

12:                                               ; preds = %1
  store %struct.uart_port* null, %struct.uart_port** %2, align 8
  br label %13

13:                                               ; preds = %12, %8
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  ret %struct.uart_port* %14
}

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
