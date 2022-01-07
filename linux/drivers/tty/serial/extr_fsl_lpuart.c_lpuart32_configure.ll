; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, i32, i64 }

@UARTWATER = common dso_local global i32 0, align 4
@UARTWATER_WATER_MASK = common dso_local global i64 0, align 8
@UARTWATER_RXWATER_OFF = common dso_local global i64 0, align 8
@UARTCTRL = common dso_local global i32 0, align 4
@UARTCTRL_RIE = common dso_local global i64 0, align 8
@UARTCTRL_TIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart32_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart32_configure(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca i64, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %4 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %5 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %10 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %9, i32 0, i32 0
  %11 = load i32, i32* @UARTWATER, align 4
  %12 = call i64 @lpuart32_read(i32* %10, i32 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @UARTWATER_WATER_MASK, align 8
  %14 = load i64, i64* @UARTWATER_RXWATER_OFF, align 8
  %15 = shl i64 %13, %14
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %3, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %3, align 8
  %19 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %20 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* @UARTWATER, align 4
  %23 = call i32 @lpuart32_write(i32* %20, i64 %21, i32 %22)
  br label %24

24:                                               ; preds = %8, %1
  %25 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %26 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %25, i32 0, i32 0
  %27 = load i32, i32* @UARTCTRL, align 4
  %28 = call i64 @lpuart32_read(i32* %26, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %30 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i64, i64* @UARTCTRL_RIE, align 8
  %35 = load i64, i64* %3, align 8
  %36 = or i64 %35, %34
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %33, %24
  %38 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %39 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @UARTCTRL_TIE, align 8
  %44 = load i64, i64* %3, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %48 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %47, i32 0, i32 0
  %49 = load i64, i64* %3, align 8
  %50 = load i32, i32* @UARTCTRL, align 4
  %51 = call i32 @lpuart32_write(i32* %48, i64 %49, i32 %50)
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
