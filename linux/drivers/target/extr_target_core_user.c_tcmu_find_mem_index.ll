; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_find_mem_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_find_mem_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, %struct.tcmu_dev* }
%struct.tcmu_dev = type { %struct.uio_info }
%struct.uio_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_UIO_MAPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*)* @tcmu_find_mem_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmu_find_mem_index(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca %struct.tcmu_dev*, align 8
  %5 = alloca %struct.uio_info*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 1
  %8 = load %struct.tcmu_dev*, %struct.tcmu_dev** %7, align 8
  store %struct.tcmu_dev* %8, %struct.tcmu_dev** %4, align 8
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %4, align 8
  %10 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %9, i32 0, i32 0
  store %struct.uio_info* %10, %struct.uio_info** %5, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_UIO_MAPS, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %1
  %17 = load %struct.uio_info*, %struct.uio_info** %5, align 8
  %18 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %34

28:                                               ; preds = %16
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
