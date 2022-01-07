; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier.c_uniphier_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-uniphier.c_uniphier_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.uniphier_reset_priv = type { %struct.TYPE_4__, %struct.uniphier_reset_data*, %struct.regmap*, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }
%struct.uniphier_reset_data = type { i64 }
%struct.regmap = type { i32 }
%struct.device_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get regmap (error %ld)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UNIPHIER_RESET_ID_END = common dso_local global i64 0, align 8
@uniphier_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.uniphier_reset_priv*, align 8
  %6 = alloca %struct.uniphier_reset_data*, align 8
  %7 = alloca %struct.uniphier_reset_data*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.uniphier_reset_data* @of_device_get_match_data(%struct.device* %13)
  store %struct.uniphier_reset_data* %14, %struct.uniphier_reset_data** %7, align 8
  %15 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %16 = icmp ne %struct.uniphier_reset_data* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %106

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.device_node* @of_get_parent(i32 %27)
  store %struct.device_node* %28, %struct.device_node** %9, align 8
  %29 = load %struct.device_node*, %struct.device_node** %9, align 8
  %30 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %29)
  store %struct.regmap* %30, %struct.regmap** %8, align 8
  %31 = load %struct.device_node*, %struct.device_node** %9, align 8
  %32 = call i32 @of_node_put(%struct.device_node* %31)
  %33 = load %struct.regmap*, %struct.regmap** %8, align 8
  %34 = call i64 @IS_ERR(%struct.regmap* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.regmap*, %struct.regmap** %8, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  %40 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %8, align 8
  %42 = call i32 @PTR_ERR(%struct.regmap* %41)
  store i32 %42, i32* %2, align 4
  br label %106

43:                                               ; preds = %24
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.uniphier_reset_priv* @devm_kzalloc(%struct.device* %44, i32 48, i32 %45)
  store %struct.uniphier_reset_priv* %46, %struct.uniphier_reset_priv** %5, align 8
  %47 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %48 = icmp ne %struct.uniphier_reset_priv* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %106

52:                                               ; preds = %43
  %53 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  store %struct.uniphier_reset_data* %53, %struct.uniphier_reset_data** %6, align 8
  br label %54

54:                                               ; preds = %67, %52
  %55 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %6, align 8
  %56 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @UNIPHIER_RESET_ID_END, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %6, align 8
  %63 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i32 @max(i32 %61, i64 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %6, align 8
  %69 = getelementptr inbounds %struct.uniphier_reset_data, %struct.uniphier_reset_data* %68, i32 1
  store %struct.uniphier_reset_data* %69, %struct.uniphier_reset_data** %6, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %72 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32* @uniphier_reset_ops, i32** %73, align 8
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %80 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = getelementptr inbounds %struct.device, %struct.device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %86 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %90 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %94 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %93, i32 0, i32 3
  store %struct.device* %92, %struct.device** %94, align 8
  %95 = load %struct.regmap*, %struct.regmap** %8, align 8
  %96 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %97 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %96, i32 0, i32 2
  store %struct.regmap* %95, %struct.regmap** %97, align 8
  %98 = load %struct.uniphier_reset_data*, %struct.uniphier_reset_data** %7, align 8
  %99 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %100 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %99, i32 0, i32 1
  store %struct.uniphier_reset_data* %98, %struct.uniphier_reset_data** %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = load %struct.uniphier_reset_priv*, %struct.uniphier_reset_priv** %5, align 8
  %104 = getelementptr inbounds %struct.uniphier_reset_priv, %struct.uniphier_reset_priv* %103, i32 0, i32 0
  %105 = call i32 @devm_reset_controller_register(%struct.device* %102, %struct.TYPE_4__* %104)
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %70, %49, %36, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local %struct.uniphier_reset_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.uniphier_reset_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
