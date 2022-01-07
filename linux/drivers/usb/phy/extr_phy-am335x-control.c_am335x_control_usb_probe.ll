; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-am335x-control.c_am335x_control_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-am335x-control.c_am335x_control_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }
%struct.am335x_control_usb = type { %struct.TYPE_4__*, %struct.phy_control, i32, i8*, i8* }
%struct.phy_control = type { i32 }
%struct.of_device_id = type { %struct.phy_control* }

@omap_control_usb_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"phy_ctrl\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @am335x_control_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_control_usb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.am335x_control_usb*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.phy_control*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @omap_control_usb_id_table, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.of_device_id* @of_match_node(i32 %8, i32 %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %6, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %21 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %20, i32 0, i32 0
  %22 = load %struct.phy_control*, %struct.phy_control** %21, align 8
  store %struct.phy_control* %22, %struct.phy_control** %7, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.am335x_control_usb* @devm_kzalloc(%struct.TYPE_4__* %24, i32 32, i32 %25)
  store %struct.am335x_control_usb* %26, %struct.am335x_control_usb** %5, align 8
  %27 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %28 = icmp ne %struct.am335x_control_usb* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %90

32:                                               ; preds = %19
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %36 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %35, i32 0, i32 0
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %39, %struct.resource** %4, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %4, align 8
  %43 = call i8* @devm_ioremap_resource(%struct.TYPE_4__* %41, %struct.resource* %42)
  %44 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %45 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %47 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %32
  %52 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %53 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %2, align 4
  br label %90

56:                                               ; preds = %32
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %57, i32 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %59, %struct.resource** %4, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.resource*, %struct.resource** %4, align 8
  %63 = call i8* @devm_ioremap_resource(%struct.TYPE_4__* %61, %struct.resource* %62)
  %64 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %65 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %67 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %73 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %90

76:                                               ; preds = %56
  %77 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %78 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %77, i32 0, i32 2
  %79 = call i32 @spin_lock_init(i32* %78)
  %80 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %81 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %80, i32 0, i32 1
  %82 = load %struct.phy_control*, %struct.phy_control** %7, align 8
  %83 = bitcast %struct.phy_control* %81 to i8*
  %84 = bitcast %struct.phy_control* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 4 %84, i64 4, i1 false)
  %85 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %86 = getelementptr inbounds %struct.am335x_control_usb, %struct.am335x_control_usb* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load %struct.am335x_control_usb*, %struct.am335x_control_usb** %5, align 8
  %89 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %87, %struct.am335x_control_usb* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %76, %71, %51, %29, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.am335x_control_usb* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_4__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.am335x_control_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
