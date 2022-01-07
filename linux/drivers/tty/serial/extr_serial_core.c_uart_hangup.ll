; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.uart_state* }
%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32, i32, i32, i32, i64 }
%struct.uart_port = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"uart_hangup(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"hangup of detached port!\0A\00", align 1
@UART_PM_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @uart_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 1
  %9 = load %struct.uart_state*, %struct.uart_state** %8, align 8
  store %struct.uart_state* %9, %struct.uart_state** %3, align 8
  %10 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %11 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %10, i32 0, i32 0
  store %struct.tty_port* %11, %struct.tty_port** %4, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %17 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %20 = call %struct.uart_port* @uart_port_check(%struct.uart_state* %19)
  store %struct.uart_port* %20, %struct.uart_port** %5, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %22 = icmp ne %struct.uart_port* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %27 = call i64 @tty_port_active(%struct.tty_port* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %66

29:                                               ; preds = %1
  %30 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %31 = call i32 @uart_flush_buffer(%struct.tty_struct* %30)
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %34 = call i32 @uart_shutdown(%struct.tty_struct* %32, %struct.uart_state* %33)
  %35 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %36 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %35, i32 0, i32 3
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %40 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %42 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %41, i32 0, i32 3
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %46 = call i32 @tty_port_set_active(%struct.tty_port* %45, i32 0)
  %47 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %48 = call i32 @tty_port_tty_set(%struct.tty_port* %47, i32* null)
  %49 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %50 = icmp ne %struct.uart_port* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %29
  %52 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %53 = call i32 @uart_console(%struct.uart_port* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %57 = load i32, i32* @UART_PM_STATE_OFF, align 4
  %58 = call i32 @uart_change_pm(%struct.uart_state* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51, %29
  %60 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %61 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %60, i32 0, i32 2
  %62 = call i32 @wake_up_interruptible(i32* %61)
  %63 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %64 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %63, i32 0, i32 1
  %65 = call i32 @wake_up_interruptible(i32* %64)
  br label %66

66:                                               ; preds = %59, %1
  %67 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %68 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uart_port* @uart_port_check(%struct.uart_state*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @tty_port_active(%struct.tty_port*) #1

declare dso_local i32 @uart_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @uart_shutdown(%struct.tty_struct*, %struct.uart_state*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_set_active(%struct.tty_port*, i32) #1

declare dso_local i32 @tty_port_tty_set(%struct.tty_port*, i32*) #1

declare dso_local i32 @uart_console(%struct.uart_port*) #1

declare dso_local i32 @uart_change_pm(%struct.uart_state*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
