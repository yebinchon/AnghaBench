; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musbhsdma.c_dma_controller_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musbhsdma.c_dma_controller_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb_dma_controller = type { i32, %struct.TYPE_2__*, %struct.musb* }
%struct.TYPE_2__ = type { %struct.dma_channel }
%struct.dma_channel = type { i32 }
%struct.musb = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Stopping DMA controller while channel active\0A\00", align 1
@MUSB_HSDMA_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musb_dma_controller*)* @dma_controller_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_controller_stop(%struct.musb_dma_controller* %0) #0 {
  %2 = alloca %struct.musb_dma_controller*, align 8
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.dma_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.musb_dma_controller* %0, %struct.musb_dma_controller** %2, align 8
  %6 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %2, align 8
  %7 = getelementptr inbounds %struct.musb_dma_controller, %struct.musb_dma_controller* %6, i32 0, i32 2
  %8 = load %struct.musb*, %struct.musb** %7, align 8
  store %struct.musb* %8, %struct.musb** %3, align 8
  %9 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %2, align 8
  %10 = getelementptr inbounds %struct.musb_dma_controller, %struct.musb_dma_controller* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %1
  %14 = load %struct.musb*, %struct.musb** %3, align 8
  %15 = getelementptr inbounds %struct.musb, %struct.musb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %47, %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MUSB_HSDMA_CHANNELS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %18
  %23 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %2, align 8
  %24 = getelementptr inbounds %struct.musb_dma_controller, %struct.musb_dma_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %2, align 8
  %32 = getelementptr inbounds %struct.musb_dma_controller, %struct.musb_dma_controller* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.dma_channel* %37, %struct.dma_channel** %4, align 8
  %38 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %39 = call i32 @dma_channel_release(%struct.dma_channel* %38)
  %40 = load %struct.musb_dma_controller*, %struct.musb_dma_controller** %2, align 8
  %41 = getelementptr inbounds %struct.musb_dma_controller, %struct.musb_dma_controller* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br label %50

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45, %22
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %18

50:                                               ; preds = %44, %18
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_channel_release(%struct.dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
