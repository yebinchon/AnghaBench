; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_channel_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_channel_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i64 }

@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_BUSY = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*, i32, i32, i32, i32)* @ux500_dma_channel_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ux500_dma_channel_program(%struct.dma_channel* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dma_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %13 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MUSB_DMA_STATUS_UNKNOWN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %19 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %17, %5
  %24 = phi i1 [ true, %5 ], [ %22, %17 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %28 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %29 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %31 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @ux500_configure_channel(%struct.dma_channel* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %23
  %41 = load i64, i64* @MUSB_DMA_STATUS_FREE, align 8
  %42 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %43 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ux500_configure_channel(%struct.dma_channel*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
