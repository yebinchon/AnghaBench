; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_channel_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_channel_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i64, %struct.cppi41_dma_channel* }
%struct.cppi41_dma_channel = type { %struct.TYPE_10__*, i64, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_BUSY = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*, i32, i32, i32, i32)* @cppi41_dma_channel_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppi41_dma_channel_program(%struct.dma_channel* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dma_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cppi41_dma_channel*, align 8
  %13 = alloca i32, align 4
  store %struct.dma_channel* %0, %struct.dma_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %15 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %14, i32 0, i32 2
  %16 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %15, align 8
  store %struct.cppi41_dma_channel* %16, %struct.cppi41_dma_channel** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %18 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MUSB_DMA_STATUS_UNKNOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %24 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %5
  %29 = phi i1 [ true, %5 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %12, align 8
  %33 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_host_active(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %28
  %41 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %12, align 8
  %42 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %12, align 8
  %47 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  br label %61

53:                                               ; preds = %40
  %54 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %12, align 8
  %55 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %53, %45
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %64 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %65 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %67 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 2047
  %74 = mul nsw i32 %71, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %70, %62
  %76 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @cppi41_configure_channel(%struct.dma_channel* %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %75
  %85 = load i64, i64* @MUSB_DMA_STATUS_FREE, align 8
  %86 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %87 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %75
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_host_active(i32) #1

declare dso_local i32 @cppi41_configure_channel(%struct.dma_channel*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
