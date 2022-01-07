; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c___gasket_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c___gasket_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gasket_internal_desc = type { i32, %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i32 }
%struct.gasket_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Cannot create %s device %s [ret = %ld]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@gasket_sysfs_generic_attrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.gasket_internal_desc*, %struct.gasket_dev**)* @__gasket_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gasket_add_device(%struct.device* %0, %struct.gasket_internal_desc* %1, %struct.gasket_dev** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gasket_internal_desc*, align 8
  %7 = alloca %struct.gasket_dev**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gasket_dev*, align 8
  %10 = alloca %struct.gasket_driver_desc*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.gasket_internal_desc* %1, %struct.gasket_internal_desc** %6, align 8
  store %struct.gasket_dev** %2, %struct.gasket_dev*** %7, align 8
  %11 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %6, align 8
  %12 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %11, i32 0, i32 1
  %13 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %12, align 8
  store %struct.gasket_driver_desc* %13, %struct.gasket_driver_desc** %10, align 8
  %14 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %6, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @gasket_alloc_dev(%struct.gasket_internal_desc* %14, %struct.device* %15, %struct.gasket_dev** %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %87

21:                                               ; preds = %3
  %22 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %23 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %21
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %10, align 8
  %31 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %34 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %38 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  %42 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %41)
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %83

45:                                               ; preds = %21
  %46 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %47 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %51 = call i32 @gasket_sysfs_create_mapping(i32 %49, %struct.gasket_dev* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %74

55:                                               ; preds = %45
  %56 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %57 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @gasket_sysfs_generic_attrs, align 4
  %61 = call i32 @gasket_sysfs_create_entries(i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %68

65:                                               ; preds = %55
  %66 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %67 = load %struct.gasket_dev**, %struct.gasket_dev*** %7, align 8
  store %struct.gasket_dev* %66, %struct.gasket_dev** %67, align 8
  store i32 0, i32* %4, align 4
  br label %87

68:                                               ; preds = %64
  %69 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %70 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @gasket_sysfs_remove_mapping(i32 %72)
  br label %74

74:                                               ; preds = %68, %54
  %75 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %6, align 8
  %76 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %79 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_destroy(i32 %77, i32 %81)
  br label %83

83:                                               ; preds = %74, %28
  %84 = load %struct.gasket_dev*, %struct.gasket_dev** %9, align 8
  %85 = call i32 @gasket_free_dev(%struct.gasket_dev* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %65, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @gasket_alloc_dev(%struct.gasket_internal_desc*, %struct.device*, %struct.gasket_dev**) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gasket_sysfs_create_mapping(i32, %struct.gasket_dev*) #1

declare dso_local i32 @gasket_sysfs_create_entries(i32, i32) #1

declare dso_local i32 @gasket_sysfs_remove_mapping(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @gasket_free_dev(%struct.gasket_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
