; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/uniphier/extr_pinctrl-uniphier-core.c_uniphier_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.uniphier_pinctrl_socdata = type { i64, i64, i32, i32, i32, i32 }
%struct.uniphier_pinctrl_priv = type { i32, %struct.TYPE_4__, %struct.uniphier_pinctrl_socdata*, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32*, i64, i64, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"pinctrl socdata lacks necessary members\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get regmap\0A\00", align 1
@uniphier_pctlops = common dso_local global i32 0, align 4
@uniphier_pmxops = common dso_local global i32 0, align 4
@uniphier_confops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to register UniPhier pinctrl driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uniphier_pinctrl_probe(%struct.platform_device* %0, %struct.uniphier_pinctrl_socdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.uniphier_pinctrl_socdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.uniphier_pinctrl_priv*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.uniphier_pinctrl_socdata* %1, %struct.uniphier_pinctrl_socdata** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %13 = icmp ne %struct.uniphier_pinctrl_socdata* %12, null
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %16 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %21 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %26 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %31 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %36 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %41 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %34, %29, %24, %19, %14, %2
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %153

49:                                               ; preds = %39
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.uniphier_pinctrl_priv* @devm_kzalloc(%struct.device* %50, i32 80, i32 %51)
  store %struct.uniphier_pinctrl_priv* %52, %struct.uniphier_pinctrl_priv** %7, align 8
  %53 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %54 = icmp ne %struct.uniphier_pinctrl_priv* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %153

58:                                               ; preds = %49
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.device_node* @of_get_parent(i32 %61)
  store %struct.device_node* %62, %struct.device_node** %8, align 8
  %63 = load %struct.device_node*, %struct.device_node** %8, align 8
  %64 = call i32 @syscon_node_to_regmap(%struct.device_node* %63)
  %65 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %66 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %8, align 8
  %68 = call i32 @of_node_put(%struct.device_node* %67)
  %69 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %70 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %58
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 @dev_err(%struct.device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %78 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %3, align 4
  br label %153

81:                                               ; preds = %58
  %82 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %83 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %84 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %83, i32 0, i32 2
  store %struct.uniphier_pinctrl_socdata* %82, %struct.uniphier_pinctrl_socdata** %84, align 8
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = getelementptr inbounds %struct.device, %struct.device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %91 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 6
  store i32 %89, i32* %92, align 8
  %93 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %94 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %97 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 5
  store i64 %95, i64* %98, align 8
  %99 = load %struct.uniphier_pinctrl_socdata*, %struct.uniphier_pinctrl_socdata** %5, align 8
  %100 = getelementptr inbounds %struct.uniphier_pinctrl_socdata, %struct.uniphier_pinctrl_socdata* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %103 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  store i64 %101, i64* %104, align 8
  %105 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %106 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i32* @uniphier_pctlops, i32** %107, align 8
  %108 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %109 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i32* @uniphier_pmxops, i32** %110, align 8
  %111 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %112 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32* @uniphier_confops, i32** %113, align 8
  %114 = load %struct.device*, %struct.device** %6, align 8
  %115 = getelementptr inbounds %struct.device, %struct.device* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %120 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %124 = call i32 @uniphier_pinctrl_pm_init(%struct.device* %122, %struct.uniphier_pinctrl_priv* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %81
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %153

129:                                              ; preds = %81
  %130 = load %struct.device*, %struct.device** %6, align 8
  %131 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %132 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %131, i32 0, i32 1
  %133 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %134 = call i32 @devm_pinctrl_register(%struct.device* %130, %struct.TYPE_4__* %132, %struct.uniphier_pinctrl_priv* %133)
  %135 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %136 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  %137 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %138 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @IS_ERR(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %129
  %143 = load %struct.device*, %struct.device** %6, align 8
  %144 = call i32 @dev_err(%struct.device* %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %146 = getelementptr inbounds %struct.uniphier_pinctrl_priv, %struct.uniphier_pinctrl_priv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @PTR_ERR(i32 %147)
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %129
  %150 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %151 = load %struct.uniphier_pinctrl_priv*, %struct.uniphier_pinctrl_priv** %7, align 8
  %152 = call i32 @platform_set_drvdata(%struct.platform_device* %150, %struct.uniphier_pinctrl_priv* %151)
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %142, %127, %74, %55, %44
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.uniphier_pinctrl_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @uniphier_pinctrl_pm_init(%struct.device*, %struct.uniphier_pinctrl_priv*) #1

declare dso_local i32 @devm_pinctrl_register(%struct.device*, %struct.TYPE_4__*, %struct.uniphier_pinctrl_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uniphier_pinctrl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
