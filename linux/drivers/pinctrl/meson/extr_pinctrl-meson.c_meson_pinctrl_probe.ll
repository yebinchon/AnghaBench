; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/meson/extr_pinctrl-meson.c_meson_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_pinctrl = type { i32, %struct.device*, %struct.TYPE_2__, %struct.meson_pinctrl_data* }
%struct.TYPE_2__ = type { i8*, i32, i32, i32*, i32, i32*, i32 }
%struct.meson_pinctrl_data = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"pinctrl-meson\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@meson_pctrl_ops = common dso_local global i32 0, align 4
@meson_pinconf_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't register pinctrl device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.meson_pinctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.meson_pinctrl* @devm_kzalloc(%struct.device* %9, i32 72, i32 %10)
  store %struct.meson_pinctrl* %11, %struct.meson_pinctrl** %5, align 8
  %12 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %13 = icmp ne %struct.meson_pinctrl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %99

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %20 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %19, i32 0, i32 1
  store %struct.device* %18, %struct.device** %20, align 8
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i64 @of_device_get_match_data(%struct.device* %21)
  %23 = inttoptr i64 %22 to %struct.meson_pinctrl_data*
  %24 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %25 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %24, i32 0, i32 3
  store %struct.meson_pinctrl_data* %23, %struct.meson_pinctrl_data** %25, align 8
  %26 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @meson_pinctrl_parse_dt(%struct.meson_pinctrl* %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %17
  %36 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %37 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %41 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  store i32 %39, i32* %42, align 8
  %43 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %44 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 5
  store i32* @meson_pctrl_ops, i32** %45, align 8
  %46 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %47 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %46, i32 0, i32 3
  %48 = load %struct.meson_pinctrl_data*, %struct.meson_pinctrl_data** %47, align 8
  %49 = getelementptr inbounds %struct.meson_pinctrl_data, %struct.meson_pinctrl_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %52 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i32 %50, i32* %53, align 8
  %54 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %55 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i32* @meson_pinconf_ops, i32** %56, align 8
  %57 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %58 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %57, i32 0, i32 3
  %59 = load %struct.meson_pinctrl_data*, %struct.meson_pinctrl_data** %58, align 8
  %60 = getelementptr inbounds %struct.meson_pinctrl_data, %struct.meson_pinctrl_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %63 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %66 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %65, i32 0, i32 3
  %67 = load %struct.meson_pinctrl_data*, %struct.meson_pinctrl_data** %66, align 8
  %68 = getelementptr inbounds %struct.meson_pinctrl_data, %struct.meson_pinctrl_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %71 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 8
  %73 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %74 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %73, i32 0, i32 1
  %75 = load %struct.device*, %struct.device** %74, align 8
  %76 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %77 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %76, i32 0, i32 2
  %78 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %79 = call i32 @devm_pinctrl_register(%struct.device* %75, %struct.TYPE_2__* %77, %struct.meson_pinctrl* %78)
  %80 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %81 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %83 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %35
  %88 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %89 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %88, i32 0, i32 1
  %90 = load %struct.device*, %struct.device** %89, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %93 = getelementptr inbounds %struct.meson_pinctrl, %struct.meson_pinctrl* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @PTR_ERR(i32 %94)
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %35
  %97 = load %struct.meson_pinctrl*, %struct.meson_pinctrl** %5, align 8
  %98 = call i32 @meson_gpiolib_register(%struct.meson_pinctrl* %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %87, %33, %14
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.meson_pinctrl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @meson_pinctrl_parse_dt(%struct.meson_pinctrl*, i32) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.TYPE_2__*, %struct.meson_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @meson_gpiolib_register(%struct.meson_pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
