; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_fill_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_qset.c_qset_fill_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.whc_std = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@WHCI_PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.whc*, %struct.whc_std*, i32)* @qset_fill_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qset_fill_page_list(%struct.whc* %0, %struct.whc_std* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.whc*, align 8
  %6 = alloca %struct.whc_std*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.whc* %0, %struct.whc** %5, align 8
  store %struct.whc_std* %1, %struct.whc_std** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %14 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %17 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WHCI_PAGE_SIZE, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %23 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  store i32 0, i32* %4, align 4
  br label %116

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @WHCI_PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %32 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @WHCI_PAGE_SIZE, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %37, i32 %38)
  %40 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %41 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %43 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.TYPE_6__* @kmalloc(i64 %47, i32 %48)
  %50 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %51 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %50, i32 0, i32 3
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %51, align 8
  %52 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %53 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %52, i32 0, i32 3
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp eq %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %24
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %116

59:                                               ; preds = %24
  %60 = load %struct.whc*, %struct.whc** %5, align 8
  %61 = getelementptr inbounds %struct.whc, %struct.whc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %65 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %64, i32 0, i32 3
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @dma_map_single(i32 %63, %struct.TYPE_6__* %66, i64 %67, i32 %68)
  %70 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %71 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.whc*, %struct.whc** %5, align 8
  %73 = getelementptr inbounds %struct.whc, %struct.whc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %77 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @dma_mapping_error(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %59
  %82 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %83 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %82, i32 0, i32 3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = call i32 @kfree(%struct.TYPE_6__* %84)
  %86 = load i32, i32* @EFAULT, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %116

88:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %112, %88
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %92 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @cpu_to_le64(i32 %96)
  %98 = load %struct.whc_std*, %struct.whc_std** %6, align 8
  %99 = getelementptr inbounds %struct.whc_std, %struct.whc_std* %98, i32 0, i32 3
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32 %97, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @WHCI_PAGE_SIZE, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @WHCI_PAGE_SIZE, align 4
  %109 = sub nsw i32 %108, 1
  %110 = xor i32 %109, -1
  %111 = and i32 %107, %110
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %95
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %12, align 4
  br label %89

115:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %81, %56, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_6__* @kmalloc(i64, i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
