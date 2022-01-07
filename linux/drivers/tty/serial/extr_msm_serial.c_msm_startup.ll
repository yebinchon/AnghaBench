; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, i32 }
%struct.msm_port = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"msm_serial%d\00", align 1
@UART_MR1 = common dso_local global i32 0, align 4
@UART_DM_MR1_AUTO_RFR_LEVEL1 = common dso_local global i32 0, align 4
@UART_MR1_AUTO_RFR_LEVEL1 = common dso_local global i32 0, align 4
@UART_MR1_AUTO_RFR_LEVEL0 = common dso_local global i32 0, align 4
@msm_uart_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @msm_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.msm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %10 = call %struct.msm_port* @UART_TO_MSM(%struct.uart_port* %9)
  store %struct.msm_port* %10, %struct.msm_port** %4, align 8
  %11 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %12 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snprintf(i32 %13, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %19 = call i32 @msm_init_clock(%struct.uart_port* %18)
  %20 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 12
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 12
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %38 = load i32, i32* @UART_MR1, align 4
  %39 = call i32 @msm_read(%struct.uart_port* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %41 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @UART_DM_MR1_AUTO_RFR_LEVEL1, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL1, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL0, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 2
  %60 = and i32 %57, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* @UART_MR1_AUTO_RFR_LEVEL0, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @UART_MR1, align 4
  %71 = call i32 @msm_write(%struct.uart_port* %68, i32 %69, i32 %70)
  %72 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %73 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %48
  %77 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %78 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %79 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @msm_request_tx_dma(%struct.msm_port* %77, i32 %81)
  %83 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %84 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %85 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @msm_request_rx_dma(%struct.msm_port* %83, i32 %87)
  br label %89

89:                                               ; preds = %76, %48
  %90 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %91 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @msm_uart_irq, align 4
  %94 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %95 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %96 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %99 = call i32 @request_irq(i32 %92, i32 %93, i32 %94, i32 %97, %struct.uart_port* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %105

104:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %123

105:                                              ; preds = %103
  %106 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %107 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %112 = call i32 @msm_release_dma(%struct.msm_port* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %115 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @clk_disable_unprepare(i32 %116)
  %118 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %119 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @clk_disable_unprepare(i32 %120)
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %113, %104
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.msm_port* @UART_TO_MSM(%struct.uart_port*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @msm_init_clock(%struct.uart_port*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @msm_request_tx_dma(%struct.msm_port*, i32) #1

declare dso_local i32 @msm_request_rx_dma(%struct.msm_port*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.uart_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msm_release_dma(%struct.msm_port*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
