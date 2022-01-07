; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_channel_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_channel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i32, %struct.ux500_dma_channel* }
%struct.ux500_dma_channel = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.musb* }
%struct.musb = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"channel=%d\0A\00", align 1
@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @ux500_dma_channel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ux500_dma_channel_release(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca %struct.ux500_dma_channel*, align 8
  %4 = alloca %struct.musb*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %5 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %6 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %5, i32 0, i32 2
  %7 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %6, align 8
  store %struct.ux500_dma_channel* %7, %struct.ux500_dma_channel** %3, align 8
  %8 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %9 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.musb*, %struct.musb** %11, align 8
  store %struct.musb* %12, %struct.musb** %4, align 8
  %13 = load %struct.musb*, %struct.musb** %4, align 8
  %14 = getelementptr inbounds %struct.musb, %struct.musb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %17 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %28 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %29 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %31 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
