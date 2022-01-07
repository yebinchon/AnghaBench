; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_free_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_free_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.whc_std = type { i32, i32, %struct.whc_std*, i32, %struct.whc_std*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qset_free_std(%struct.whc* %0, %struct.whc_std* %1) #0 {
  %3 = alloca %struct.whc*, align 8
  %4 = alloca %struct.whc_std*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %3, align 8
  store %struct.whc_std* %1, %struct.whc_std** %4, align 8
  %7 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %8 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %7, i32 0, i32 7
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %11 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %10, i32 0, i32 4
  %12 = load %struct.whc_std*, %struct.whc_std** %11, align 8
  %13 = icmp ne %struct.whc_std* %12, null
  br i1 %13, label %14, label %66

14:                                               ; preds = %2
  %15 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %16 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_pipeout(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %22 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %14
  %26 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %27 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %26, i32 0, i32 2
  %28 = load %struct.whc_std*, %struct.whc_std** %27, align 8
  %29 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %28, i64 0
  %30 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @le64_to_cpu(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %37

33:                                               ; preds = %14
  %34 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %35 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.whc*, %struct.whc** %3, align 8
  %39 = getelementptr inbounds %struct.whc, %struct.whc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %44 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @dma_unmap_single(i32 %41, i32 %42, i32 %45, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.whc*, %struct.whc** %3, align 8
  %59 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %60 = call i32 @qset_copy_bounce_to_sg(%struct.whc* %58, %struct.whc_std* %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %63 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %62, i32 0, i32 4
  %64 = load %struct.whc_std*, %struct.whc_std** %63, align 8
  %65 = call i32 @kfree(%struct.whc_std* %64)
  br label %66

66:                                               ; preds = %61, %2
  %67 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %68 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %67, i32 0, i32 2
  %69 = load %struct.whc_std*, %struct.whc_std** %68, align 8
  %70 = icmp ne %struct.whc_std* %69, null
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  %72 = load %struct.whc*, %struct.whc** %3, align 8
  %73 = getelementptr inbounds %struct.whc, %struct.whc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %77 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dma_mapping_error(i32 %75, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %97, label %81

81:                                               ; preds = %71
  %82 = load %struct.whc*, %struct.whc** %3, align 8
  %83 = getelementptr inbounds %struct.whc, %struct.whc* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %87 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %90 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @DMA_TO_DEVICE, align 4
  %96 = call i32 @dma_unmap_single(i32 %85, i32 %88, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %81, %71
  %98 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %99 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %98, i32 0, i32 2
  %100 = load %struct.whc_std*, %struct.whc_std** %99, align 8
  %101 = call i32 @kfree(%struct.whc_std* %100)
  %102 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %103 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %102, i32 0, i32 2
  store %struct.whc_std* null, %struct.whc_std** %103, align 8
  br label %104

104:                                              ; preds = %97, %66
  %105 = load %struct.whc_std*, %struct.whc_std** %4, align 8
  %106 = call i32 @kfree(%struct.whc_std* %105)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @qset_copy_bounce_to_sg(%struct.whc*, %struct.whc_std*) #1

declare dso_local i32 @kfree(%struct.whc_std*) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
