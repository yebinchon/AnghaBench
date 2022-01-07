; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_tiocmset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_tiocmset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32, i32)* @uart_tiocmset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_tiocmset(%struct.tty_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_state*, align 8
  %8 = alloca %struct.tty_port*, align 8
  %9 = alloca %struct.uart_port*, align 8
  %10 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 0
  %13 = load %struct.uart_state*, %struct.uart_state** %12, align 8
  store %struct.uart_state* %13, %struct.uart_state** %7, align 8
  %14 = load %struct.uart_state*, %struct.uart_state** %7, align 8
  %15 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %14, i32 0, i32 0
  store %struct.tty_port* %15, %struct.tty_port** %8, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %19 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.uart_state*, %struct.uart_state** %7, align 8
  %22 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %21)
  store %struct.uart_port* %22, %struct.uart_port** %9, align 8
  %23 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %24 = icmp ne %struct.uart_port* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %36

26:                                               ; preds = %3
  %27 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %28 = call i32 @tty_io_error(%struct.tty_struct* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load %struct.uart_port*, %struct.uart_port** %9, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @uart_update_mctrl(%struct.uart_port* %31, i32 %32, i32 %33)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.tty_port*, %struct.tty_port** %8, align 8
  %38 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %10, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @tty_io_error(%struct.tty_struct*) #1

declare dso_local i32 @uart_update_mctrl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
