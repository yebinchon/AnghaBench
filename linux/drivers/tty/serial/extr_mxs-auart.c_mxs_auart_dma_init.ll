; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { %struct.TYPE_2__, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@MXS_AUART_DMA_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"enabled the DMA support.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*)* @mxs_auart_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_dma_init(%struct.mxs_auart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_auart_port*, align 8
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %3, align 8
  %4 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %5 = call i64 @auart_dma_enabled(%struct.mxs_auart_port* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

8:                                                ; preds = %1
  %9 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %10 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @dma_request_slave_channel(i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %14 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %13, i32 0, i32 6
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %16 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %15, i32 0, i32 6
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %8
  br label %72

20:                                               ; preds = %8
  %21 = load i32, i32* @UART_XMIT_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @GFP_DMA, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @kzalloc(i32 %21, i32 %24)
  %26 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %27 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %29 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %28, i32 0, i32 5
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %20
  br label %72

33:                                               ; preds = %20
  %34 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %35 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @dma_request_slave_channel(i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %39 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %41 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %72

45:                                               ; preds = %33
  %46 = load i32, i32* @UART_XMIT_SIZE, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = load i32, i32* @GFP_DMA, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @kzalloc(i32 %46, i32 %49)
  %51 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %52 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %54 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %45
  br label %72

58:                                               ; preds = %45
  %59 = load i32, i32* @MXS_AUART_DMA_ENABLED, align 4
  %60 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %61 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %65 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_dbg(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @UART_XMIT_SIZE, align 4
  %69 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %70 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %77

72:                                               ; preds = %57, %44, %32, %19
  %73 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %74 = call i32 @mxs_auart_dma_exit_channel(%struct.mxs_auart_port* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %58, %7
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @auart_dma_enabled(%struct.mxs_auart_port*) #1

declare dso_local i8* @dma_request_slave_channel(i32, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mxs_auart_dma_exit_channel(%struct.mxs_auart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
