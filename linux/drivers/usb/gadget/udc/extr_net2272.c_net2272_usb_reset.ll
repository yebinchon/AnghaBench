; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_usb_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_usb_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IRQENB0 = common dso_local global i32 0, align 4
@IRQENB1 = common dso_local global i32 0, align 4
@IRQSTAT0 = common dso_local global i32 0, align 4
@IRQSTAT1 = common dso_local global i32 0, align 4
@SUSPEND_REQUEST_INTERRUPT = common dso_local global i32 0, align 4
@DMAREQ = common dso_local global i32 0, align 4
@DMA_BUFFER_VALID = common dso_local global i32 0, align 4
@DMA_REQUEST_ENABLE = common dso_local global i32 0, align 4
@DMA_CONTROL_DACK = common dso_local global i32 0, align 4
@EOT_POLARITY = common dso_local global i32 0, align 4
@DACK_POLARITY = common dso_local global i32 0, align 4
@DREQ_POLARITY = common dso_local global i32 0, align 4
@dma_ep = common dso_local global i32 0, align 4
@DMA_ENDPOINT_SELECT = common dso_local global i32 0, align 4
@fifo_mode = common dso_local global i32 0, align 4
@LOCCTL = common dso_local global i32 0, align 4
@DATA_WIDTH = common dso_local global i32 0, align 4
@LOCCTL1 = common dso_local global i32 0, align 4
@dma_mode = common dso_local global i32 0, align 4
@DMA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272*)* @net2272_usb_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_usb_reset(%struct.net2272* %0) #0 {
  %2 = alloca %struct.net2272*, align 8
  store %struct.net2272* %0, %struct.net2272** %2, align 8
  %3 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %4 = load %struct.net2272*, %struct.net2272** %2, align 8
  %5 = getelementptr inbounds %struct.net2272, %struct.net2272* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 4
  %7 = load %struct.net2272*, %struct.net2272** %2, align 8
  %8 = call i32 @net2272_cancel_dma(%struct.net2272* %7)
  %9 = load %struct.net2272*, %struct.net2272** %2, align 8
  %10 = load i32, i32* @IRQENB0, align 4
  %11 = call i32 @net2272_write(%struct.net2272* %9, i32 %10, i32 0)
  %12 = load %struct.net2272*, %struct.net2272** %2, align 8
  %13 = load i32, i32* @IRQENB1, align 4
  %14 = call i32 @net2272_write(%struct.net2272* %12, i32 %13, i32 0)
  %15 = load %struct.net2272*, %struct.net2272** %2, align 8
  %16 = load i32, i32* @IRQSTAT0, align 4
  %17 = call i32 @net2272_write(%struct.net2272* %15, i32 %16, i32 255)
  %18 = load %struct.net2272*, %struct.net2272** %2, align 8
  %19 = load i32, i32* @IRQSTAT1, align 4
  %20 = load i32, i32* @SUSPEND_REQUEST_INTERRUPT, align 4
  %21 = shl i32 1, %20
  %22 = xor i32 %21, -1
  %23 = call i32 @net2272_write(%struct.net2272* %18, i32 %19, i32 %22)
  %24 = load %struct.net2272*, %struct.net2272** %2, align 8
  %25 = load i32, i32* @DMAREQ, align 4
  %26 = load i32, i32* @DMA_BUFFER_VALID, align 4
  %27 = shl i32 0, %26
  %28 = load i32, i32* @DMA_REQUEST_ENABLE, align 4
  %29 = shl i32 0, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @DMA_CONTROL_DACK, align 4
  %32 = shl i32 1, %31
  %33 = or i32 %30, %32
  %34 = load %struct.net2272*, %struct.net2272** %2, align 8
  %35 = getelementptr inbounds %struct.net2272, %struct.net2272* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EOT_POLARITY, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %33, %38
  %40 = load %struct.net2272*, %struct.net2272** %2, align 8
  %41 = getelementptr inbounds %struct.net2272, %struct.net2272* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DACK_POLARITY, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %39, %44
  %46 = load %struct.net2272*, %struct.net2272** %2, align 8
  %47 = getelementptr inbounds %struct.net2272, %struct.net2272* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DREQ_POLARITY, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %45, %50
  %52 = load i32, i32* @dma_ep, align 4
  %53 = ashr i32 %52, 1
  %54 = load i32, i32* @DMA_ENDPOINT_SELECT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %51, %55
  %57 = call i32 @net2272_write(%struct.net2272* %24, i32 %25, i32 %56)
  %58 = load %struct.net2272*, %struct.net2272** %2, align 8
  %59 = call i32 @net2272_cancel_dma(%struct.net2272* %58)
  %60 = load %struct.net2272*, %struct.net2272** %2, align 8
  %61 = load i32, i32* @fifo_mode, align 4
  %62 = icmp sle i32 %61, 3
  br i1 %62, label %63, label %65

63:                                               ; preds = %1
  %64 = load i32, i32* @fifo_mode, align 4
  br label %66

65:                                               ; preds = %1
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = call i32 @net2272_set_fifo_mode(%struct.net2272* %60, i32 %67)
  %69 = load %struct.net2272*, %struct.net2272** %2, align 8
  %70 = load i32, i32* @LOCCTL, align 4
  %71 = load %struct.net2272*, %struct.net2272** %2, align 8
  %72 = load i32, i32* @LOCCTL, align 4
  %73 = call i32 @net2272_read(%struct.net2272* %71, i32 %72)
  %74 = load i32, i32* @DATA_WIDTH, align 4
  %75 = shl i32 1, %74
  %76 = or i32 %73, %75
  %77 = call i32 @net2272_write(%struct.net2272* %69, i32 %70, i32 %76)
  %78 = load %struct.net2272*, %struct.net2272** %2, align 8
  %79 = load i32, i32* @LOCCTL1, align 4
  %80 = load i32, i32* @dma_mode, align 4
  %81 = load i32, i32* @DMA_MODE, align 4
  %82 = shl i32 %80, %81
  %83 = call i32 @net2272_write(%struct.net2272* %78, i32 %79, i32 %82)
  ret void
}

declare dso_local i32 @net2272_cancel_dma(%struct.net2272*) #1

declare dso_local i32 @net2272_write(%struct.net2272*, i32, i32) #1

declare dso_local i32 @net2272_set_fifo_mode(%struct.net2272*, i32) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
