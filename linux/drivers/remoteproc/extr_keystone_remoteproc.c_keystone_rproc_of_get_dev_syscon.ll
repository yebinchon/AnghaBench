; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_of_get_dev_syscon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_of_get_dev_syscon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.keystone_rproc = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ti,syscon-dev\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ti,syscon-dev property is absent\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"couldn't read the boot register offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.keystone_rproc*)* @keystone_rproc_of_get_dev_syscon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_rproc_of_get_dev_syscon(%struct.platform_device* %0, %struct.keystone_rproc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.keystone_rproc*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.keystone_rproc* %1, %struct.keystone_rproc** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_property_read_bool(%struct.device_node* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i32 @syscon_regmap_lookup_by_phandle(%struct.device_node* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  %27 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  %29 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  %35 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PTR_ERR(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.device_node*, %struct.device_node** %6, align 8
  %41 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  %42 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %41, i32 0, i32 0
  %43 = call i64 @of_property_read_u32_index(%struct.device_node* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %33, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
