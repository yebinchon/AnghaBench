; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-oxnas.c_oxnas_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.of_device_id = type { %struct.oxnas_pinctrl_data* }
%struct.oxnas_pinctrl_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.oxnas_pinctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }

@oxnas_pinctrl_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"oxsemi,sys-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get sys ctrl regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to register pinctrl device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oxnas_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.oxnas_pinctrl_data*, align 8
  %6 = alloca %struct.oxnas_pinctrl*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @oxnas_pinctrl_of_match, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.of_device_id* @of_match_node(i32 %7, i32 %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %4, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %140

18:                                               ; preds = %1
  %19 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %20 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %19, i32 0, i32 0
  %21 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %20, align 8
  store %struct.oxnas_pinctrl_data* %21, %struct.oxnas_pinctrl_data** %5, align 8
  %22 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %23 = icmp ne %struct.oxnas_pinctrl_data* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %26 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %31 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %24, %18
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %140

37:                                               ; preds = %29
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.oxnas_pinctrl* @devm_kzalloc(%struct.TYPE_7__* %39, i32 40, i32 %40)
  store %struct.oxnas_pinctrl* %41, %struct.oxnas_pinctrl** %6, align 8
  %42 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %43 = icmp ne %struct.oxnas_pinctrl* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %140

47:                                               ; preds = %37
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %51 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %50, i32 0, i32 8
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %55 = call i32 @dev_set_drvdata(%struct.TYPE_7__* %53, %struct.oxnas_pinctrl* %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @syscon_regmap_lookup_by_phandle(i32 %59, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %62 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %64 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %47
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_err(%struct.TYPE_7__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %140

74:                                               ; preds = %47
  %75 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %76 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %81 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %83 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %88 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %90 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %95 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 8
  %96 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %97 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %102 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %104 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %109 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %111 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %116 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.oxnas_pinctrl_data*, %struct.oxnas_pinctrl_data** %5, align 8
  %118 = getelementptr inbounds %struct.oxnas_pinctrl_data, %struct.oxnas_pinctrl_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %123 = call i32 @pinctrl_register(i32 %119, %struct.TYPE_7__* %121, %struct.oxnas_pinctrl* %122)
  %124 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %125 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %127 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @IS_ERR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %74
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(%struct.TYPE_7__* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.oxnas_pinctrl*, %struct.oxnas_pinctrl** %6, align 8
  %136 = getelementptr inbounds %struct.oxnas_pinctrl, %struct.oxnas_pinctrl* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @PTR_ERR(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %140

139:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %139, %131, %68, %44, %34, %15
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.oxnas_pinctrl* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_7__*, %struct.oxnas_pinctrl*) #1

declare dso_local i32 @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @pinctrl_register(i32, %struct.TYPE_7__*, %struct.oxnas_pinctrl*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
