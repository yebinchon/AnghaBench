; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_unmap_urb_for_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_unmap_urb_for_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CONFIG_HAS_DMA = common dso_local global i32 0, align 4
@URB_DMA_MAP_SG = common dso_local global i32 0, align 4
@URB_DMA_MAP_PAGE = common dso_local global i32 0, align 4
@URB_DMA_MAP_SINGLE = common dso_local global i32 0, align 4
@URB_MAP_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_unmap_urb_for_dma(%struct.usb_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = call i32 @usb_hcd_unmap_urb_setup_for_dma(%struct.usb_hcd* %6, %struct.urb* %7)
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = call i64 @usb_urb_dir_in(%struct.urb* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @CONFIG_HAS_DMA, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.urb*, %struct.urb** %4, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @URB_DMA_MAP_SG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.urb*, %struct.urb** %4, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dma_unmap_sg(i32 %32, i32 %35, i32 %38, i32 %39)
  br label %114

41:                                               ; preds = %21, %16
  %42 = load i32, i32* @CONFIG_HAS_DMA, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct.urb*, %struct.urb** %4, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @URB_DMA_MAP_PAGE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.urb*, %struct.urb** %4, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @dma_unmap_page(i32 %56, i32 %59, i32 %62, i32 %63)
  br label %113

65:                                               ; preds = %45, %41
  %66 = load i32, i32* @CONFIG_HAS_DMA, align 4
  %67 = call i64 @IS_ENABLED(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.urb*, %struct.urb** %4, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @URB_DMA_MAP_SINGLE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %78 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.urb*, %struct.urb** %4, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.urb*, %struct.urb** %4, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @dma_unmap_single(i32 %80, i32 %83, i32 %86, i32 %87)
  br label %112

89:                                               ; preds = %69, %65
  %90 = load %struct.urb*, %struct.urb** %4, align 8
  %91 = getelementptr inbounds %struct.urb, %struct.urb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @URB_MAP_LOCAL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load %struct.urb*, %struct.urb** %4, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.urb*, %struct.urb** %4, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 3
  %104 = load %struct.urb*, %struct.urb** %4, align 8
  %105 = getelementptr inbounds %struct.urb, %struct.urb* %104, i32 0, i32 2
  %106 = load %struct.urb*, %struct.urb** %4, align 8
  %107 = getelementptr inbounds %struct.urb, %struct.urb* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @hcd_free_coherent(i32 %101, i32* %103, i32* %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %96, %89
  br label %112

112:                                              ; preds = %111, %76
  br label %113

113:                                              ; preds = %112, %52
  br label %114

114:                                              ; preds = %113, %28
  %115 = load i32, i32* @URB_DMA_MAP_SG, align 4
  %116 = load i32, i32* @URB_DMA_MAP_PAGE, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @URB_DMA_MAP_SINGLE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @URB_MAP_LOCAL, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load %struct.urb*, %struct.urb** %4, align 8
  %124 = getelementptr inbounds %struct.urb, %struct.urb* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  ret void
}

declare dso_local i32 @usb_hcd_unmap_urb_setup_for_dma(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i64 @usb_urb_dir_in(%struct.urb*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @hcd_free_coherent(i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
