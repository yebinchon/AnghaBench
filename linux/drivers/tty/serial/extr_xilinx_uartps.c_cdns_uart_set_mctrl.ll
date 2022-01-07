; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_xilinx_uartps.c_cdns_uart_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.cdns_uart* }
%struct.cdns_uart = type { i64 }

@CDNS_UART_MODEMCR = common dso_local global i64 0, align 8
@CDNS_UART_MR = common dso_local global i64 0, align 8
@CDNS_UART_MODEMCR_RTS = common dso_local global i32 0, align 4
@CDNS_UART_MODEMCR_DTR = common dso_local global i32 0, align 4
@CDNS_UART_MODEMCR_FCM = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHMODE_MASK = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_LOOP = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHMODE_L_LOOP = common dso_local global i32 0, align 4
@CDNS_UART_MR_CHMODE_NORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @cdns_uart_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_uart_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns_uart*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load %struct.cdns_uart*, %struct.cdns_uart** %9, align 8
  store %struct.cdns_uart* %10, %struct.cdns_uart** %7, align 8
  %11 = load %struct.cdns_uart*, %struct.cdns_uart** %7, align 8
  %12 = getelementptr inbounds %struct.cdns_uart, %struct.cdns_uart* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CDNS_UART_MODEMCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CDNS_UART_MR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @CDNS_UART_MODEMCR_RTS, align 4
  %30 = load i32, i32* @CDNS_UART_MODEMCR_DTR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CDNS_UART_MODEMCR_FCM, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @CDNS_UART_MR_CHMODE_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @TIOCM_RTS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %16
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @TIOCM_DTR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45, %16
  %51 = load i32, i32* @CDNS_UART_MODEMCR_FCM, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @TIOCM_LOOP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @CDNS_UART_MR_CHMODE_L_LOOP, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  br label %67

63:                                               ; preds = %54
  %64 = load i32, i32* @CDNS_UART_MR_CHMODE_NORM, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CDNS_UART_MODEMCR, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %77 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CDNS_UART_MR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %67, %15
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
