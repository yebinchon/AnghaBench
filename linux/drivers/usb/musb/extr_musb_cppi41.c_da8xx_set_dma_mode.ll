; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_da8xx_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_da8xx_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_dma_channel = type { i32, i32, %struct.cppi41_dma_controller* }
%struct.cppi41_dma_controller = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.musb* }
%struct.musb = type { i32 }

@DA8XX_USB_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi41_dma_channel*, i32)* @da8xx_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da8xx_set_dma_mode(%struct.cppi41_dma_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.cppi41_dma_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cppi41_dma_controller*, align 8
  %6 = alloca %struct.musb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cppi41_dma_channel* %0, %struct.cppi41_dma_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %12 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %11, i32 0, i32 2
  %13 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %12, align 8
  store %struct.cppi41_dma_controller* %13, %struct.cppi41_dma_controller** %5, align 8
  %14 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %15 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.musb*, %struct.musb** %16, align 8
  store %struct.musb* %17, %struct.musb** %6, align 8
  %18 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %19 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %22 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %24, 1
  %26 = mul nsw i32 %25, 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %28 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = add i32 %32, 16
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 3, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %59

49:                                               ; preds = %34
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %5, align 8
  %52 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.musb*, %struct.musb** %6, align 8
  %54 = getelementptr inbounds %struct.musb, %struct.musb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DA8XX_USB_MODE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @musb_writel(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %48
  ret void
}

declare dso_local i32 @musb_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
