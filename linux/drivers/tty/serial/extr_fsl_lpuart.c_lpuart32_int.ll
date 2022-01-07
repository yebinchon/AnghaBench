; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart32_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, i32, i32 }

@UARTSTAT = common dso_local global i32 0, align 4
@UARTWATER = common dso_local global i32 0, align 4
@UARTWATER_RXCNT_OFF = common dso_local global i64 0, align 8
@UARTSTAT_RDRF = common dso_local global i64 0, align 8
@UARTSTAT_TDRE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpuart32_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpuart32_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lpuart_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.lpuart_port*
  store %struct.lpuart_port* %9, %struct.lpuart_port** %5, align 8
  %10 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %11 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %10, i32 0, i32 0
  %12 = load i32, i32* @UARTSTAT, align 4
  %13 = call i64 @lpuart32_read(i32* %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %15 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %14, i32 0, i32 0
  %16 = load i32, i32* @UARTWATER, align 4
  %17 = call i64 @lpuart32_read(i32* %15, i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @UARTWATER_RXCNT_OFF, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @UARTSTAT_RDRF, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %2
  %29 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %30 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %35 = call i32 @lpuart32_rxint(%struct.lpuart_port* %34)
  br label %36

36:                                               ; preds = %33, %28, %25
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @UARTSTAT_TDRE, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %43 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %48 = call i32 @lpuart32_txint(%struct.lpuart_port* %47)
  br label %49

49:                                               ; preds = %46, %41, %36
  %50 = load %struct.lpuart_port*, %struct.lpuart_port** %5, align 8
  %51 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = load i32, i32* @UARTSTAT, align 4
  %54 = call i32 @lpuart32_write(i32* %51, i64 %52, i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local i64 @lpuart32_read(i32*, i32) #1

declare dso_local i32 @lpuart32_rxint(%struct.lpuart_port*) #1

declare dso_local i32 @lpuart32_txint(%struct.lpuart_port*) #1

declare dso_local i32 @lpuart32_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
