; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_controller_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_ux500_dma.c_ux500_dma_controller_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_dma_controller = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dma_channel }
%struct.dma_channel = type { %struct.ux500_dma_channel* }
%struct.ux500_dma_channel = type { i64 }
%struct.TYPE_3__ = type { %struct.dma_channel }

@UX500_MUSB_DMA_NUM_RX_TX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ux500_dma_controller*)* @ux500_dma_controller_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ux500_dma_controller_stop(%struct.ux500_dma_controller* %0) #0 {
  %2 = alloca %struct.ux500_dma_controller*, align 8
  %3 = alloca %struct.ux500_dma_channel*, align 8
  %4 = alloca %struct.dma_channel*, align 8
  %5 = alloca i64, align 8
  store %struct.ux500_dma_controller* %0, %struct.ux500_dma_controller** %2, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @UX500_MUSB_DMA_NUM_RX_TX_CHANNELS, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %2, align 8
  %12 = getelementptr inbounds %struct.ux500_dma_controller, %struct.ux500_dma_controller* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.dma_channel* %16, %struct.dma_channel** %4, align 8
  %17 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %18 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %17, i32 0, i32 0
  %19 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %18, align 8
  store %struct.ux500_dma_channel* %19, %struct.ux500_dma_channel** %3, align 8
  %20 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %21 = call i32 @ux500_dma_channel_release(%struct.dma_channel* %20)
  %22 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %10
  %27 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %28 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dma_release_channel(i64 %29)
  br label %31

31:                                               ; preds = %26, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %6

35:                                               ; preds = %6
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @UX500_MUSB_DMA_NUM_RX_TX_CHANNELS, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load %struct.ux500_dma_controller*, %struct.ux500_dma_controller** %2, align 8
  %42 = getelementptr inbounds %struct.ux500_dma_controller, %struct.ux500_dma_controller* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.dma_channel* %46, %struct.dma_channel** %4, align 8
  %47 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %48 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %47, i32 0, i32 0
  %49 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %48, align 8
  store %struct.ux500_dma_channel* %49, %struct.ux500_dma_channel** %3, align 8
  %50 = load %struct.dma_channel*, %struct.dma_channel** %4, align 8
  %51 = call i32 @ux500_dma_channel_release(%struct.dma_channel* %50)
  %52 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %53 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %40
  %57 = load %struct.ux500_dma_channel*, %struct.ux500_dma_channel** %3, align 8
  %58 = getelementptr inbounds %struct.ux500_dma_channel, %struct.ux500_dma_channel* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @dma_release_channel(i64 %59)
  br label %61

61:                                               ; preds = %56, %40
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %36

65:                                               ; preds = %36
  ret void
}

declare dso_local i32 @ux500_dma_channel_release(%struct.dma_channel*) #1

declare dso_local i32 @dma_release_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
