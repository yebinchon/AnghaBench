; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_receive_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_receive_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@RDA_UART_STATUS = common dso_local global i32 0, align 4
@RDA_UART_RX_FIFO_MASK = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i8 0, align 1
@RDA_UART_RX_PARITY_ERR = common dso_local global i32 0, align 4
@TTY_PARITY = common dso_local global i8 0, align 1
@RDA_UART_RX_FRAMING_ERR = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i8 0, align 1
@RDA_UART_RX_OVERFLOW_ERR = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i8 0, align 1
@RDA_UART_RXTX_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @rda_uart_receive_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rda_uart_receive_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = load i32, i32* @RDA_UART_STATUS, align 4
  %8 = call i32 @rda_uart_read(%struct.uart_port* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %51, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @RDA_UART_RX_FIFO_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  %15 = load i8, i8* @TTY_NORMAL, align 1
  store i8 %15, i8* %5, align 1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @RDA_UART_RX_PARITY_ERR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i8, i8* @TTY_PARITY, align 1
  store i8 %26, i8* %5, align 1
  br label %27

27:                                               ; preds = %20, %14
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @RDA_UART_RX_FRAMING_ERR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load i8, i8* @TTY_FRAME, align 1
  store i8 %38, i8* %5, align 1
  br label %39

39:                                               ; preds = %32, %27
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @RDA_UART_RX_OVERFLOW_ERR, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i8, i8* @TTY_OVERRUN, align 1
  store i8 %50, i8* %5, align 1
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = load i32, i32* @RDA_UART_RXTX_BUFFER, align 4
  %54 = call i32 @rda_uart_read(%struct.uart_port* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 255
  store i32 %56, i32* %4, align 4
  %57 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = load i8, i8* %5, align 1
  %68 = call i32 @tty_insert_flip_char(i32* %65, i32 %66, i8 signext %67)
  %69 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %70 = load i32, i32* @RDA_UART_STATUS, align 4
  %71 = call i32 @rda_uart_read(%struct.uart_port* %69, i32 %70)
  store i32 %71, i32* %3, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i32 @tty_flip_buffer_push(i32* %79)
  %81 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %82 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %81, i32 0, i32 0
  %83 = call i32 @spin_lock(i32* %82)
  ret void
}

declare dso_local i32 @rda_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @tty_insert_flip_char(i32*, i32, i8 signext) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
