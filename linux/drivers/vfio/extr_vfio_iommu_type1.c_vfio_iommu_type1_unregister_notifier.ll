; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_type1_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_type1_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.vfio_iommu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.notifier_block*)* @vfio_iommu_type1_unregister_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_iommu_type1_unregister_notifier(i8* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca %struct.vfio_iommu*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.vfio_iommu*
  store %struct.vfio_iommu* %7, %struct.vfio_iommu** %5, align 8
  %8 = load %struct.vfio_iommu*, %struct.vfio_iommu** %5, align 8
  %9 = getelementptr inbounds %struct.vfio_iommu, %struct.vfio_iommu* %8, i32 0, i32 0
  %10 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %11 = call i32 @blocking_notifier_chain_unregister(i32* %9, %struct.notifier_block* %10)
  ret i32 %11
}

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
