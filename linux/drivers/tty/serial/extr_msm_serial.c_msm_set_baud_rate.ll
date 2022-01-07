; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_set_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_set_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, i32, i32 }
%struct.msm_port = type { i32, i64, i32 }
%struct.msm_baud_map = type { i64, i32, i32 }

@UART_CSR = common dso_local global i32 0, align 4
@UART_IPR_STALE_LSB = common dso_local global i32 0, align 4
@UART_DM_IPR_STALE_TIMEOUT_MSB = common dso_local global i32 0, align 4
@UART_IPR_RXSTALE_LAST = common dso_local global i32 0, align 4
@UART_IPR_STALE_TIMEOUT_MSB = common dso_local global i32 0, align 4
@UART_IPR = common dso_local global i32 0, align 4
@UART_RFWR = common dso_local global i32 0, align 4
@UART_TFWR = common dso_local global i32 0, align 4
@UART_CR_CMD_PROTECTION_EN = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_CR_TX_ENABLE = common dso_local global i32 0, align 4
@UART_CR_RX_ENABLE = common dso_local global i32 0, align 4
@UART_IMR_RXLEV = common dso_local global i32 0, align 4
@UART_IMR_RXSTALE = common dso_local global i32 0, align 4
@UART_IMR_CURRENT_CTS = common dso_local global i32 0, align 4
@UART_IMR_RXBREAK_START = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_STALE_INT = common dso_local global i32 0, align 4
@UARTDM_DMRX = common dso_local global i32 0, align 4
@UART_CR_CMD_STALE_EVENT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32, i64*)* @msm_set_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_set_baud_rate(%struct.uart_port* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msm_port*, align 8
  %11 = alloca %struct.msm_baud_map*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %14)
  store %struct.msm_port* %15, %struct.msm_port** %10, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.msm_baud_map* @msm_find_best_baud(%struct.uart_port* %22, i32 %23, i64* %13)
  store %struct.msm_baud_map* %24, %struct.msm_baud_map** %11, align 8
  %25 = load %struct.msm_port*, %struct.msm_port** %10, align 8
  %26 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %13, align 8
  %29 = call i32 @clk_set_rate(i32 %27, i64 %28)
  %30 = load i64, i64* %13, align 8
  %31 = udiv i64 %30, 16
  %32 = load %struct.msm_baud_map*, %struct.msm_baud_map** %11, align 8
  %33 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = udiv i64 %31, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 2
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load i64, i64* %12, align 8
  %42 = load i64*, i64** %6, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %47 = load %struct.msm_baud_map*, %struct.msm_baud_map** %11, align 8
  %48 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UART_CSR, align 4
  %51 = call i32 @msm_write(%struct.uart_port* %46, i32 %49, i32 %50)
  %52 = load %struct.msm_baud_map*, %struct.msm_baud_map** %11, align 8
  %53 = getelementptr inbounds %struct.msm_baud_map, %struct.msm_baud_map* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @UART_IPR_STALE_LSB, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load %struct.msm_port*, %struct.msm_port** %10, align 8
  %59 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %3
  %63 = load i32, i32* @UART_DM_IPR_STALE_TIMEOUT_MSB, align 4
  store i32 %63, i32* %9, align 4
  br label %69

64:                                               ; preds = %3
  %65 = load i32, i32* @UART_IPR_RXSTALE_LAST, align 4
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @UART_IPR_STALE_TIMEOUT_MSB, align 4
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %64, %62
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 %71, 2
  %73 = and i32 %70, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @UART_IPR, align 4
  %79 = call i32 @msm_write(%struct.uart_port* %76, i32 %77, i32 %78)
  %80 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %81 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %82, 3
  %84 = sdiv i32 %83, 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @UART_RFWR, align 4
  %88 = call i32 @msm_write(%struct.uart_port* %85, i32 %86, i32 %87)
  %89 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %90 = load i32, i32* @UART_TFWR, align 4
  %91 = call i32 @msm_write(%struct.uart_port* %89, i32 10, i32 %90)
  %92 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %93 = load i32, i32* @UART_CR_CMD_PROTECTION_EN, align 4
  %94 = load i32, i32* @UART_CR, align 4
  %95 = call i32 @msm_write(%struct.uart_port* %92, i32 %93, i32 %94)
  %96 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %97 = call i32 @msm_reset(%struct.uart_port* %96)
  %98 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %99 = load i32, i32* @UART_CR_TX_ENABLE, align 4
  %100 = load i32, i32* @UART_CR_RX_ENABLE, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @UART_CR, align 4
  %103 = call i32 @msm_write(%struct.uart_port* %98, i32 %101, i32 %102)
  %104 = load i32, i32* @UART_IMR_RXLEV, align 4
  %105 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @UART_IMR_CURRENT_CTS, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @UART_IMR_RXBREAK_START, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.msm_port*, %struct.msm_port** %10, align 8
  %112 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %114 = load %struct.msm_port*, %struct.msm_port** %10, align 8
  %115 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @UART_IMR, align 4
  %118 = call i32 @msm_write(%struct.uart_port* %113, i32 %116, i32 %117)
  %119 = load %struct.msm_port*, %struct.msm_port** %10, align 8
  %120 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %69
  %124 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %125 = load i32, i32* @UART_CR_CMD_RESET_STALE_INT, align 4
  %126 = load i32, i32* @UART_CR, align 4
  %127 = call i32 @msm_write(%struct.uart_port* %124, i32 %125, i32 %126)
  %128 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %129 = load i32, i32* @UARTDM_DMRX, align 4
  %130 = call i32 @msm_write(%struct.uart_port* %128, i32 16777215, i32 %129)
  %131 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %132 = load i32, i32* @UART_CR_CMD_STALE_EVENT_ENABLE, align 4
  %133 = load i32, i32* @UART_CR, align 4
  %134 = call i32 @msm_write(%struct.uart_port* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %123, %69
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.msm_baud_map* @msm_find_best_baud(%struct.uart_port*, i32, i64*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @msm_reset(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
