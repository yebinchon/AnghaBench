; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musbhsdma.c_dma_channel_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musbhsdma.c_dma_channel_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i64, %struct.musb_dma_channel* }
%struct.musb_dma_channel = type { i32, i32, i32, i64, i32, %struct.musb_dma_controller* }
%struct.musb_dma_controller = type { %struct.musb* }
%struct.musb = type { i64 }

@.str = private unnamed_addr constant [52 x i8] c"ep%d-%s pkt_sz %d, dma_addr %pad length %d, mode %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"Tx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Rx\00", align 1
@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i64 0, align 8
@MUSB_DMA_STATUS_BUSY = common dso_local global i64 0, align 8
@MUSB_HWVERS_1800 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*, i32, i32, i32, i32)* @dma_channel_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_channel_program(%struct.dma_channel* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dma_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.musb_dma_channel*, align 8
  %13 = alloca %struct.musb_dma_controller*, align 8
  %14 = alloca %struct.musb*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.dma_channel*, %struct.dma_channel** %7, align 8
  %16 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %15, i32 0, i32 2
  %17 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %16, align 8
  store %struct.musb_dma_channel* %17, %struct.musb_dma_channel** %12, align 8
  %18 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %12, align 8
  %19 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %18, i32 0, i32 5
  %20 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %19, align 8
  store %struct.musb_dma_controller* %20, %struct.musb_dma_controller** %13, align 8
  %21 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %13, align 8
  %22 = getelementptr inbounds %struct.musb_dma_controller, %struct.musb_dma_controller* %21, i32 0, i32 0
  %23 = load %struct.musb*, %struct.musb** %22, align 8
  store %struct.musb* %23, %struct.musb** %14, align 8
  %24 = load %struct.musb*, %struct.musb** %14, align 8
  %25 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %12, align 8
  %26 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %12, align 8
  %29 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @musb_dbg(%struct.musb* %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %33, i32 %34, i32* %10, i32 %35, i32 %36)
  %38 = load %struct.dma_channel*, %struct.dma_channel** %7, align 8
  %39 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MUSB_DMA_STATUS_UNKNOWN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %5
  %44 = load %struct.dma_channel*, %struct.dma_channel** %7, align 8
  %45 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %43, %5
  %50 = phi i1 [ true, %5 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.musb*, %struct.musb** %14, align 8
  %54 = getelementptr inbounds %struct.musb, %struct.musb* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MUSB_HWVERS_1800, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = srem i32 %59, 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %84

63:                                               ; preds = %58, %49
  %64 = load %struct.dma_channel*, %struct.dma_channel** %7, align 8
  %65 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %12, align 8
  %68 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %12, align 8
  %71 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.musb_dma_channel*, %struct.musb_dma_channel** %12, align 8
  %74 = getelementptr inbounds %struct.musb_dma_channel, %struct.musb_dma_channel* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* @MUSB_DMA_STATUS_BUSY, align 8
  %76 = load %struct.dma_channel*, %struct.dma_channel** %7, align 8
  %77 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.dma_channel*, %struct.dma_channel** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @configure_channel(%struct.dma_channel* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %63, %62
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @musb_dbg(%struct.musb*, i8*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @configure_channel(%struct.dma_channel*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
