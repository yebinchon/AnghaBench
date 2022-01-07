; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-st.c_st_pctl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.st_pinctrl = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.pinctrl_desc = type { i32, i32*, i32*, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"device node not found.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@st_pctlops = common dso_local global i32 0, align 4
@st_pmxops = common dso_local global i32 0, align 4
@st_confops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed pinctrl registration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_pctl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_pctl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.st_pinctrl*, align 8
  %5 = alloca %struct.pinctrl_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_err(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @devm_kzalloc(%struct.TYPE_7__* %21, i32 40, i32 %22)
  %24 = bitcast i8* %23 to %struct.pinctrl_desc*
  store %struct.pinctrl_desc* %24, %struct.pinctrl_desc** %5, align 8
  %25 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %26 = icmp ne %struct.pinctrl_desc* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %115

30:                                               ; preds = %19
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @devm_kzalloc(%struct.TYPE_7__* %32, i32 32, i32 %33)
  %35 = bitcast i8* %34 to %struct.st_pinctrl*
  store %struct.st_pinctrl* %35, %struct.st_pinctrl** %4, align 8
  %36 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %37 = icmp ne %struct.st_pinctrl* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %115

41:                                               ; preds = %30
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %45 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %44, i32 0, i32 3
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %48 = call i32 @platform_set_drvdata(%struct.platform_device* %46, %struct.st_pinctrl* %47)
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %51 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %52 = call i32 @st_pctl_probe_dt(%struct.platform_device* %49, %struct.pinctrl_desc* %50, %struct.st_pinctrl* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %115

57:                                               ; preds = %41
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %60 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %62 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %61, i32 0, i32 3
  store i32* @st_pctlops, i32** %62, align 8
  %63 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %64 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %63, i32 0, i32 2
  store i32* @st_pmxops, i32** %64, align 8
  %65 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %66 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %65, i32 0, i32 1
  store i32* @st_confops, i32** %66, align 8
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_name(%struct.TYPE_7__* %68)
  %70 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %71 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %5, align 8
  %75 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %76 = call i32 @devm_pinctrl_register(%struct.TYPE_7__* %73, %struct.pinctrl_desc* %74, %struct.st_pinctrl* %75)
  %77 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %78 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %80 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @IS_ERR(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %57
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = call i32 @dev_err(%struct.TYPE_7__* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %89 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %115

92:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %111, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %96 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %93
  %100 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %101 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.st_pinctrl*, %struct.st_pinctrl** %4, align 8
  %104 = getelementptr inbounds %struct.st_pinctrl, %struct.st_pinctrl* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = call i32 @pinctrl_add_gpio_range(i32 %102, i32* %109)
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %93

114:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %84, %55, %38, %27, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.st_pinctrl*) #1

declare dso_local i32 @st_pctl_probe_dt(%struct.platform_device*, %struct.pinctrl_desc*, %struct.st_pinctrl*) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.TYPE_7__*, %struct.pinctrl_desc*, %struct.st_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
