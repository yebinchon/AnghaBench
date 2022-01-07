; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272 = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [42 x i8] c"request_dma ep %d buf %08x len %d dir %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMAREQ = common dso_local global i32 0, align 4
@DMA_BUFFER_VALID = common dso_local global i32 0, align 4
@DMA_REQUEST_ENABLE = common dso_local global i32 0, align 4
@DMA_CONTROL_DACK = common dso_local global i32 0, align 4
@EOT_POLARITY = common dso_local global i32 0, align 4
@DACK_POLARITY = common dso_local global i32 0, align 4
@DREQ_POLARITY = common dso_local global i32 0, align 4
@DMA_ENDPOINT_SELECT = common dso_local global i32 0, align 4
@SCRATCH = common dso_local global i32 0, align 4
@DEMAND_MODE = common dso_local global i32 0, align 4
@DIRECTION_OF_TRANSFER = common dso_local global i32 0, align 4
@DMADPR0 = common dso_local global i64 0, align 8
@DMALADR0 = common dso_local global i64 0, align 8
@DMAMODE0 = common dso_local global i64 0, align 8
@DMAPADR0 = common dso_local global i64 0, align 8
@DMASIZ0 = common dso_local global i64 0, align 8
@DMA_CHANNEL_INTERRUPT_SELECT = common dso_local global i32 0, align 4
@DMA_EOT_ENABLE = common dso_local global i32 0, align 4
@DONE_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@FAST_SLOW_TERMINATE_MODE_SELECT = common dso_local global i32 0, align 4
@INTCSR = common dso_local global i64 0, align 8
@INTERRUPT_AFTER_TERMINAL_COUNT = common dso_local global i32 0, align 4
@LOCAL_ADDRESSING_MODE = common dso_local global i32 0, align 4
@LOCAL_BURST_ENABLE = common dso_local global i32 0, align 4
@LOCAL_BUS_WIDTH = common dso_local global i32 0, align 4
@LOCAL_DMA_CHANNEL_0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@TA_READY_INPUT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net2272*, i32, i32, i32, i32)* @net2272_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net2272_request_dma(%struct.net2272* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net2272*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net2272* %0, %struct.net2272** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.net2272*, %struct.net2272** %7, align 8
  %13 = getelementptr inbounds %struct.net2272, %struct.net2272* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @dev_vdbg(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.net2272*, %struct.net2272** %7, align 8
  %21 = getelementptr inbounds %struct.net2272, %struct.net2272* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %76

27:                                               ; preds = %5
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ugt i32 %31, 16777216
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %76

36:                                               ; preds = %30, %27
  %37 = load %struct.net2272*, %struct.net2272** %7, align 8
  %38 = getelementptr inbounds %struct.net2272, %struct.net2272* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load %struct.net2272*, %struct.net2272** %7, align 8
  %40 = load i32, i32* @DMAREQ, align 4
  %41 = load i32, i32* @DMA_BUFFER_VALID, align 4
  %42 = shl i32 0, %41
  %43 = load i32, i32* @DMA_REQUEST_ENABLE, align 4
  %44 = shl i32 1, %43
  %45 = or i32 %42, %44
  %46 = load i32, i32* @DMA_CONTROL_DACK, align 4
  %47 = shl i32 1, %46
  %48 = or i32 %45, %47
  %49 = load %struct.net2272*, %struct.net2272** %7, align 8
  %50 = getelementptr inbounds %struct.net2272, %struct.net2272* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @EOT_POLARITY, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %48, %53
  %55 = load %struct.net2272*, %struct.net2272** %7, align 8
  %56 = getelementptr inbounds %struct.net2272, %struct.net2272* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DACK_POLARITY, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %54, %59
  %61 = load %struct.net2272*, %struct.net2272** %7, align 8
  %62 = getelementptr inbounds %struct.net2272, %struct.net2272* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @DREQ_POLARITY, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %60, %65
  %67 = load i32, i32* %8, align 4
  %68 = lshr i32 %67, 1
  %69 = load i32, i32* @DMA_ENDPOINT_SELECT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %66, %70
  %72 = call i32 @net2272_write(%struct.net2272* %39, i32 %40, i32 %71)
  %73 = load %struct.net2272*, %struct.net2272** %7, align 8
  %74 = load i32, i32* @SCRATCH, align 4
  %75 = call i32 @net2272_read(%struct.net2272* %73, i32 %74)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %36, %33, %24
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @dev_vdbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @net2272_write(%struct.net2272*, i32, i32) #1

declare dso_local i32 @net2272_read(%struct.net2272*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
