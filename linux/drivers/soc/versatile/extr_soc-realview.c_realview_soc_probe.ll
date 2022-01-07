; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/versatile/extr_soc-realview.c_realview_soc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/versatile/extr_soc-realview.c_realview_soc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type opaque
%struct.soc_device = type { i32 }
%struct.soc_device_attribute = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"RealView\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Versatile\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@REALVIEW_SYS_ID_OFFSET = common dso_local global i32 0, align 4
@realview_coreid = common dso_local global i32 0, align 4
@realview_manf_attr = common dso_local global i32 0, align 4
@realview_board_attr = common dso_local global i32 0, align 4
@realview_arch_attr = common dso_local global i32 0, align 4
@realview_build_attr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"RealView Syscon Core ID: 0x%08x, HBI-%03x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @realview_soc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realview_soc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.soc_device*, align 8
  %6 = alloca %struct.soc_device_attribute*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = call %struct.soc_device* @syscon_regmap_lookup_by_phandle(%struct.device_node* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = bitcast %struct.soc_device* %14 to %struct.regmap*
  store %struct.regmap* %15, %struct.regmap** %4, align 8
  %16 = load %struct.regmap*, %struct.regmap** %4, align 8
  %17 = bitcast %struct.regmap* %16 to %struct.soc_device*
  %18 = call i64 @IS_ERR(%struct.soc_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = bitcast %struct.regmap* %21 to %struct.soc_device*
  %23 = call i32 @PTR_ERR(%struct.soc_device* %22)
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.soc_device_attribute* @kzalloc(i32 24, i32 %25)
  store %struct.soc_device_attribute* %26, %struct.soc_device_attribute** %6, align 8
  %27 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %28 = icmp ne %struct.soc_device_attribute* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %87

32:                                               ; preds = %24
  %33 = load %struct.device_node*, %struct.device_node** %7, align 8
  %34 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %35 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %34, i32 0, i32 2
  %36 = call i32 @of_property_read_string(%struct.device_node* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %32
  %43 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %44 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %43, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %44, align 8
  %45 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %46 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %45, i32 0, i32 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %46, align 8
  %47 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %48 = call %struct.soc_device* @soc_device_register(%struct.soc_device_attribute* %47)
  store %struct.soc_device* %48, %struct.soc_device** %5, align 8
  %49 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %50 = call i64 @IS_ERR(%struct.soc_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %6, align 8
  %54 = call i32 @kfree(%struct.soc_device_attribute* %53)
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %87

57:                                               ; preds = %42
  %58 = load %struct.regmap*, %struct.regmap** %4, align 8
  %59 = bitcast %struct.regmap* %58 to %struct.soc_device*
  %60 = load i32, i32* @REALVIEW_SYS_ID_OFFSET, align 4
  %61 = call i32 @regmap_read(%struct.soc_device* %59, i32 %60, i32* @realview_coreid)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %87

67:                                               ; preds = %57
  %68 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %69 = call i32 @soc_device_to_device(%struct.soc_device* %68)
  %70 = call i32 @device_create_file(i32 %69, i32* @realview_manf_attr)
  %71 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %72 = call i32 @soc_device_to_device(%struct.soc_device* %71)
  %73 = call i32 @device_create_file(i32 %72, i32* @realview_board_attr)
  %74 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %75 = call i32 @soc_device_to_device(%struct.soc_device* %74)
  %76 = call i32 @device_create_file(i32 %75, i32* @realview_arch_attr)
  %77 = load %struct.soc_device*, %struct.soc_device** %5, align 8
  %78 = call i32 @soc_device_to_device(%struct.soc_device* %77)
  %79 = call i32 @device_create_file(i32 %78, i32* @realview_build_attr)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* @realview_coreid, align 4
  %83 = load i32, i32* @realview_coreid, align 4
  %84 = ashr i32 %83, 16
  %85 = and i32 %84, 4095
  %86 = call i32 @dev_info(%struct.TYPE_2__* %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %67, %64, %52, %39, %29, %20
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.soc_device* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.soc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.soc_device*) #1

declare dso_local %struct.soc_device_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.soc_device* @soc_device_register(%struct.soc_device_attribute*) #1

declare dso_local i32 @kfree(%struct.soc_device_attribute*) #1

declare dso_local i32 @regmap_read(%struct.soc_device*, i32, i32*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @soc_device_to_device(%struct.soc_device*) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
