; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_dma_do_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_dma_do_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.vfio_iommu = type { i32, i32, i64 }
%struct.vfio_iommu_type1_dma_unmap = type { i32, i32 }
%struct.vfio_dma = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@VFIO_IOMMU_NOTIFY_DMA_UNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_iommu*, %struct.vfio_iommu_type1_dma_unmap*)* @vfio_dma_do_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_dma_do_unmap(%struct.vfio_iommu* %0, %struct.vfio_iommu_type1_dma_unmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_iommu*, align 8
  %5 = alloca %struct.vfio_iommu_type1_dma_unmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vfio_dma*, align 8
  %8 = alloca %struct.vfio_dma*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vfio_iommu_type1_dma_unmap, align 4
  store %struct.vfio_iommu* %0, %struct.vfio_iommu** %4, align 8
  store %struct.vfio_iommu_type1_dma_unmap* %1, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  store %struct.vfio_dma* null, %struct.vfio_dma** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %14 = call i32 @vfio_pgsize_bitmap(%struct.vfio_iommu* %13)
  %15 = call i32 @__ffs(i32 %14)
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %19 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %222

27:                                               ; preds = %2
  %28 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %29 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %34 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32, %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %222

42:                                               ; preds = %32
  %43 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %44 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %47 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %52 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %42
  %56 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %57 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SIZE_MAX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %42
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %222

64:                                               ; preds = %55
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @PAGE_MASK, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @WARN_ON(i32 %67)
  br label %69

69:                                               ; preds = %185, %64
  %70 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %71 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %70, i32 0, i32 0
  %72 = call i32 @mutex_lock(i32* %71)
  %73 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %74 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %131

77:                                               ; preds = %69
  %78 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %79 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %80 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu* %78, i32 %81, i32 1)
  store %struct.vfio_dma* %82, %struct.vfio_dma** %7, align 8
  %83 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %84 = icmp ne %struct.vfio_dma* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %87 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %90 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ne i64 %88, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %85
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  br label %213

97:                                               ; preds = %85, %77
  %98 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %99 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %100 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %103 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %101, %104
  %106 = sub nsw i32 %105, 1
  %107 = call %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu* %98, i32 %106, i32 0)
  store %struct.vfio_dma* %107, %struct.vfio_dma** %7, align 8
  %108 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %109 = icmp ne %struct.vfio_dma* %108, null
  br i1 %109, label %110, label %130

110:                                              ; preds = %97
  %111 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %112 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %115 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %119 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %122 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %120, %123
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %117, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %110
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %213

130:                                              ; preds = %110, %97
  br label %131

131:                                              ; preds = %130, %69
  br label %132

132:                                              ; preds = %203, %131
  %133 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %134 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %135 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %138 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu* %133, i32 %136, i32 %139)
  store %struct.vfio_dma* %140, %struct.vfio_dma** %7, align 8
  %141 = icmp ne %struct.vfio_dma* %140, null
  br i1 %141, label %142, label %212

142:                                              ; preds = %132
  %143 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %144 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %149 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %153 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp sgt i64 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %212

157:                                              ; preds = %147, %142
  %158 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %159 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %158, i32 0, i32 3
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %162, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %212

168:                                              ; preds = %157
  %169 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %170 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %169, i32 0, i32 2
  %171 = call i32 @RB_EMPTY_ROOT(i32* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %203, label %173

173:                                              ; preds = %168
  %174 = load %struct.vfio_dma*, %struct.vfio_dma** %8, align 8
  %175 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %176 = icmp eq %struct.vfio_dma* %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  %180 = icmp sgt i32 %179, 10
  %181 = zext i1 %180 to i32
  %182 = call i32 @BUG_ON(i32 %181)
  br label %185

183:                                              ; preds = %173
  %184 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  store %struct.vfio_dma* %184, %struct.vfio_dma** %8, align 8
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %183, %177
  %186 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %187 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %12, i32 0, i32 0
  store i32 %189, i32* %190, align 4
  %191 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %192 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %12, i32 0, i32 1
  store i32 %194, i32* %195, align 4
  %196 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %197 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %196, i32 0, i32 0
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %200 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %199, i32 0, i32 1
  %201 = load i32, i32* @VFIO_IOMMU_NOTIFY_DMA_UNMAP, align 4
  %202 = call i32 @blocking_notifier_call_chain(i32* %200, i32 %201, %struct.vfio_iommu_type1_dma_unmap* %12)
  br label %69

203:                                              ; preds = %168
  %204 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %205 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %9, align 8
  %208 = add i64 %207, %206
  store i64 %208, i64* %9, align 8
  %209 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %210 = load %struct.vfio_dma*, %struct.vfio_dma** %7, align 8
  %211 = call i32 @vfio_remove_dma(%struct.vfio_iommu* %209, %struct.vfio_dma* %210)
  br label %132

212:                                              ; preds = %167, %156, %132
  br label %213

213:                                              ; preds = %212, %127, %94
  %214 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %215 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %214, i32 0, i32 0
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i64, i64* %9, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.vfio_iommu_type1_dma_unmap*, %struct.vfio_iommu_type1_dma_unmap** %5, align 8
  %220 = getelementptr inbounds %struct.vfio_iommu_type1_dma_unmap, %struct.vfio_iommu_type1_dma_unmap* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %213, %61, %39, %24
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @vfio_pgsize_bitmap(%struct.vfio_iommu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vfio_dma* @vfio_find_dma(%struct.vfio_iommu*, i32, i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, %struct.vfio_iommu_type1_dma_unmap*) #1

declare dso_local i32 @vfio_remove_dma(%struct.vfio_iommu*, %struct.vfio_dma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
