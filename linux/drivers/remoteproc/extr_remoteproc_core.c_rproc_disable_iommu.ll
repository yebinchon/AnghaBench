; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_disable_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_disable_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.TYPE_2__, %struct.iommu_domain* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.iommu_domain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rproc*)* @rproc_disable_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rproc_disable_iommu(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.iommu_domain*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %5 = load %struct.rproc*, %struct.rproc** %2, align 8
  %6 = getelementptr inbounds %struct.rproc, %struct.rproc* %5, i32 0, i32 1
  %7 = load %struct.iommu_domain*, %struct.iommu_domain** %6, align 8
  store %struct.iommu_domain* %7, %struct.iommu_domain** %3, align 8
  %8 = load %struct.rproc*, %struct.rproc** %2, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %13 = icmp ne %struct.iommu_domain* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @iommu_detach_device(%struct.iommu_domain* %16, %struct.device* %17)
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %3, align 8
  %20 = call i32 @iommu_domain_free(%struct.iommu_domain* %19)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @iommu_detach_device(%struct.iommu_domain*, %struct.device*) #1

declare dso_local i32 @iommu_domain_free(%struct.iommu_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
