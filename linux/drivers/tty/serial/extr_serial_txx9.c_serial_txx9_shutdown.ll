; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_txx9_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@TXX9_SIDICR = common dso_local global i32 0, align 4
@TXX9_SIFLCR = common dso_local global i32 0, align 4
@TXX9_SIFLCR_TBRK = common dso_local global i32 0, align 4
@TXX9_SIFCR = common dso_local global i32 0, align 4
@TXX9_SIFCR_TFRST = common dso_local global i32 0, align 4
@TXX9_SIFCR_RFRST = common dso_local global i32 0, align 4
@TXX9_SIFCR_FRSTE = common dso_local global i32 0, align 4
@TXX9_SIFLCR_RSDE = common dso_local global i32 0, align 4
@TXX9_SIFLCR_TSDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_txx9_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_txx9_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port* %5)
  store %struct.uart_txx9_port* %6, %struct.uart_txx9_port** %3, align 8
  %7 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %8 = load i32, i32* @TXX9_SIDICR, align 4
  %9 = call i32 @sio_out(%struct.uart_txx9_port* %7, i32 %8, i32 0)
  %10 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %15, i32 0, i32 0
  %17 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @serial_txx9_set_mctrl(%struct.TYPE_4__* %16, i32 %20)
  %22 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %28 = load i32, i32* @TXX9_SIFLCR, align 4
  %29 = load i32, i32* @TXX9_SIFLCR_TBRK, align 4
  %30 = call i32 @sio_mask(%struct.uart_txx9_port* %27, i32 %28, i32 %29)
  %31 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %32 = load i32, i32* @TXX9_SIFCR, align 4
  %33 = load i32, i32* @TXX9_SIFCR_TFRST, align 4
  %34 = load i32, i32* @TXX9_SIFCR_RFRST, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TXX9_SIFCR_FRSTE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @sio_set(%struct.uart_txx9_port* %31, i32 %32, i32 %37)
  %39 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %40 = load i32, i32* @TXX9_SIFCR, align 4
  %41 = load i32, i32* @TXX9_SIFCR_TFRST, align 4
  %42 = load i32, i32* @TXX9_SIFCR_RFRST, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @TXX9_SIFCR_FRSTE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @sio_mask(%struct.uart_txx9_port* %39, i32 %40, i32 %45)
  %47 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %48 = load i32, i32* @TXX9_SIFLCR, align 4
  %49 = load i32, i32* @TXX9_SIFLCR_RSDE, align 4
  %50 = load i32, i32* @TXX9_SIFLCR_TSDE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @sio_set(%struct.uart_txx9_port* %47, i32 %48, i32 %51)
  %53 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %54 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %58 = call i32 @free_irq(i32 %56, %struct.uart_txx9_port* %57)
  ret void
}

declare dso_local %struct.uart_txx9_port* @to_uart_txx9_port(%struct.uart_port*) #1

declare dso_local i32 @sio_out(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_txx9_set_mctrl(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sio_mask(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @sio_set(%struct.uart_txx9_port*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.uart_txx9_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
