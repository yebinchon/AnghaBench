; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_set_ldisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_set_ldisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uart_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.uart_port*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @uart_set_ldisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_set_ldisc(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.uart_state*, %struct.uart_state** %6, align 8
  store %struct.uart_state* %7, %struct.uart_state** %3, align 8
  %8 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %9 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %13 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %12)
  store %struct.uart_port* %13, %struct.uart_port** %4, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = icmp ne %struct.uart_port* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32 (%struct.uart_port*, i32*)*, i32 (%struct.uart_port*, i32*)** %20, align 8
  %22 = icmp ne i32 (%struct.uart_port*, i32*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.uart_port*, i32*)*, i32 (%struct.uart_port*, i32*)** %27, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %30, i32 0, i32 0
  %32 = call i32 %28(%struct.uart_port* %29, i32* %31)
  br label %33

33:                                               ; preds = %23, %16, %1
  %34 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %35 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
