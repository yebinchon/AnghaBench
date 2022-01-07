; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { i64, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }
%struct.fotg210_request = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32* }

@FIBCR_BCFX = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dma_mapping_error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_ep*, %struct.fotg210_request*)* @fotg210_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_start_dma(%struct.fotg210_ep* %0, %struct.fotg210_request* %1) #0 {
  %3 = alloca %struct.fotg210_ep*, align 8
  %4 = alloca %struct.fotg210_request*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %3, align 8
  store %struct.fotg210_request* %1, %struct.fotg210_request** %4, align 8
  %9 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %10 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %9, i32 0, i32 3
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %15 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %20 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %25 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %7, align 8
  %28 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %29 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %58

32:                                               ; preds = %18
  %33 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %34 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %38 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  store i32* %42, i32** %7, align 8
  %43 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %44 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %49 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = call i64 @FOTG210_FIBCR(i64 %51)
  %53 = add nsw i64 %47, %52
  %54 = call i32 @ioread32(i64 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @FIBCR_BCFX, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %32, %23
  br label %95

59:                                               ; preds = %2
  %60 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %61 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %65 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %63, i64 %68
  store i32* %69, i32** %7, align 8
  %70 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %71 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %75 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %73, %77
  %79 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %80 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %78, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %59
  %85 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %86 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %8, align 4
  br label %94

89:                                               ; preds = %59
  %90 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %91 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %8, align 4
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %58
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %100 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @dma_map_single(%struct.device* %96, i32* %97, i32 %98, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i64 @dma_mapping_error(%struct.device* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %136

116:                                              ; preds = %107
  %117 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @fotg210_enable_dma(%struct.fotg210_ep* %117, i32 %118, i32 %119)
  %121 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %122 = call i32 @fotg210_wait_dma_done(%struct.fotg210_ep* %121)
  %123 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %124 = call i32 @fotg210_disable_dma(%struct.fotg210_ep* %123)
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.fotg210_request*, %struct.fotg210_request** %4, align 8
  %127 = getelementptr inbounds %struct.fotg210_request, %struct.fotg210_request* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %125
  store i32 %130, i32* %128, align 4
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @DMA_TO_DEVICE, align 4
  %135 = call i32 @dma_unmap_single(%struct.device* %131, i32 %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %116, %114
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @FOTG210_FIBCR(i64) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @fotg210_enable_dma(%struct.fotg210_ep*, i32, i32) #1

declare dso_local i32 @fotg210_wait_dma_done(%struct.fotg210_ep*) #1

declare dso_local i32 @fotg210_disable_dma(%struct.fotg210_ep*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
