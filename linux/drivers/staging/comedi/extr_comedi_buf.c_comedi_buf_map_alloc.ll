; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_map_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_map_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_buf_map = type { i32, i32, %struct.comedi_buf_page*, i32, i32 }
%struct.comedi_buf_page = type { i8*, i64 }
%struct.comedi_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_buf_map* (%struct.comedi_device*, i32, i32)* @comedi_buf_map_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_buf_map* @comedi_buf_map_alloc(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_buf_map*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_buf_map*, align 8
  %9 = alloca %struct.comedi_buf_page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.comedi_buf_map* @kzalloc(i32 24, i32 %13)
  store %struct.comedi_buf_map* %14, %struct.comedi_buf_map** %8, align 8
  %15 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %16 = icmp ne %struct.comedi_buf_map* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %4, align 8
  br label %150

18:                                               ; preds = %3
  %19 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %20 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %19, i32 0, i32 4
  %21 = call i32 @kref_init(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %24 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %26 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @DMA_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_device(i32 %34)
  %36 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %37 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %18
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = mul i64 16, %40
  %42 = trunc i64 %41 to i32
  %43 = call %struct.comedi_buf_page* @vzalloc(i32 %42)
  %44 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %45 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %44, i32 0, i32 2
  store %struct.comedi_buf_page* %43, %struct.comedi_buf_page** %45, align 8
  %46 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %46, i32 0, i32 2
  %48 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %47, align 8
  %49 = icmp ne %struct.comedi_buf_page* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %38
  br label %147

51:                                               ; preds = %38
  %52 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %53 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* @DMA_NONE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %51
  %59 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %60 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PAGE_SIZE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = mul i32 %62, %63
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @dma_alloc_coherent(i32 %61, i32 %64, i64* %12, i32 %65)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %147

70:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %98, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %71
  %76 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %77 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %76, i32 0, i32 2
  %78 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %78, i64 %80
  store %struct.comedi_buf_page* %81, %struct.comedi_buf_page** %9, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = getelementptr i8, i8* %82, i64 %86
  %88 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %9, align 8
  %89 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @PAGE_SHIFT, align 4
  %93 = shl i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = add nsw i64 %90, %94
  %96 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %9, align 8
  %97 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %71

101:                                              ; preds = %71
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %104 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %145

105:                                              ; preds = %51
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %133, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %136

110:                                              ; preds = %106
  %111 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %112 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %111, i32 0, i32 2
  %113 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %113, i64 %115
  store %struct.comedi_buf_page* %116, %struct.comedi_buf_page** %9, align 8
  %117 = load i32, i32* @GFP_KERNEL, align 4
  %118 = call i64 @get_zeroed_page(i32 %117)
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %9, align 8
  %121 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %9, align 8
  %123 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %110
  br label %136

127:                                              ; preds = %110
  %128 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %9, align 8
  %129 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @virt_to_page(i8* %130)
  %132 = call i32 @SetPageReserved(i32 %131)
  br label %133

133:                                              ; preds = %127
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %106

136:                                              ; preds = %126, %106
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %139 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %147

144:                                              ; preds = %136
  br label %145

145:                                              ; preds = %144, %101
  %146 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  store %struct.comedi_buf_map* %146, %struct.comedi_buf_map** %4, align 8
  br label %150

147:                                              ; preds = %143, %69, %50
  %148 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %8, align 8
  %149 = call i32 @comedi_buf_map_put(%struct.comedi_buf_map* %148)
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %4, align 8
  br label %150

150:                                              ; preds = %147, %145, %17
  %151 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %4, align 8
  ret %struct.comedi_buf_map* %151
}

declare dso_local %struct.comedi_buf_map* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_device(i32) #1

declare dso_local %struct.comedi_buf_page* @vzalloc(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @SetPageReserved(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @comedi_buf_map_put(%struct.comedi_buf_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
