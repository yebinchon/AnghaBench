; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/sunxi/cedrus/extr_cedrus_h264.c_cedrus_h264_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cedrus_ctx = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.cedrus_dev* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cedrus_dev = type { i32 }

@CEDRUS_PIC_INFO_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEDRUS_NEIGHBOR_INFO_BUF_SIZE = common dso_local global i32 0, align 4
@CEDRUS_H264_FRAME_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cedrus_ctx*)* @cedrus_h264_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cedrus_h264_start(%struct.cedrus_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cedrus_ctx*, align 8
  %4 = alloca %struct.cedrus_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cedrus_ctx* %0, %struct.cedrus_ctx** %3, align 8
  %8 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %8, i32 0, i32 2
  %10 = load %struct.cedrus_dev*, %struct.cedrus_dev** %9, align 8
  store %struct.cedrus_dev* %10, %struct.cedrus_dev** %4, align 8
  %11 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CEDRUS_PIC_INFO_BUF_SIZE, align 4
  %15 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(i32 %13, i32 %14, i32* %18, i32 %19)
  %21 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 3
  store i8* %20, i8** %24, align 8
  %25 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %150

34:                                               ; preds = %1
  %35 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %36 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CEDRUS_NEIGHBOR_INFO_BUF_SIZE, align 4
  %39 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @dma_alloc_coherent(i32 %37, i32 %38, i32* %42, i32 %43)
  %45 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 5
  store i8* %44, i8** %48, align 8
  %49 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %34
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %133

58:                                               ; preds = %34
  %59 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DIV_ROUND_UP(i32 %62, i32 16)
  %64 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @DIV_ROUND_UP(i32 %67, i32 16)
  %69 = mul nsw i32 %63, %68
  %70 = mul nsw i32 %69, 16
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul i32 %71, 2
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = mul i32 %73, 2
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = mul i32 %80, 2
  %82 = load i32, i32* @CEDRUS_H264_FRAME_NUM, align 4
  %83 = mul i32 %81, %82
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 4
  %89 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %90 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %93 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 7
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @dma_alloc_coherent(i32 %91, i32 %96, i32* %100, i32 %101)
  %103 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 6
  store i8* %102, i8** %106, align 8
  %107 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 6
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %58
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %7, align 4
  br label %117

116:                                              ; preds = %58
  store i32 0, i32* %2, align 4
  br label %150

117:                                              ; preds = %113
  %118 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %119 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CEDRUS_NEIGHBOR_INFO_BUF_SIZE, align 4
  %122 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 5
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dma_free_coherent(i32 %120, i32 %121, i8* %126, i32 %131)
  br label %133

133:                                              ; preds = %117, %55
  %134 = load %struct.cedrus_dev*, %struct.cedrus_dev** %4, align 8
  %135 = getelementptr inbounds %struct.cedrus_dev, %struct.cedrus_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @CEDRUS_PIC_INFO_BUF_SIZE, align 4
  %138 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %139 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.cedrus_ctx*, %struct.cedrus_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.cedrus_ctx, %struct.cedrus_ctx* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @dma_free_coherent(i32 %136, i32 %137, i8* %142, i32 %147)
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %133, %116, %31
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i8* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
