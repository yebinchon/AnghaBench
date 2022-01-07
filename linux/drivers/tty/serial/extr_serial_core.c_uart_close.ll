; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.TYPE_2__*, %struct.uart_state* }
%struct.TYPE_2__ = type { %struct.uart_driver* }
%struct.uart_driver = type { %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32, i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"uart_close(%d) called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @uart_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.uart_state*, align 8
  %6 = alloca %struct.uart_driver*, align 8
  %7 = alloca %struct.tty_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 3
  %10 = load %struct.uart_state*, %struct.uart_state** %9, align 8
  store %struct.uart_state* %10, %struct.uart_state** %5, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %12 = icmp ne %struct.uart_state* %11, null
  br i1 %12, label %39, label %13

13:                                               ; preds = %2
  %14 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %15 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.uart_driver*, %struct.uart_driver** %17, align 8
  store %struct.uart_driver* %18, %struct.uart_driver** %6, align 8
  %19 = load %struct.uart_driver*, %struct.uart_driver** %6, align 8
  %20 = getelementptr inbounds %struct.uart_driver, %struct.uart_driver* %19, i32 0, i32 0
  %21 = load %struct.uart_state*, %struct.uart_state** %20, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %21, i64 %25
  store %struct.uart_state* %26, %struct.uart_state** %5, align 8
  %27 = load %struct.uart_state*, %struct.uart_state** %5, align 8
  %28 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %27, i32 0, i32 0
  store %struct.tty_port* %28, %struct.tty_port** %7, align 8
  %29 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %30 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %29, i32 0, i32 0
  %31 = call i32 @spin_lock_irq(i32* %30)
  %32 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %33 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %37 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  br label %50

39:                                               ; preds = %2
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = call i32 @tty_port_close(i32 %46, %struct.tty_struct* %47, %struct.file* %48)
  br label %50

50:                                               ; preds = %39, %13
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @tty_port_close(i32, %struct.tty_struct*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
