; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_xfer_preparing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_xfer_preparing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_pkt = type { i32, i32, i32, i32, i64, i64, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }
%struct.usbhs_fifo = type { i32 }
%struct.usbhs_priv = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.usbhs_pipe*, i32 }
%struct.dma_chan = type { i32 }
%struct.device = type { i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@usbhsf_dma_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to submit dma descriptor\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  %s %d (%d/ %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_pkt*)* @usbhsf_dma_xfer_preparing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_dma_xfer_preparing(%struct.usbhs_pkt* %0) #0 {
  %2 = alloca %struct.usbhs_pkt*, align 8
  %3 = alloca %struct.usbhs_pipe*, align 8
  %4 = alloca %struct.usbhs_fifo*, align 8
  %5 = alloca %struct.usbhs_priv*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %2, align 8
  %10 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %11 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %10, i32 0, i32 6
  %12 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %11, align 8
  store %struct.usbhs_pipe* %12, %struct.usbhs_pipe** %3, align 8
  %13 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %14 = call %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe* %13)
  store %struct.usbhs_priv* %14, %struct.usbhs_priv** %5, align 8
  %15 = load %struct.usbhs_priv*, %struct.usbhs_priv** %5, align 8
  %16 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %15)
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %18 = call %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe* %17)
  store %struct.usbhs_fifo* %18, %struct.usbhs_fifo** %4, align 8
  %19 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %20 = icmp ne %struct.usbhs_fifo* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %100

22:                                               ; preds = %1
  %23 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %24 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %25 = call %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo* %23, %struct.usbhs_pkt* %24)
  store %struct.dma_chan* %25, %struct.dma_chan** %7, align 8
  %26 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %27 = call i64 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %36 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %37 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %40 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %44 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %48 = load i32, i32* @DMA_CTRL_ACK, align 4
  %49 = or i32 %47, %48
  %50 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.dma_chan* %35, i64 %42, i32 %45, i32 %46, i32 %49)
  store %struct.dma_async_tx_descriptor* %50, %struct.dma_async_tx_descriptor** %6, align 8
  %51 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %52 = icmp ne %struct.dma_async_tx_descriptor* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %33
  br label %100

54:                                               ; preds = %33
  %55 = load i32, i32* @usbhsf_dma_complete, align 4
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %57 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %59, i32 0, i32 0
  store %struct.usbhs_pipe* %58, %struct.usbhs_pipe** %60, align 8
  %61 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %62 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %61)
  %63 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %64 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %66 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %100

72:                                               ; preds = %54
  %73 = load %struct.device*, %struct.device** %8, align 8
  %74 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %75 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %78 = call i32 @usbhs_pipe_number(%struct.usbhs_pipe* %77)
  %79 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %80 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %83 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_dbg(%struct.device* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78, i32 %81, i32 %84)
  %86 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %87 = call i32 @usbhs_pipe_running(%struct.usbhs_pipe* %86, i32 1)
  %88 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %89 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %2, align 8
  %90 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @usbhs_pipe_set_trans_count_if_bulk(%struct.usbhs_pipe* %88, i32 %91)
  %93 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %94 = call i32 @dma_async_issue_pending(%struct.dma_chan* %93)
  %95 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %96 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %4, align 8
  %97 = call i32 @usbhsf_dma_start(%struct.usbhs_pipe* %95, %struct.usbhs_fifo* %96)
  %98 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %3, align 8
  %99 = call i32 @usbhs_pipe_enable(%struct.usbhs_pipe* %98)
  br label %100

100:                                              ; preds = %72, %69, %53, %21
  ret void
}

declare dso_local %struct.usbhs_priv* @usbhs_pipe_to_priv(%struct.usbhs_pipe*) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local %struct.usbhs_fifo* @usbhs_pipe_to_fifo(%struct.usbhs_pipe*) #1

declare dso_local %struct.dma_chan* @usbhsf_dma_chan_get(%struct.usbhs_fifo*, %struct.usbhs_pkt*) #1

declare dso_local i64 @usbhs_pipe_is_dir_in(%struct.usbhs_pipe*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.dma_chan*, i64, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usbhs_pipe_number(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_running(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhs_pipe_set_trans_count_if_bulk(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @usbhsf_dma_start(%struct.usbhs_pipe*, %struct.usbhs_fifo*) #1

declare dso_local i32 @usbhs_pipe_enable(%struct.usbhs_pipe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
