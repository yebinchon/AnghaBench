; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_wait_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_core.c_uart_wait_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_state = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.uart_port = type { i32, i32 }
%struct.uart_icount = type { i64, i64, i64, i64 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i64 0, align 8
@TIOCM_DSR = common dso_local global i64 0, align 8
@TIOCM_CD = common dso_local global i64 0, align 8
@TIOCM_CTS = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_state*, i64)* @uart_wait_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_wait_modem_status(%struct.uart_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca %struct.uart_icount, align 8
  %9 = alloca %struct.uart_icount, align 8
  %10 = alloca i32, align 4
  store %struct.uart_state* %0, %struct.uart_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %12 = getelementptr inbounds %struct.uart_state, %struct.uart_state* %11, i32 0, i32 0
  store %struct.tty_port* %12, %struct.tty_port** %7, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = load i32, i32* @current, align 4
  %15 = call i32 @DECLARE_WAITQUEUE(i32 %13, i32 %14)
  %16 = load %struct.uart_state*, %struct.uart_state** %4, align 8
  %17 = call %struct.uart_port* @uart_port_ref(%struct.uart_state* %16)
  store %struct.uart_port* %17, %struct.uart_port** %6, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %19 = icmp ne %struct.uart_port* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %25 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %24, i32 0, i32 0
  %26 = call i32 @spin_lock_irq(i32* %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %28 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %27, i32 0, i32 1
  %29 = call i32 @memcpy(%struct.uart_icount* %8, i32* %28, i32 32)
  %30 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %31 = call i32 @uart_enable_ms(%struct.uart_port* %30)
  %32 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %33 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %32, i32 0, i32 0
  %34 = call i32 @spin_unlock_irq(i32* %33)
  %35 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %36 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %35, i32 0, i32 0
  %37 = call i32 @add_wait_queue(i32* %36, i32* @wait)
  br label %38

38:                                               ; preds = %102, %23
  %39 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 0
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %43 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %42, i32 0, i32 1
  %44 = call i32 @memcpy(%struct.uart_icount* %9, i32* %43, i32 32)
  %45 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %49 = call i32 @set_current_state(i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @TIOCM_RNG, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %9, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %93, label %60

60:                                               ; preds = %54, %38
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @TIOCM_DSR, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %9, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %67, %69
  br i1 %70, label %93, label %71

71:                                               ; preds = %65, %60
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @TIOCM_CD, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %9, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %93, label %82

82:                                               ; preds = %76, %71
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @TIOCM_CTS, align 8
  %85 = and i64 %83, %84
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %9, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.uart_icount, %struct.uart_icount* %8, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %76, %65, %54
  store i32 0, i32* %10, align 4
  br label %105

94:                                               ; preds = %87, %82
  %95 = call i32 (...) @schedule()
  %96 = load i32, i32* @current, align 4
  %97 = call i64 @signal_pending(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @ERESTARTSYS, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %105

102:                                              ; preds = %94
  %103 = bitcast %struct.uart_icount* %8 to i8*
  %104 = bitcast %struct.uart_icount* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 32, i1 false)
  br label %38

105:                                              ; preds = %99, %93
  %106 = load i32, i32* @TASK_RUNNING, align 4
  %107 = call i32 @__set_current_state(i32 %106)
  %108 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %109 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %108, i32 0, i32 0
  %110 = call i32 @remove_wait_queue(i32* %109, i32* @wait)
  %111 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %112 = call i32 @uart_port_deref(%struct.uart_port* %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %20
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local %struct.uart_port* @uart_port_ref(%struct.uart_state*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(%struct.uart_icount*, i32*, i32) #1

declare dso_local i32 @uart_enable_ms(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @signal_pending(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @uart_port_deref(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
