; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_set_one_ppod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_set_one_ppod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_pagepod = type { i64* }
%struct.cxgbi_task_tag_info = type { i32 }
%struct.scatterlist = type { i32 }

@PPOD_PAGES_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_ddp_set_one_ppod(%struct.cxgbi_pagepod* %0, %struct.cxgbi_task_tag_info* %1, %struct.scatterlist** %2, i32* %3) #0 {
  %5 = alloca %struct.cxgbi_pagepod*, align 8
  %6 = alloca %struct.cxgbi_task_tag_info*, align 8
  %7 = alloca %struct.scatterlist**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cxgbi_pagepod* %0, %struct.cxgbi_pagepod** %5, align 8
  store %struct.cxgbi_task_tag_info* %1, %struct.cxgbi_task_tag_info** %6, align 8
  store %struct.scatterlist** %2, %struct.scatterlist*** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %15 = icmp ne %struct.scatterlist** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi %struct.scatterlist* [ %18, %16 ], [ null, %19 ]
  store %struct.scatterlist* %21, %struct.scatterlist** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %5, align 8
  %31 = load %struct.cxgbi_task_tag_info*, %struct.cxgbi_task_tag_info** %6, align 8
  %32 = getelementptr inbounds %struct.cxgbi_task_tag_info, %struct.cxgbi_task_tag_info* %31, i32 0, i32 0
  %33 = call i32 @memcpy(%struct.cxgbi_pagepod* %30, i32* %32, i32 4)
  %34 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %35 = icmp ne %struct.scatterlist* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %38 = call i64 @sg_dma_address(%struct.scatterlist* %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %40 = call i32 @sg_dma_len(%struct.scatterlist* %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %28
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %93, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @PPOD_PAGES_MAX, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %96

46:                                               ; preds = %42
  %47 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %48 = icmp ne %struct.scatterlist* %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %46
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = add i64 %50, %52
  %54 = call i64 @cpu_to_be64(i64 %53)
  %55 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %5, align 8
  %56 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  store i64 %54, i64* %60, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %69 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %67, %70
  %72 = icmp eq i32 %66, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %74 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %75 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %74)
  store %struct.scatterlist* %75, %struct.scatterlist** %9, align 8
  %76 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %77 = icmp ne %struct.scatterlist* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %80 = call i64 @sg_dma_address(%struct.scatterlist* %79)
  store i64 %80, i64* %11, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %82 = call i32 @sg_dma_len(%struct.scatterlist* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %83, %49
  br label %92

85:                                               ; preds = %46
  %86 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %5, align 8
  %87 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %84
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %42

96:                                               ; preds = %42
  %97 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  %98 = icmp ne %struct.scatterlist** %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %101 = load %struct.scatterlist**, %struct.scatterlist*** %7, align 8
  store %struct.scatterlist* %100, %struct.scatterlist** %101, align 8
  %102 = load i32, i32* %10, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %104
  store i32 0, i32* %10, align 4
  %109 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %110 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %109)
  store %struct.scatterlist* %110, %struct.scatterlist** %9, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %112 = icmp ne %struct.scatterlist* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %115 = call i64 @sg_dma_address(%struct.scatterlist* %114)
  store i64 %115, i64* %11, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %117 = call i32 @sg_dma_len(%struct.scatterlist* %116)
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %113, %108
  br label %119

119:                                              ; preds = %118, %104
  %120 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %121 = icmp ne %struct.scatterlist* %120, null
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load i64, i64* %11, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = add i64 %123, %125
  %127 = call i64 @cpu_to_be64(i64 %126)
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %122
  %130 = phi i64 [ %127, %122 ], [ 0, %128 ]
  %131 = load %struct.cxgbi_pagepod*, %struct.cxgbi_pagepod** %5, align 8
  %132 = getelementptr inbounds %struct.cxgbi_pagepod, %struct.cxgbi_pagepod* %131, i32 0, i32 0
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %130, i64* %136, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.cxgbi_pagepod*, i32*, i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i64 @cpu_to_be64(i64) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
