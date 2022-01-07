; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_dma_channel = type { i64, i64, %struct.cppi41_dma_controller* }
%struct.cppi41_dma_controller = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.musb* }
%struct.musb = type { i32 }

@USB_CTRL_TX_MODE = common dso_local global i32 0, align 4
@USB_CTRL_RX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi41_dma_channel*, i32)* @cppi41_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi41_set_dma_mode(%struct.cppi41_dma_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.cppi41_dma_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cppi41_dma_controller*, align 8
  %6 = alloca %struct.musb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.cppi41_dma_channel* %0, %struct.cppi41_dma_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %11 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %10, i32 0, i32 2
  %12 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %11, align 8
  store %struct.cppi41_dma_controller* %12, %struct.cppi41_dma_controller** %5, align 8
  %13 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %14 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.musb*, %struct.musb** %15, align 8
  store %struct.musb* %16, %struct.musb** %6, align 8
  %17 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %18 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %23 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %9, align 8
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %27 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %9, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %31 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @update_ep_mode(i64 %33, i32 %34, i64 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %66

41:                                               ; preds = %29
  %42 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %43 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %49 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.musb*, %struct.musb** %6, align 8
  %51 = getelementptr inbounds %struct.musb, %struct.musb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @USB_CTRL_TX_MODE, align 4
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @musb_writel(i32 %52, i32 %53, i64 %54)
  br label %66

56:                                               ; preds = %41
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %59 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.musb*, %struct.musb** %6, align 8
  %61 = getelementptr inbounds %struct.musb, %struct.musb* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @USB_CTRL_RX_MODE, align 4
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @musb_writel(i32 %62, i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %40, %56, %46
  ret void
}

declare dso_local i64 @update_ep_mode(i64, i32, i64) #1

declare dso_local i32 @musb_writel(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
