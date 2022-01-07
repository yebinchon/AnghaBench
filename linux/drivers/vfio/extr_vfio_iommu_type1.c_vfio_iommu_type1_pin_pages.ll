; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_type1_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_type1_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_iommu = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vfio_dma = type { i32, i64, i64 }
%struct.vfio_pfn = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i32, i32, i64*)* @vfio_iommu_type1_pin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_iommu_type1_pin_pages(i8* %0, i64* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.vfio_iommu*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.vfio_dma*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.vfio_pfn*, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.vfio_iommu*
  store %struct.vfio_iommu* %23, %struct.vfio_iommu** %12, align 8
  %24 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %25 = icmp ne %struct.vfio_iommu* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load i64*, i64** %8, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64*, i64** %11, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %26, %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %188

35:                                               ; preds = %29
  %36 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %37 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %188

43:                                               ; preds = %35
  %44 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %45 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %48 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  br label %183

55:                                               ; preds = %43
  %56 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %57 = call i32 @IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(%struct.vfio_iommu* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %145, %55
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %148

65:                                               ; preds = %61
  %66 = load i64*, i64** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PAGE_SHIFT, align 8
  %72 = shl i64 %70, %71
  store i64 %72, i64* %19, align 8
  %73 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = call %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu* %73, i64 %74, i32 %75)
  store %struct.vfio_dma* %76, %struct.vfio_dma** %17, align 8
  %77 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %78 = icmp ne %struct.vfio_dma* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %65
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %15, align 4
  br label %150

82:                                               ; preds = %65
  %83 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %84 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* @EPERM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %15, align 4
  br label %150

93:                                               ; preds = %82
  %94 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %95 = load i64, i64* %19, align 8
  %96 = call %struct.vfio_pfn* @vfio_iova_get_vfio_pfn(%struct.vfio_dma* %94, i64 %95)
  store %struct.vfio_pfn* %96, %struct.vfio_pfn** %20, align 8
  %97 = load %struct.vfio_pfn*, %struct.vfio_pfn** %20, align 8
  %98 = icmp ne %struct.vfio_pfn* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load %struct.vfio_pfn*, %struct.vfio_pfn** %20, align 8
  %101 = getelementptr inbounds %struct.vfio_pfn, %struct.vfio_pfn* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %102, i64* %106, align 8
  br label %145

107:                                              ; preds = %93
  %108 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %109 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %19, align 8
  %112 = add i64 %110, %111
  %113 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %114 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = sub i64 %112, %115
  store i64 %116, i64* %16, align 8
  %117 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %118 = load i64, i64* %16, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @vfio_pin_page_external(%struct.vfio_dma* %117, i64 %118, i64* %122, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %107
  br label %150

128:                                              ; preds = %107
  %129 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64*, i64** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @vfio_add_to_pfn_list(%struct.vfio_dma* %129, i64 %130, i64 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %141 = load i64, i64* %19, align 8
  %142 = load i32, i32* %18, align 4
  %143 = call i32 @vfio_unpin_page_external(%struct.vfio_dma* %140, i64 %141, i32 %142)
  br label %150

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %99
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %61

148:                                              ; preds = %61
  %149 = load i32, i32* %13, align 4
  store i32 %149, i32* %15, align 4
  br label %183

150:                                              ; preds = %139, %127, %90, %79
  %151 = load i64*, i64** %11, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 0, i64* %154, align 8
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %179, %150
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %182

159:                                              ; preds = %155
  %160 = load i64*, i64** %8, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PAGE_SHIFT, align 8
  %166 = shl i64 %164, %165
  store i64 %166, i64* %21, align 8
  %167 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %168 = load i64, i64* %21, align 8
  %169 = load i32, i32* @PAGE_SIZE, align 4
  %170 = call %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu* %167, i64 %168, i32 %169)
  store %struct.vfio_dma* %170, %struct.vfio_dma** %17, align 8
  %171 = load %struct.vfio_dma*, %struct.vfio_dma** %17, align 8
  %172 = load i64, i64* %21, align 8
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @vfio_unpin_page_external(%struct.vfio_dma* %171, i64 %172, i32 %173)
  %175 = load i64*, i64** %11, align 8
  %176 = load i32, i32* %14, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %175, i64 %177
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %159
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %155

182:                                              ; preds = %155
  br label %183

183:                                              ; preds = %182, %148, %52
  %184 = load %struct.vfio_iommu*, %struct.vfio_iommu** %12, align 8
  %185 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i32, i32* %15, align 4
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %183, %40, %32
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(%struct.vfio_iommu*) #1

declare dso_local %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu*, i64, i32) #1

declare dso_local %struct.vfio_pfn* @vfio_iova_get_vfio_pfn(%struct.vfio_dma*, i64) #1

declare dso_local i32 @vfio_pin_page_external(%struct.vfio_dma*, i64, i64*, i32) #1

declare dso_local i32 @vfio_add_to_pfn_list(%struct.vfio_dma*, i64, i64) #1

declare dso_local i32 @vfio_unpin_page_external(%struct.vfio_dma*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
