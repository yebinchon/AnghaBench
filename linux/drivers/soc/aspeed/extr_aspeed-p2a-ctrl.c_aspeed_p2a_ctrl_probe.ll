; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_ctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_ctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aspeed_p2a_ctrl = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.device*, i32*, i32, i32 }
%struct.resource = type { i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@aspeed_p2a_ctrl_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_p2a_ctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_p2a_ctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aspeed_p2a_ctrl*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.aspeed_p2a_ctrl* @devm_kzalloc(%struct.device* %11, i32 48, i32 %12)
  store %struct.aspeed_p2a_ctrl* %13, %struct.aspeed_p2a_ctrl** %4, align 8
  %14 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %15 = icmp ne %struct.aspeed_p2a_ctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %21 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %20, i32 0, i32 5
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.device_node* @of_parse_phandle(i32 %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %26, %struct.device_node** %7, align 8
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %19
  %30 = load %struct.device_node*, %struct.device_node** %7, align 8
  %31 = call i32 @of_address_to_resource(%struct.device_node* %30, i32 0, %struct.resource* %6)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %105

41:                                               ; preds = %29
  %42 = call i32 @resource_size(%struct.resource* %6)
  %43 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %44 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %48 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %41, %19
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @syscon_node_to_regmap(i32 %55)
  %57 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %58 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %60 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ERR(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %105

69:                                               ; preds = %49
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @of_device_get_match_data(%struct.device* %70)
  %72 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %73 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %77 = call i32 @dev_set_drvdata(%struct.device* %75, %struct.aspeed_p2a_ctrl* %76)
  %78 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %79 = call i32 @aspeed_p2a_disable_all(%struct.aspeed_p2a_ctrl* %78)
  %80 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %81 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %82 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @DEVICE_NAME, align 4
  %85 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %86 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %89 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32* @aspeed_p2a_ctrl_fops, i32** %90, align 8
  %91 = load %struct.device*, %struct.device** %5, align 8
  %92 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %93 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store %struct.device* %91, %struct.device** %94, align 8
  %95 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %4, align 8
  %96 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %95, i32 0, i32 0
  %97 = call i32 @misc_register(%struct.TYPE_4__* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %69
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = call i32 @dev_err(%struct.device* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %69
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %64, %36, %16
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.aspeed_p2a_ctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.aspeed_p2a_ctrl*) #1

declare dso_local i32 @aspeed_p2a_disable_all(%struct.aspeed_p2a_ctrl*) #1

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
