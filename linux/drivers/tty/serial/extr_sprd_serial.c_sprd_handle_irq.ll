; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@SPRD_IMSR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SPRD_IMSR_TIMEOUT = common dso_local global i32 0, align 4
@SPRD_ICLR = common dso_local global i32 0, align 4
@SPRD_ICLR_TIMEOUT = common dso_local global i32 0, align 4
@SPRD_IMSR_RX_FIFO_FULL = common dso_local global i32 0, align 4
@SPRD_IMSR_BREAK_DETECT = common dso_local global i32 0, align 4
@SPRD_IMSR_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sprd_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_handle_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.uart_port*
  store %struct.uart_port* %9, %struct.uart_port** %6, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %14 = load i32, i32* @SPRD_IMSR, align 4
  %15 = call i32 @serial_in(%struct.uart_port* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load i32, i32* @IRQ_NONE, align 4
  store i32 %22, i32* %3, align 4
  br label %58

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SPRD_IMSR_TIMEOUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %30 = load i32, i32* @SPRD_ICLR, align 4
  %31 = load i32, i32* @SPRD_ICLR_TIMEOUT, align 4
  %32 = call i32 @serial_out(%struct.uart_port* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SPRD_IMSR_RX_FIFO_FULL, align 4
  %36 = load i32, i32* @SPRD_IMSR_BREAK_DETECT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SPRD_IMSR_TIMEOUT, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %34, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %44 = call i32 @sprd_rx(%struct.uart_port* %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SPRD_IMSR_TX_FIFO_EMPTY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %52 = call i32 @sprd_tx(%struct.uart_port* %51)
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %55 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %18
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @serial_in(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @serial_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @sprd_rx(%struct.uart_port*) #1

declare dso_local i32 @sprd_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
