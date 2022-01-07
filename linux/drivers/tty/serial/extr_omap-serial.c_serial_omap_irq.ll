; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@UART_IIR = common dso_local global i32 0, align 4
@UART_IIR_NO_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UART_LSR = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @serial_omap_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_omap_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_omap_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.uart_omap_port*
  store %struct.uart_omap_port* %12, %struct.uart_omap_port** %5, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %9, align 4
  store i32 256, i32* %10, align 4
  %14 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  br label %22

22:                                               ; preds = %58, %2
  %23 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %24 = load i32, i32* @UART_IIR, align 4
  %25 = call i32 @serial_in(%struct.uart_omap_port* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @UART_IIR_NO_INT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %62

31:                                               ; preds = %22
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %34 = load i32, i32* @UART_LSR, align 4
  %35 = call i32 @serial_in(%struct.uart_omap_port* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 62
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %56 [
    i32 133, label %39
    i32 129, label %42
    i32 130, label %46
    i32 132, label %46
    i32 131, label %50
    i32 134, label %54
    i32 128, label %55
  ]

39:                                               ; preds = %31
  %40 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %41 = call i32 @check_modem_status(%struct.uart_omap_port* %40)
  br label %57

42:                                               ; preds = %31
  %43 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @transmit_chars(%struct.uart_omap_port* %43, i32 %44)
  br label %57

46:                                               ; preds = %31, %31
  %47 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @serial_omap_rdi(%struct.uart_omap_port* %47, i32 %48)
  br label %57

50:                                               ; preds = %31
  %51 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @serial_omap_rlsi(%struct.uart_omap_port* %51, i32 %52)
  br label %57

54:                                               ; preds = %31
  br label %57

55:                                               ; preds = %31
  br label %56

56:                                               ; preds = %31, %55
  br label %57

57:                                               ; preds = %56, %54, %50, %46, %42, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %22, label %62

62:                                               ; preds = %58, %30
  %63 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %64 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %68 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @tty_flip_buffer_push(i32* %71)
  %73 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %74 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pm_runtime_mark_last_busy(i32 %75)
  %77 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %78 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pm_runtime_put_autosuspend(i32 %79)
  %81 = load i32, i32* @jiffies, align 4
  %82 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %83 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @check_modem_status(%struct.uart_omap_port*) #1

declare dso_local i32 @transmit_chars(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @serial_omap_rdi(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @serial_omap_rlsi(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
