; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_setup_watermark_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_setup_watermark_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UARTCR2 = common dso_local global i64 0, align 8
@UARTCR2_RIE = common dso_local global i8 0, align 1
@UARTCR2_RE = common dso_local global i8 0, align 1
@UARTCR2_TE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_setup_watermark_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_setup_watermark_enable(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i8, align 1
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %4 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %5 = call i32 @lpuart_setup_watermark(%struct.lpuart_port* %4)
  %6 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %7 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UARTCR2, align 8
  %11 = add nsw i64 %9, %10
  %12 = call zeroext i8 @readb(i64 %11)
  store i8 %12, i8* %3, align 1
  %13 = load i8, i8* @UARTCR2_RIE, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @UARTCR2_RE, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = load i8, i8* @UARTCR2_TE, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = load i8, i8* %3, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load i8, i8* %3, align 1
  %26 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %27 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UARTCR2, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i8 zeroext %25, i64 %31)
  ret void
}

declare dso_local i32 @lpuart_setup_watermark(%struct.lpuart_port*) #1

declare dso_local zeroext i8 @readb(i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
