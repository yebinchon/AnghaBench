; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_fill_devs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/pci/extr_vfio_pci.c_vfio_pci_fill_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vfio_pci_fill_info = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.iommu_group = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i8*)* @vfio_pci_fill_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_pci_fill_devs(%struct.pci_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vfio_pci_fill_info*, align 8
  %7 = alloca %struct.iommu_group*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.vfio_pci_fill_info*
  store %struct.vfio_pci_fill_info* %9, %struct.vfio_pci_fill_info** %6, align 8
  %10 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %11 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %14 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %82

20:                                               ; preds = %2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 2
  %23 = call %struct.iommu_group* @iommu_group_get(i32* %22)
  store %struct.iommu_group* %23, %struct.iommu_group** %7, align 8
  %24 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %25 = icmp ne %struct.iommu_group* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %82

29:                                               ; preds = %20
  %30 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %31 = call i32 @iommu_group_id(%struct.iommu_group* %30)
  %32 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %33 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %36 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i32 %31, i32* %39, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @pci_domain_nr(%struct.TYPE_4__* %42)
  %44 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %45 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %48 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %43, i32* %51, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %58 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %61 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 %56, i32* %64, align 4
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %69 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %68, i32 0, i32 2
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %72 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %67, i32* %75, align 4
  %76 = load %struct.vfio_pci_fill_info*, %struct.vfio_pci_fill_info** %6, align 8
  %77 = getelementptr inbounds %struct.vfio_pci_fill_info, %struct.vfio_pci_fill_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.iommu_group*, %struct.iommu_group** %7, align 8
  %81 = call i32 @iommu_group_put(%struct.iommu_group* %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %29, %26, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.iommu_group* @iommu_group_get(i32*) #1

declare dso_local i32 @iommu_group_id(%struct.iommu_group*) #1

declare dso_local i32 @pci_domain_nr(%struct.TYPE_4__*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
