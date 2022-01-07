; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-ctrl.c_aspeed_lpc_ctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-lpc-ctrl.c_aspeed_lpc_ctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.aspeed_lpc_ctrl = type { i32, %struct.TYPE_4__, i32, i32, i8*, i32, i8* }
%struct.TYPE_4__ = type { %struct.device*, i32*, i32, i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Didn't find host pnor flash node\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Couldn't address to resource for flash\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Didn't find reserved memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Couldn't get regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"couldn't enable clock\0A\00", align 1
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@aspeed_lpc_ctrl_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Unable to register device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @aspeed_lpc_ctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_lpc_ctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.aspeed_lpc_ctrl*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.resource, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %7, align 8
  %11 = load %struct.device*, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.aspeed_lpc_ctrl* @devm_kzalloc(%struct.device* %11, i32 64, i32 %12)
  store %struct.aspeed_lpc_ctrl* %13, %struct.aspeed_lpc_ctrl** %4, align 8
  %14 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %15 = icmp ne %struct.aspeed_lpc_ctrl* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %161

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %7, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.device_node* @of_parse_phandle(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %23, %struct.device_node** %5, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = call i32 @dev_dbg(%struct.device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %48

29:                                               ; preds = %19
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call i32 @of_address_to_resource(%struct.device_node* %30, i32 1, %struct.resource* %6)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %7, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %161

40:                                               ; preds = %29
  %41 = call i8* @resource_size(%struct.resource* %6)
  %42 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %42, i32 0, i32 6
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %47 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %40, %26
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %52 = call i32 @dev_set_drvdata(%struct.device* %50, %struct.aspeed_lpc_ctrl* %51)
  %53 = load %struct.device*, %struct.device** %7, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.device_node* @of_parse_phandle(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %56, %struct.device_node** %5, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = icmp ne %struct.device_node* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %82

62:                                               ; preds = %48
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i32 @of_address_to_resource(%struct.device_node* %63, i32 0, %struct.resource* %6)
  store i32 %64, i32* %8, align 4
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %161

74:                                               ; preds = %62
  %75 = call i8* @resource_size(%struct.resource* %6)
  %76 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %77 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %81 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %59
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.device, %struct.device* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @syscon_node_to_regmap(i32 %88)
  %90 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %91 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %93 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @IS_ERR(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %82
  %98 = load %struct.device*, %struct.device** %7, align 8
  %99 = call i32 @dev_err(%struct.device* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %161

102:                                              ; preds = %82
  %103 = load %struct.device*, %struct.device** %7, align 8
  %104 = call i32 @devm_clk_get(%struct.device* %103, i32* null)
  %105 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %106 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %108 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @IS_ERR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %115 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %116 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @PTR_ERR(i32 %117)
  store i32 %118, i32* %2, align 4
  br label %161

119:                                              ; preds = %102
  %120 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %121 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @clk_prepare_enable(i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.device*, %struct.device** %7, align 8
  %128 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %161

130:                                              ; preds = %119
  %131 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %132 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %133 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @DEVICE_NAME, align 4
  %136 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %137 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  %139 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %140 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32* @aspeed_lpc_ctrl_fops, i32** %141, align 8
  %142 = load %struct.device*, %struct.device** %7, align 8
  %143 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %144 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store %struct.device* %142, %struct.device** %145, align 8
  %146 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %147 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %146, i32 0, i32 1
  %148 = call i32 @misc_register(%struct.TYPE_4__* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %130
  %152 = load %struct.device*, %struct.device** %7, align 8
  %153 = call i32 @dev_err(%struct.device* %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %155

154:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %161

155:                                              ; preds = %151
  %156 = load %struct.aspeed_lpc_ctrl*, %struct.aspeed_lpc_ctrl** %4, align 8
  %157 = getelementptr inbounds %struct.aspeed_lpc_ctrl, %struct.aspeed_lpc_ctrl* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @clk_disable_unprepare(i32 %158)
  %160 = load i32, i32* %8, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %155, %154, %126, %112, %97, %69, %36, %16
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local %struct.aspeed_lpc_ctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.aspeed_lpc_ctrl*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
