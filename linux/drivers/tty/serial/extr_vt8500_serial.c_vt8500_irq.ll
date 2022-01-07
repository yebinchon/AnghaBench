; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_vt8500_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_vt8500_serial.c_vt8500_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@VT8500_URISR = common dso_local global i32 0, align 4
@RX_FIFO_INTS = common dso_local global i64 0, align 8
@TX_FIFO_INTS = common dso_local global i64 0, align 8
@TCTS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vt8500_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uart_port*
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = load i32, i32* @VT8500_URISR, align 4
  %14 = call i64 @vt8500_read(%struct.uart_port* %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* @VT8500_URISR, align 4
  %18 = call i32 @vt8500_write(%struct.uart_port* %15, i64 %16, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @RX_FIFO_INTS, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %25 = call i32 @handle_rx(%struct.uart_port* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @TX_FIFO_INTS, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %33 = call i32 @handle_tx(%struct.uart_port* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @TCTS, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %41 = call i32 @handle_delta_cts(%struct.uart_port* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @vt8500_read(%struct.uart_port*, i32) #1

declare dso_local i32 @vt8500_write(%struct.uart_port*, i64, i32) #1

declare dso_local i32 @handle_rx(%struct.uart_port*) #1

declare dso_local i32 @handle_tx(%struct.uart_port*) #1

declare dso_local i32 @handle_delta_cts(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
