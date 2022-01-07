; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_setup_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_setup_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32 }

@UARTCTRL = common dso_local global i32 0, align 4
@UARTCTRL_TIE = common dso_local global i64 0, align 8
@UARTCTRL_TCIE = common dso_local global i64 0, align 8
@UARTCTRL_TE = common dso_local global i64 0, align 8
@UARTCTRL_RIE = common dso_local global i64 0, align 8
@UARTCTRL_RE = common dso_local global i64 0, align 8
@UARTFIFO = common dso_local global i32 0, align 4
@UARTFIFO_TXFE = common dso_local global i64 0, align 8
@UARTFIFO_RXFE = common dso_local global i64 0, align 8
@UARTFIFO_TXFLUSH = common dso_local global i64 0, align 8
@UARTFIFO_RXFLUSH = common dso_local global i64 0, align 8
@UARTWATER_RXWATER_OFF = common dso_local global i32 0, align 4
@UARTWATER_TXWATER_OFF = common dso_local global i32 0, align 4
@UARTWATER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart32_setup_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart32_setup_watermark(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %6 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %7 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %6, i32 0, i32 0
  %8 = load i32, i32* @UARTCTRL, align 4
  %9 = call i64 @lpuart32_read(i32* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* @UARTCTRL_TIE, align 8
  %12 = load i64, i64* @UARTCTRL_TCIE, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @UARTCTRL_TE, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @UARTCTRL_RIE, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @UARTCTRL_RE, align 8
  %19 = or i64 %17, %18
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %24 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %23, i32 0, i32 0
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @UARTCTRL, align 4
  %27 = call i32 @lpuart32_write(i32* %24, i64 %25, i32 %26)
  %28 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %29 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %28, i32 0, i32 0
  %30 = load i32, i32* @UARTFIFO, align 4
  %31 = call i64 @lpuart32_read(i32* %29, i32 %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* @UARTFIFO_TXFE, align 8
  %33 = load i64, i64* @UARTFIFO_RXFE, align 8
  %34 = or i64 %32, %33
  %35 = load i64, i64* %3, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* @UARTFIFO_TXFLUSH, align 8
  %38 = load i64, i64* @UARTFIFO_RXFLUSH, align 8
  %39 = or i64 %37, %38
  %40 = load i64, i64* %3, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %3, align 8
  %42 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %43 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %42, i32 0, i32 0
  %44 = load i64, i64* %3, align 8
  %45 = load i32, i32* @UARTFIFO, align 4
  %46 = call i32 @lpuart32_write(i32* %43, i64 %44, i32 %45)
  %47 = load i32, i32* @UARTWATER_RXWATER_OFF, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* @UARTWATER_TXWATER_OFF, align 4
  %50 = shl i32 0, %49
  %51 = or i32 %48, %50
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %3, align 8
  %53 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %54 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %53, i32 0, i32 0
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* @UARTWATER, align 4
  %57 = call i32 @lpuart32_write(i32* %54, i64 %55, i32 %56)
  %58 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %59 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %58, i32 0, i32 0
  %60 = load i64, i64* %5, align 8
  %61 = load i32, i32* @UARTCTRL, align 4
  %62 = call i32 @lpuart32_write(i32* %59, i64 %60, i32 %61)
  ret void
}

declare dso_local i64 @lpuart32_read(i32*, i32) #1

declare dso_local i32 @lpuart32_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
