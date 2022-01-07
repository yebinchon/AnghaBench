; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_dma_do_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_dma_do_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vfio_iommu = type { i32, i32 }
%struct.vfio_iommu_type1_dma_map = type { i64, i64, i64, i32 }
%struct.vfio_dma = type { i64, i64, i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@VFIO_DMA_MAP_FLAG_WRITE = common dso_local global i32 0, align 4
@IOMMU_WRITE = common dso_local global i32 0, align 4
@VFIO_DMA_MAP_FLAG_READ = common dso_local global i32 0, align 4
@IOMMU_READ = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@CAP_IPC_LOCK = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_iommu*, %struct.vfio_iommu_type1_dma_map*)* @vfio_dma_do_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_dma_do_map(%struct.vfio_iommu* %0, %struct.vfio_iommu_type1_dma_map* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_iommu*, align 8
  %5 = alloca %struct.vfio_iommu_type1_dma_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vfio_dma*, align 8
  store %struct.vfio_iommu* %0, %struct.vfio_iommu** %4, align 8
  store %struct.vfio_iommu_type1_dma_map* %1, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %13 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %14 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %17 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %20 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %23 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %39, label %27

27:                                               ; preds = %2
  %28 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %29 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %35 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33, %27, %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %200

42:                                               ; preds = %33
  %43 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %44 = call i32 @vfio_pgsize_bitmap(%struct.vfio_iommu* %43)
  %45 = call i32 @__ffs(i32 %44)
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %53 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @VFIO_DMA_MAP_FLAG_WRITE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %42
  %59 = load i32, i32* @IOMMU_WRITE, align 4
  %60 = load i32, i32* %10, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %42
  %63 = load %struct.vfio_iommu_type1_dma_map*, %struct.vfio_iommu_type1_dma_map** %5, align 8
  %64 = getelementptr inbounds %struct.vfio_iommu_type1_dma_map, %struct.vfio_iommu_type1_dma_map* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @VFIO_DMA_MAP_FLAG_READ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @IOMMU_READ, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* %6, align 8
  %82 = or i64 %80, %81
  %83 = load i64, i64* %7, align 8
  %84 = or i64 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = and i64 %84, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %79, %76, %73
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %200

92:                                               ; preds = %79
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %93, %94
  %96 = sub i64 %95, 1
  %97 = load i64, i64* %6, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %100, %101
  %103 = sub i64 %102, 1
  %104 = load i64, i64* %7, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99, %92
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %200

109:                                              ; preds = %99
  %110 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %111 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %110, i32 0, i32 0
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i64 @vfio_find_dma(%struct.vfio_iommu* %113, i64 %114, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load i32, i32* @EEXIST, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %195

121:                                              ; preds = %109
  %122 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %123 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @ENOSPC, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %9, align 4
  br label %195

129:                                              ; preds = %121
  %130 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %8, align 8
  %134 = add i64 %132, %133
  %135 = sub i64 %134, 1
  %136 = call i32 @vfio_iommu_iova_dma_valid(%struct.vfio_iommu* %130, i64 %131, i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %129
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %195

141:                                              ; preds = %129
  %142 = load i32, i32* @GFP_KERNEL, align 4
  %143 = call %struct.vfio_dma* @kzalloc(i32 48, i32 %142)
  store %struct.vfio_dma* %143, %struct.vfio_dma** %12, align 8
  %144 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %145 = icmp ne %struct.vfio_dma* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %9, align 4
  br label %195

149:                                              ; preds = %141
  %150 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %151 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %151, align 4
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %156 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %159 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %162 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @get_task_struct(i32 %165)
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %171 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @CAP_IPC_LOCK, align 4
  %173 = call i32 @capable(i32 %172)
  %174 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %175 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @RB_ROOT, align 4
  %177 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %178 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %180 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %181 = call i32 @vfio_link_dma(%struct.vfio_iommu* %179, %struct.vfio_dma* %180)
  %182 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %183 = call i32 @IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(%struct.vfio_iommu* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %149
  %186 = load i64, i64* %8, align 8
  %187 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %188 = getelementptr inbounds %struct.vfio_dma, %struct.vfio_dma* %187, i32 0, i32 3
  store i64 %186, i64* %188, align 8
  br label %194

189:                                              ; preds = %149
  %190 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %191 = load %struct.vfio_dma*, %struct.vfio_dma** %12, align 8
  %192 = load i64, i64* %8, align 8
  %193 = call i32 @vfio_pin_map_dma(%struct.vfio_iommu* %190, %struct.vfio_dma* %191, i64 %192)
  store i32 %193, i32* %9, align 4
  br label %194

194:                                              ; preds = %189, %185
  br label %195

195:                                              ; preds = %194, %146, %138, %126, %118
  %196 = load %struct.vfio_iommu*, %struct.vfio_iommu** %4, align 8
  %197 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %196, i32 0, i32 0
  %198 = call i32 @mutex_unlock(i32* %197)
  %199 = load i32, i32* %9, align 4
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %195, %106, %89, %39
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @vfio_pgsize_bitmap(%struct.vfio_iommu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vfio_find_dma(%struct.vfio_iommu*, i64, i64) #1

declare dso_local i32 @vfio_iommu_iova_dma_valid(%struct.vfio_iommu*, i64, i64) #1

declare dso_local %struct.vfio_dma* @kzalloc(i32, i32) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @vfio_link_dma(%struct.vfio_iommu*, %struct.vfio_dma*) #1

declare dso_local i32 @IS_IOMMU_CAP_DOMAIN_IN_CONTAINER(%struct.vfio_iommu*) #1

declare dso_local i32 @vfio_pin_map_dma(%struct.vfio_iommu*, %struct.vfio_dma*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
