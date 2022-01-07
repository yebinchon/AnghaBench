; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.uart_state* }
%struct.uart_state = type { i32 }
%struct.uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.uart_port*)* }

@UPSTAT_SYNC_FIFO = common dso_local global i32 0, align 4
@UPSTAT_AUTOXOFF = common dso_local global i32 0, align 4
@UPSTAT_AUTORTS = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @uart_unthrottle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.uart_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.uart_state*, %struct.uart_state** %7, align 8
  store %struct.uart_state* %8, %struct.uart_state** %3, align 8
  %9 = load i32, i32* @UPSTAT_SYNC_FIFO, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.uart_state*, %struct.uart_state** %3, align 8
  %11 = call %struct.uart_port* @uart_port_ref(%struct.uart_state* %10)
  store %struct.uart_port* %11, %struct.uart_port** %5, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = icmp ne %struct.uart_port* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %74

15:                                               ; preds = %1
  %16 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %17 = call i64 @I_IXOFF(%struct.tty_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = call i64 @C_CRTSCTS(%struct.tty_struct* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %42, align 8
  %44 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %45 = call i32 %43(%struct.uart_port* %44)
  %46 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %47 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %38, %31
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @UPSTAT_AUTORTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %59 = load i32, i32* @TIOCM_RTS, align 4
  %60 = call i32 @uart_set_mctrl(%struct.uart_port* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @UPSTAT_AUTOXOFF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %68 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %69 = call i32 @START_CHAR(%struct.tty_struct* %68)
  %70 = call i32 @uart_send_xchar(%struct.tty_struct* %67, i32 %69)
  br label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %73 = call i32 @uart_port_deref(%struct.uart_port* %72)
  br label %74

74:                                               ; preds = %71, %14
  ret void
}

declare dso_local %struct.uart_port* @uart_port_ref(%struct.uart_state*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i32 @uart_set_mctrl(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_send_xchar(%struct.tty_struct*, i32) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @uart_port_deref(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
