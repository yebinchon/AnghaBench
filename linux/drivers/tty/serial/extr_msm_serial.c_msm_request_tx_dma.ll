; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_request_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_request_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_port = type { i64, %struct.msm_dma, %struct.TYPE_2__ }
%struct.msm_dma = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"qcom,tx-crci\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@UARTDM_TF = common dso_local global i64 0, align 8
@UARTDM_BURST_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UARTDM_1P4 = common dso_local global i64 0, align 8
@UARTDM_DMEN_TX_DM_ENABLE = common dso_local global i32 0, align 4
@UARTDM_DMEN_TX_BAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_port*, i64)* @msm_request_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_request_tx_dma(%struct.msm_port* %0, i64 %1) #0 {
  %3 = alloca %struct.msm_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca %struct.msm_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_port* %0, %struct.msm_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %11 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %15 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %14, i32 0, i32 1
  store %struct.msm_dma* %15, %struct.msm_dma** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dma_request_slave_channel_reason(%struct.device* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %19 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %21 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %75

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_property_read_u32(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %31 = bitcast %struct.dma_slave_config* %6 to %struct.msm_dma*
  %32 = call i32 @memset(%struct.msm_dma* %31, i32 0, i32 40)
  %33 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 7
  store i32 %33, i32* %34, align 8
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @UARTDM_TF, align 8
  %38 = add nsw i64 %36, %37
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 6
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @UARTDM_BURST_SIZE, align 4
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 5
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %45 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = bitcast %struct.dma_slave_config* %6 to %struct.msm_dma*
  %48 = call i32 @dmaengine_slave_config(i32 %46, %struct.msm_dma* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %26
  br label %70

52:                                               ; preds = %26
  %53 = load i32, i32* @DMA_TO_DEVICE, align 4
  %54 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %55 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %57 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @UARTDM_1P4, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @UARTDM_DMEN_TX_DM_ENABLE, align 4
  %63 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %64 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %52
  %66 = load i32, i32* @UARTDM_DMEN_TX_BAM_ENABLE, align 4
  %67 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %68 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %78

70:                                               ; preds = %51
  %71 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %72 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dma_release_channel(i32 %73)
  br label %75

75:                                               ; preds = %70, %25
  %76 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %77 = call i32 @memset(%struct.msm_dma* %76, i32 0, i32 40)
  br label %78

78:                                               ; preds = %75, %69
  ret void
}

declare dso_local i32 @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @memset(%struct.msm_dma*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.msm_dma*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
