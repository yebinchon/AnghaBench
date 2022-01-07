; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_nvmem-sysfs.c_nvmem_sysfs_get_groups.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_nvmem-sysfs.c_nvmem_sysfs_get_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { i32 }
%struct.nvmem_device = type { i64 }
%struct.nvmem_config = type { i64 }

@nvmem_ro_root_dev_groups = common dso_local global %struct.attribute_group** null, align 8
@nvmem_rw_root_dev_groups = common dso_local global %struct.attribute_group** null, align 8
@nvmem_ro_dev_groups = common dso_local global %struct.attribute_group** null, align 8
@nvmem_rw_dev_groups = common dso_local global %struct.attribute_group** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.attribute_group** @nvmem_sysfs_get_groups(%struct.nvmem_device* %0, %struct.nvmem_config* %1) #0 {
  %3 = alloca %struct.attribute_group**, align 8
  %4 = alloca %struct.nvmem_device*, align 8
  %5 = alloca %struct.nvmem_config*, align 8
  store %struct.nvmem_device* %0, %struct.nvmem_device** %4, align 8
  store %struct.nvmem_config* %1, %struct.nvmem_config** %5, align 8
  %6 = load %struct.nvmem_config*, %struct.nvmem_config** %5, align 8
  %7 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %12 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.attribute_group**, %struct.attribute_group*** @nvmem_ro_root_dev_groups, align 8
  br label %19

17:                                               ; preds = %10
  %18 = load %struct.attribute_group**, %struct.attribute_group*** @nvmem_rw_root_dev_groups, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi %struct.attribute_group** [ %16, %15 ], [ %18, %17 ]
  store %struct.attribute_group** %20, %struct.attribute_group*** %3, align 8
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.nvmem_device*, %struct.nvmem_device** %4, align 8
  %23 = getelementptr inbounds %struct.nvmem_device, %struct.nvmem_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.attribute_group**, %struct.attribute_group*** @nvmem_ro_dev_groups, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load %struct.attribute_group**, %struct.attribute_group*** @nvmem_rw_dev_groups, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi %struct.attribute_group** [ %27, %26 ], [ %29, %28 ]
  store %struct.attribute_group** %31, %struct.attribute_group*** %3, align 8
  br label %32

32:                                               ; preds = %30, %19
  %33 = load %struct.attribute_group**, %struct.attribute_group*** %3, align 8
  ret %struct.attribute_group** %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
