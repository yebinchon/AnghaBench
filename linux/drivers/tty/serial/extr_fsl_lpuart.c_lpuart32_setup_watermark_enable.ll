; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_setup_watermark_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_setup_watermark_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32 }

@UARTCTRL = common dso_local global i32 0, align 4
@UARTCTRL_RE = common dso_local global i32 0, align 4
@UARTCTRL_TE = common dso_local global i32 0, align 4
@UARTCTRL_ILIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart32_setup_watermark_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart32_setup_watermark_enable(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %4 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %5 = call i32 @lpuart32_setup_watermark(%struct.lpuart_port* %4)
  %6 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %7 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %6, i32 0, i32 0
  %8 = load i32, i32* @UARTCTRL, align 4
  %9 = call i32 @lpuart32_read(i32* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @UARTCTRL_RE, align 4
  %11 = load i32, i32* @UARTCTRL_TE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @UARTCTRL_ILIE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %18 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @UARTCTRL, align 4
  %21 = call i32 @lpuart32_write(i32* %18, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @lpuart32_setup_watermark(%struct.lpuart_port*) #1

declare dso_local i32 @lpuart32_read(i32*, i32) #1

declare dso_local i32 @lpuart32_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
