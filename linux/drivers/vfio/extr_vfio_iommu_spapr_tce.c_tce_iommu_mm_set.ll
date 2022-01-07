; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_mm_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_spapr_tce.c_tce_iommu_mm_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tce_container = type { %struct.TYPE_3__* }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@EPERM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tce_container*)* @tce_iommu_mm_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tce_iommu_mm_set(%struct.tce_container* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tce_container*, align 8
  store %struct.tce_container* %0, %struct.tce_container** %3, align 8
  %4 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %5 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %10 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp eq %struct.TYPE_3__* %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i64 0, i64* %2, align 8
  br label %38

17:                                               ; preds = %8
  %18 = load i64, i64* @EPERM, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %2, align 8
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %32 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %31, i32 0, i32 0
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %32, align 8
  %33 = load %struct.tce_container*, %struct.tce_container** %3, align 8
  %34 = getelementptr inbounds %struct.tce_container, %struct.tce_container* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  store i64 0, i64* %2, align 8
  br label %38

38:                                               ; preds = %20, %17, %16
  %39 = load i64, i64* %2, align 8
  ret i64 %39
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
