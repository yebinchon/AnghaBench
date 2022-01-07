; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/ti/extr_pinctrl-ti-iodelay.c_ti_iodelay_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.resource = type { i32 }
%struct.ti_iodelay_device = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"No OF node\0A\00", align 1
@ti_iodelay_of_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"No DATA match\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Missing MEM resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Regmap MMIO init failed.\0A\00", align 1
@ti_iodelay_pinctrl_ops = common dso_local global i32 0, align 4
@ti_iodelay_pinctrl_pinconf_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_iodelay_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_iodelay_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.ti_iodelay_device*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.device_node* @of_node_get(i32 %14)
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = icmp ne %struct.device_node* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %159

23:                                               ; preds = %1
  %24 = load i32, i32* @ti_iodelay_of_match, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call %struct.of_device_id* @of_match_device(i32 %24, %struct.device* %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %6, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %159

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ti_iodelay_device* @devm_kzalloc(%struct.device* %35, i32 64, i32 %36)
  store %struct.ti_iodelay_device* %37, %struct.ti_iodelay_device** %8, align 8
  %38 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %39 = icmp ne %struct.ti_iodelay_device* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %159

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %46 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %45, i32 0, i32 6
  store %struct.device* %44, %struct.device** %46, align 8
  %47 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %48 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %51 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %50, i32 0, i32 3
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* @IORESOURCE_MEM, align 4
  %54 = call %struct.resource* @platform_get_resource(%struct.platform_device* %52, i32 %53, i32 0)
  store %struct.resource* %54, %struct.resource** %7, align 8
  %55 = load %struct.resource*, %struct.resource** %7, align 8
  %56 = icmp ne %struct.resource* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %43
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  br label %159

62:                                               ; preds = %43
  %63 = load %struct.resource*, %struct.resource** %7, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %67 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.resource*, %struct.resource** %7, align 8
  %70 = call i32 @devm_ioremap_resource(%struct.device* %68, %struct.resource* %69)
  %71 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %72 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %74 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %62
  %79 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %80 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %9, align 4
  br label %159

83:                                               ; preds = %62
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %86 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %89 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @devm_regmap_init_mmio(%struct.device* %84, i32 %87, i32 %92)
  %94 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %95 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %97 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @IS_ERR(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %83
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %105 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @PTR_ERR(i32 %106)
  store i32 %107, i32* %9, align 4
  br label %159

108:                                              ; preds = %83
  %109 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %110 = call i64 @ti_iodelay_pinconf_init_dev(%struct.ti_iodelay_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %159

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %116 = load %struct.resource*, %struct.resource** %7, align 8
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ti_iodelay_alloc_pins(%struct.device* %114, %struct.ti_iodelay_device* %115, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %113
  br label %159

123:                                              ; preds = %113
  %124 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %125 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i32* @ti_iodelay_pinctrl_ops, i32** %126, align 8
  %127 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %128 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32* @ti_iodelay_pinctrl_pinconf_ops, i32** %129, align 8
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = call i32 @dev_name(%struct.device* %130)
  %132 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %133 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* @THIS_MODULE, align 4
  %136 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %137 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %140 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %139, i32 0, i32 1
  %141 = load %struct.device*, %struct.device** %4, align 8
  %142 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %143 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %144 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %143, i32 0, i32 0
  %145 = call i32 @pinctrl_register_and_init(%struct.TYPE_4__* %140, %struct.device* %141, %struct.ti_iodelay_device* %142, i32* %144)
  store i32 %145, i32* %9, align 4
  %146 = load i32, i32* %9, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %123
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = call i32 @dev_err(%struct.device* %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %159

151:                                              ; preds = %123
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %154 = call i32 @platform_set_drvdata(%struct.platform_device* %152, %struct.ti_iodelay_device* %153)
  %155 = load %struct.ti_iodelay_device*, %struct.ti_iodelay_device** %8, align 8
  %156 = getelementptr inbounds %struct.ti_iodelay_device, %struct.ti_iodelay_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @pinctrl_enable(i32 %157)
  store i32 %158, i32* %2, align 4
  br label %163

159:                                              ; preds = %148, %122, %112, %101, %78, %57, %40, %29, %18
  %160 = load %struct.device_node*, %struct.device_node** %5, align 8
  %161 = call i32 @of_node_put(%struct.device_node* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %159, %151
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ti_iodelay_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_regmap_init_mmio(%struct.device*, i32, i32) #1

declare dso_local i64 @ti_iodelay_pinconf_init_dev(%struct.ti_iodelay_device*) #1

declare dso_local i32 @ti_iodelay_alloc_pins(%struct.device*, %struct.ti_iodelay_device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @pinctrl_register_and_init(%struct.TYPE_4__*, %struct.device*, %struct.ti_iodelay_device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ti_iodelay_device*) #1

declare dso_local i32 @pinctrl_enable(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
