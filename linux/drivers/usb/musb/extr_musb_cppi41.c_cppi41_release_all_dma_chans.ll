; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_release_all_dma_chans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_release_all_dma_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi41_dma_controller = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.TYPE_3__ = type { %struct.dma_chan* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi41_dma_controller*)* @cppi41_release_all_dma_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi41_release_all_dma_chans(%struct.cppi41_dma_controller* %0) #0 {
  %2 = alloca %struct.cppi41_dma_controller*, align 8
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.cppi41_dma_controller* %0, %struct.cppi41_dma_controller** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %2, align 8
  %8 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %43

11:                                               ; preds = %5
  %12 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %2, align 8
  %13 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.dma_chan*, %struct.dma_chan** %18, align 8
  store %struct.dma_chan* %19, %struct.dma_chan** %3, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %21 = icmp ne %struct.dma_chan* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %24 = call i32 @dma_release_channel(%struct.dma_chan* %23)
  br label %25

25:                                               ; preds = %22, %11
  %26 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %2, align 8
  %27 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.dma_chan*, %struct.dma_chan** %32, align 8
  store %struct.dma_chan* %33, %struct.dma_chan** %3, align 8
  %34 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %35 = icmp ne %struct.dma_chan* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %38 = call i32 @dma_release_channel(%struct.dma_chan* %37)
  br label %39

39:                                               ; preds = %36, %25
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %5

43:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
