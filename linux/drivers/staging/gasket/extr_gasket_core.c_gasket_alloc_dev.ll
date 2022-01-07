; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_internal_desc = type { i32, %struct.gasket_dev**, %struct.gasket_driver_desc* }
%struct.gasket_driver_desc = type { i8*, i64, i32, i32 }
%struct.device = type { i32 }
%struct.gasket_dev = type { i32, %struct.gasket_cdev_info, i32, i32, i32, %struct.gasket_internal_desc*, i32 }
%struct.gasket_cdev_info = type { %struct.gasket_dev*, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Allocating a Gasket device, parent %s.\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"no memory for device, parent %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GASKET_NAME_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_internal_desc*, %struct.device*, %struct.gasket_dev**)* @gasket_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_alloc_dev(%struct.gasket_internal_desc* %0, %struct.device* %1, %struct.gasket_dev** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_internal_desc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.gasket_dev**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gasket_driver_desc*, align 8
  %10 = alloca %struct.gasket_dev*, align 8
  %11 = alloca %struct.gasket_cdev_info*, align 8
  %12 = alloca i8*, align 8
  store %struct.gasket_internal_desc* %0, %struct.gasket_internal_desc** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store %struct.gasket_dev** %2, %struct.gasket_dev*** %7, align 8
  %13 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %14 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %13, i32 0, i32 2
  %15 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %14, align 8
  store %struct.gasket_driver_desc* %15, %struct.gasket_driver_desc** %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.gasket_dev**, %struct.gasket_dev*** %7, align 8
  store %struct.gasket_dev* null, %struct.gasket_dev** %20, align 8
  %21 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i32 @gasket_find_dev_slot(%struct.gasket_internal_desc* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %115

28:                                               ; preds = %3
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.gasket_dev* @kzalloc(i32 64, i32 %29)
  %31 = load %struct.gasket_dev**, %struct.gasket_dev*** %7, align 8
  store %struct.gasket_dev* %30, %struct.gasket_dev** %31, align 8
  store %struct.gasket_dev* %30, %struct.gasket_dev** %10, align 8
  %32 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %33 = icmp ne %struct.gasket_dev* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %12, align 8
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %115

39:                                               ; preds = %28
  %40 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %41 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %42 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %41, i32 0, i32 1
  %43 = load %struct.gasket_dev**, %struct.gasket_dev*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.gasket_dev*, %struct.gasket_dev** %43, i64 %45
  store %struct.gasket_dev* %40, %struct.gasket_dev** %46, align 8
  %47 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %48 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %47, i32 0, i32 6
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %51 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %52 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %51, i32 0, i32 5
  store %struct.gasket_internal_desc* %50, %struct.gasket_internal_desc** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %55 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %57 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GASKET_NAME_MAX, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %58, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = call i32 @get_device(%struct.device* %62)
  %64 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %65 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %9, align 8
  %67 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %70 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %72 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %71, i32 0, i32 1
  store %struct.gasket_cdev_info* %72, %struct.gasket_cdev_info** %11, align 8
  %73 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %11, align 8
  %74 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GASKET_NAME_MAX, align 4
  %77 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %9, align 8
  %78 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %81 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %75, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %82)
  %84 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %9, align 8
  %85 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %9, align 8
  %88 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %91 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %89, %93
  %95 = call i32 @MKDEV(i32 %86, i64 %94)
  %96 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %11, align 8
  %97 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.gasket_internal_desc*, %struct.gasket_internal_desc** %5, align 8
  %99 = getelementptr inbounds %struct.gasket_internal_desc, %struct.gasket_internal_desc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.device*, %struct.device** %6, align 8
  %102 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %11, align 8
  %103 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %106 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %11, align 8
  %107 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @device_create(i32 %100, %struct.device* %101, i32 %104, %struct.gasket_dev* %105, i32 %108)
  %110 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %11, align 8
  %111 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.gasket_dev*, %struct.gasket_dev** %10, align 8
  %113 = load %struct.gasket_cdev_info*, %struct.gasket_cdev_info** %11, align 8
  %114 = getelementptr inbounds %struct.gasket_cdev_info, %struct.gasket_cdev_info* %113, i32 0, i32 0
  store %struct.gasket_dev* %112, %struct.gasket_dev** %114, align 8
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %39, %34, %26
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local i32 @gasket_find_dev_slot(%struct.gasket_internal_desc*, i8*) #1

declare dso_local %struct.gasket_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @device_create(i32, %struct.device*, i32, %struct.gasket_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
