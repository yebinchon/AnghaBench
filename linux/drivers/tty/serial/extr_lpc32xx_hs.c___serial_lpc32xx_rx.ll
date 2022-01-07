; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c___serial_lpc32xx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_lpc32xx_hs.c___serial_lpc32xx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@LPC32XX_HSU_RX_EMPTY = common dso_local global i32 0, align 4
@TTY_NORMAL = common dso_local global i32 0, align 4
@LPC32XX_HSU_ERROR_DATA = common dso_local global i32 0, align 4
@LPC32XX_HSU_FE_INT = common dso_local global i32 0, align 4
@TTY_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @__serial_lpc32xx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__serial_lpc32xx_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.tty_port* %9, %struct.tty_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @LPC32XX_HSUART_FIFO(i32 %12)
  %14 = call i32 @readl(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %48, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LPC32XX_HSU_RX_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %59

21:                                               ; preds = %15
  %22 = load i32, i32* @TTY_NORMAL, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @LPC32XX_HSU_ERROR_DATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = load i32, i32* @LPC32XX_HSU_FE_INT, align 4
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LPC32XX_HSUART_IIR(i32 %36)
  %38 = call i32 @writel(i32 %33, i32 %37)
  %39 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @TTY_FRAME, align 4
  store i32 %44, i32* %5, align 4
  %45 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %46 = load i32, i32* @TTY_FRAME, align 4
  %47 = call i32 @tty_insert_flip_char(%struct.tty_port* %45, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %32, %21
  %49 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = and i32 %50, 255
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @tty_insert_flip_char(%struct.tty_port* %49, i32 %51, i32 %52)
  %54 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @LPC32XX_HSUART_FIFO(i32 %56)
  %58 = call i32 @readl(i32 %57)
  store i32 %58, i32* %4, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %64 = call i32 @tty_flip_buffer_push(%struct.tty_port* %63)
  %65 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC32XX_HSUART_FIFO(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC32XX_HSUART_IIR(i32) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
