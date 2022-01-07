; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RXOERR = common dso_local global i32 0, align 4
@RXFERR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@RXEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @arc_serial_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_serial_rx_chars(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %85, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @RXOERR, align 4
  %10 = load i32, i32* @RXFERR, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %7
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RXOERR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @TTY_OVERRUN, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = load i32, i32* @RXOERR, align 4
  %29 = call i32 @UART_CLR_STATUS(%struct.uart_port* %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RXFERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @TTY_FRAME, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %43 = load i32, i32* @RXFERR, align 4
  %44 = call i32 @UART_CLR_STATUS(%struct.uart_port* %42, i32 %43)
  br label %45

45:                                               ; preds = %35, %30
  br label %48

46:                                               ; preds = %7
  %47 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @RXEMPTY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %85

54:                                               ; preds = %48
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = call i32 @UART_GET_DATA(%struct.uart_port* %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @uart_handle_sysrq_char(%struct.uart_port* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %54
  %67 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @RXOERR, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @uart_insert_char(%struct.uart_port* %67, i32 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %54
  %74 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %75 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  %77 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %78 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @tty_flip_buffer_push(i32* %80)
  %82 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  %84 = call i32 @spin_lock(i32* %83)
  br label %85

85:                                               ; preds = %73, %53
  %86 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %87 = call i32 @UART_GET_STATUS(%struct.uart_port* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* @RXEMPTY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %7, label %92

92:                                               ; preds = %85
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @UART_CLR_STATUS(%struct.uart_port*, i32) #1

declare dso_local i32 @UART_GET_DATA(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_sysrq_char(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_insert_char(%struct.uart_port*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
