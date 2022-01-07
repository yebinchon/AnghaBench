; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c___vfio_group_unset_container.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c___vfio_group_unset_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i32, i32, %struct.vfio_container*, i32 }
%struct.vfio_container = type { i32, i32*, %struct.vfio_iommu_driver*, i32 }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32*)*, i32 (i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_group*)* @__vfio_group_unset_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vfio_group_unset_container(%struct.vfio_group* %0) #0 {
  %2 = alloca %struct.vfio_group*, align 8
  %3 = alloca %struct.vfio_container*, align 8
  %4 = alloca %struct.vfio_iommu_driver*, align 8
  store %struct.vfio_group* %0, %struct.vfio_group** %2, align 8
  %5 = load %struct.vfio_group*, %struct.vfio_group** %2, align 8
  %6 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %5, i32 0, i32 2
  %7 = load %struct.vfio_container*, %struct.vfio_container** %6, align 8
  store %struct.vfio_container* %7, %struct.vfio_container** %3, align 8
  %8 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %9 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %8, i32 0, i32 0
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %12 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %11, i32 0, i32 2
  %13 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %12, align 8
  store %struct.vfio_iommu_driver* %13, %struct.vfio_iommu_driver** %4, align 8
  %14 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %4, align 8
  %15 = icmp ne %struct.vfio_iommu_driver* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %4, align 8
  %18 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32 (i32*, i32)*, i32 (i32*, i32)** %20, align 8
  %22 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %23 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.vfio_group*, %struct.vfio_group** %2, align 8
  %26 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %21(i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %16, %1
  %30 = load %struct.vfio_group*, %struct.vfio_group** %2, align 8
  %31 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %30, i32 0, i32 2
  store %struct.vfio_container* null, %struct.vfio_container** %31, align 8
  %32 = load %struct.vfio_group*, %struct.vfio_group** %2, align 8
  %33 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %32, i32 0, i32 1
  %34 = call i32 @wake_up(i32* %33)
  %35 = load %struct.vfio_group*, %struct.vfio_group** %2, align 8
  %36 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %35, i32 0, i32 0
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %4, align 8
  %39 = icmp ne %struct.vfio_iommu_driver* %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %29
  %41 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %42 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %41, i32 0, i32 3
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %4, align 8
  %47 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (i32*)*, i32 (i32*)** %49, align 8
  %51 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %52 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 %50(i32* %53)
  %55 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %4, align 8
  %56 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @module_put(i32 %59)
  %61 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %62 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %61, i32 0, i32 2
  store %struct.vfio_iommu_driver* null, %struct.vfio_iommu_driver** %62, align 8
  %63 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %64 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %45, %40, %29
  %66 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %67 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %66, i32 0, i32 0
  %68 = call i32 @up_write(i32* %67)
  %69 = load %struct.vfio_container*, %struct.vfio_container** %3, align 8
  %70 = call i32 @vfio_container_put(%struct.vfio_container* %69)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @vfio_container_put(%struct.vfio_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
