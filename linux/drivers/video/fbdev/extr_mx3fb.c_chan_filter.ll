; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_chan_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_mx3fb.c_chan_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.dma_chan_request = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mx3fb_platform_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @chan_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dma_chan_request*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.mx3fb_platform_data*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.dma_chan_request*
  store %struct.dma_chan_request* %10, %struct.dma_chan_request** %6, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %12 = call i32 @imx_dma_is_ipu(%struct.dma_chan* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %17 = icmp ne %struct.dma_chan_request* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %47

19:                                               ; preds = %15
  %20 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %21 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = call %struct.mx3fb_platform_data* @dev_get_platdata(%struct.device* %25)
  store %struct.mx3fb_platform_data* %26, %struct.mx3fb_platform_data** %8, align 8
  %27 = load %struct.dma_chan_request*, %struct.dma_chan_request** %6, align 8
  %28 = getelementptr inbounds %struct.dma_chan_request, %struct.dma_chan_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = load %struct.mx3fb_platform_data*, %struct.mx3fb_platform_data** %8, align 8
  %36 = getelementptr inbounds %struct.mx3fb_platform_data, %struct.mx3fb_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %39 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %37, %42
  br label %44

44:                                               ; preds = %34, %19
  %45 = phi i1 [ false, %19 ], [ %43, %34 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %18, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @imx_dma_is_ipu(%struct.dma_chan*) #1

declare dso_local %struct.mx3fb_platform_data* @dev_get_platdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
