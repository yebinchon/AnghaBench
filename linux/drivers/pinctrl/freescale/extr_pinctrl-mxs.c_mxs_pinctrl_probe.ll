; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-mxs.c_mxs_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mxs_pinctrl_soc_data = type { i32, i32 }
%struct.mxs_pinctrl_data = type { i32, i32, %struct.mxs_pinctrl_soc_data*, %struct.TYPE_8__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@mxs_pinctrl_desc = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"dt probe failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't register MXS pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxs_pinctrl_probe(%struct.platform_device* %0, %struct.mxs_pinctrl_soc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.mxs_pinctrl_soc_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.mxs_pinctrl_data*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.mxs_pinctrl_soc_data* %1, %struct.mxs_pinctrl_soc_data** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.mxs_pinctrl_data* @devm_kzalloc(%struct.TYPE_8__* %14, i32 24, i32 %15)
  store %struct.mxs_pinctrl_data* %16, %struct.mxs_pinctrl_data** %7, align 8
  %17 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %18 = icmp ne %struct.mxs_pinctrl_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %26 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %25, i32 0, i32 3
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %26, align 8
  %27 = load %struct.mxs_pinctrl_soc_data*, %struct.mxs_pinctrl_soc_data** %5, align 8
  %28 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %29 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %28, i32 0, i32 2
  store %struct.mxs_pinctrl_soc_data* %27, %struct.mxs_pinctrl_soc_data** %29, align 8
  %30 = load %struct.device_node*, %struct.device_node** %6, align 8
  %31 = call i32 @of_iomap(%struct.device_node* %30, i32 0)
  %32 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %33 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %35 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* @EADDRNOTAVAIL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %95

41:                                               ; preds = %22
  %42 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %43 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %42, i32 0, i32 2
  %44 = load %struct.mxs_pinctrl_soc_data*, %struct.mxs_pinctrl_soc_data** %43, align 8
  %45 = getelementptr inbounds %struct.mxs_pinctrl_soc_data, %struct.mxs_pinctrl_soc_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mxs_pinctrl_desc, i32 0, i32 2), align 4
  %47 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %48 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %47, i32 0, i32 2
  %49 = load %struct.mxs_pinctrl_soc_data*, %struct.mxs_pinctrl_soc_data** %48, align 8
  %50 = getelementptr inbounds %struct.mxs_pinctrl_soc_data, %struct.mxs_pinctrl_soc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mxs_pinctrl_desc, i32 0, i32 1), align 4
  %52 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = call i32 @dev_name(%struct.TYPE_8__* %53)
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @mxs_pinctrl_desc, i32 0, i32 0), align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %56 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %57 = call i32 @platform_set_drvdata(%struct.platform_device* %55, %struct.mxs_pinctrl_data* %56)
  %58 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %59 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %60 = call i32 @mxs_pinctrl_probe_dt(%struct.platform_device* %58, %struct.mxs_pinctrl_data* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %41
  %64 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %89

68:                                               ; preds = %41
  %69 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %72 = call i32 @pinctrl_register(%struct.TYPE_7__* @mxs_pinctrl_desc, %struct.TYPE_8__* %70, %struct.mxs_pinctrl_data* %71)
  %73 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %74 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %76 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %68
  %81 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %82, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %84 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %85 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @PTR_ERR(i32 %86)
  store i32 %87, i32* %8, align 4
  br label %89

88:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %95

89:                                               ; preds = %80, %63
  %90 = load %struct.mxs_pinctrl_data*, %struct.mxs_pinctrl_data** %7, align 8
  %91 = getelementptr inbounds %struct.mxs_pinctrl_data, %struct.mxs_pinctrl_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @iounmap(i32 %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %88, %38, %19
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.mxs_pinctrl_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mxs_pinctrl_data*) #1

declare dso_local i32 @mxs_pinctrl_probe_dt(%struct.platform_device*, %struct.mxs_pinctrl_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @pinctrl_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.mxs_pinctrl_data*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
