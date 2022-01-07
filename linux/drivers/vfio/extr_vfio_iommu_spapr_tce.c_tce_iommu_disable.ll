; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tce_container = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tce_container*)* @tce_iommu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tce_iommu_disable(%struct.tce_container* %0) #0 {
  %2 = alloca %struct.tce_container*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %2, align 8
  %3 = load %struct.tce_container*, %struct.tce_container** %2, align 8
  %4 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %25

8:                                                ; preds = %1
  %9 = load %struct.tce_container*, %struct.tce_container** %2, align 8
  %10 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = load %struct.tce_container*, %struct.tce_container** %2, align 8
  %12 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.tce_container*, %struct.tce_container** %2, align 8
  %19 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tce_container*, %struct.tce_container** %2, align 8
  %22 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @account_locked_vm(i32 %20, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @account_locked_vm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
