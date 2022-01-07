; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-dmamap.c_imgu_dmamap_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-dmamap.c_imgu_dmamap_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_device = type { i32, i32 }
%struct.imgu_css_map = type { i32 }
%struct.iova = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imgu_dmamap_unmap(%struct.imgu_device* %0, %struct.imgu_css_map* %1) #0 {
  %3 = alloca %struct.imgu_device*, align 8
  %4 = alloca %struct.imgu_css_map*, align 8
  %5 = alloca %struct.iova*, align 8
  store %struct.imgu_device* %0, %struct.imgu_device** %3, align 8
  store %struct.imgu_css_map* %1, %struct.imgu_css_map** %4, align 8
  %6 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %7 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %6, i32 0, i32 0
  %8 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %9 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %8, i32 0, i32 0
  %10 = load %struct.imgu_css_map*, %struct.imgu_css_map** %4, align 8
  %11 = getelementptr inbounds %struct.imgu_css_map, %struct.imgu_css_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iova_pfn(i32* %9, i32 %12)
  %14 = call %struct.iova* @find_iova(i32* %7, i32 %13)
  store %struct.iova* %14, %struct.iova** %5, align 8
  %15 = load %struct.iova*, %struct.iova** %5, align 8
  %16 = icmp ne %struct.iova* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %24 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %27 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %26, i32 0, i32 0
  %28 = load %struct.iova*, %struct.iova** %5, align 8
  %29 = call i32 @iova_dma_addr(i32* %27, %struct.iova* %28)
  %30 = load %struct.iova*, %struct.iova** %5, align 8
  %31 = call i32 @iova_size(%struct.iova* %30)
  %32 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %33 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %32, i32 0, i32 0
  %34 = call i32 @iova_shift(i32* %33)
  %35 = shl i32 %31, %34
  %36 = call i32 @imgu_mmu_unmap(i32 %25, i32 %29, i32 %35)
  %37 = load %struct.imgu_device*, %struct.imgu_device** %3, align 8
  %38 = getelementptr inbounds %struct.imgu_device, %struct.imgu_device* %37, i32 0, i32 0
  %39 = load %struct.iova*, %struct.iova** %5, align 8
  %40 = call i32 @__free_iova(i32* %38, %struct.iova* %39)
  br label %41

41:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.iova* @find_iova(i32*, i32) #1

declare dso_local i32 @iova_pfn(i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @imgu_mmu_unmap(i32, i32, i32) #1

declare dso_local i32 @iova_dma_addr(i32*, %struct.iova*) #1

declare dso_local i32 @iova_size(%struct.iova*) #1

declare dso_local i32 @iova_shift(i32*) #1

declare dso_local i32 @__free_iova(i32*, %struct.iova*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
