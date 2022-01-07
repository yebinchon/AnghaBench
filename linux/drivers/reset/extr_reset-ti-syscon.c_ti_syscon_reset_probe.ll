; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-syscon.c_ti_syscon_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-ti-syscon.c_ti_syscon_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ti_syscon_reset_data = type { i32, %struct.TYPE_2__, %struct.ti_syscon_reset_control*, %struct.regmap* }
%struct.TYPE_2__ = type { i32, %struct.device_node*, i32, i32* }
%struct.ti_syscon_reset_control = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ti,reset-bits\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"invalid DT reset description\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ti_syscon_reset_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_syscon_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_syscon_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ti_syscon_reset_data*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ti_syscon_reset_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %4, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ti_syscon_reset_data* @devm_kzalloc(%struct.device* %18, i32 56, i32 %19)
  store %struct.ti_syscon_reset_data* %20, %struct.ti_syscon_reset_data** %6, align 8
  %21 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %22 = icmp ne %struct.ti_syscon_reset_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %172

26:                                               ; preds = %1
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = getelementptr inbounds %struct.device_node, %struct.device_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.regmap* @syscon_node_to_regmap(i32 %29)
  store %struct.regmap* %30, %struct.regmap** %7, align 8
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = call i64 @IS_ERR(%struct.regmap* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = call i32 @PTR_ERR(%struct.regmap* %35)
  store i32 %36, i32* %2, align 4
  br label %172

37:                                               ; preds = %26
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = urem i64 %45, 7
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %37
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %172

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = udiv i64 %55, 4
  %57 = udiv i64 %56, 7
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call %struct.ti_syscon_reset_control* @devm_kcalloc(%struct.device* %59, i32 %60, i32 56, i32 %61)
  store %struct.ti_syscon_reset_control* %62, %struct.ti_syscon_reset_control** %9, align 8
  %63 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %64 = icmp ne %struct.ti_syscon_reset_control* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %53
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %172

68:                                               ; preds = %53
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %137, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %140

73:                                               ; preds = %69
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %8, align 8
  %76 = ptrtoint i32* %74 to i32
  %77 = call i8* @be32_to_cpup(i32 %76)
  %78 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %78, i64 %80
  %82 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %81, i32 0, i32 6
  store i8* %77, i8** %82, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  %85 = ptrtoint i32* %83 to i32
  %86 = call i8* @be32_to_cpup(i32 %85)
  %87 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %87, i64 %89
  %91 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %90, i32 0, i32 5
  store i8* %86, i8** %91, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %8, align 8
  %94 = ptrtoint i32* %92 to i32
  %95 = call i8* @be32_to_cpup(i32 %94)
  %96 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %96, i64 %98
  %100 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %99, i32 0, i32 4
  store i8* %95, i8** %100, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %8, align 8
  %103 = ptrtoint i32* %101 to i32
  %104 = call i8* @be32_to_cpup(i32 %103)
  %105 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %105, i64 %107
  %109 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %108, i32 0, i32 3
  store i8* %104, i8** %109, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %8, align 8
  %112 = ptrtoint i32* %110 to i32
  %113 = call i8* @be32_to_cpup(i32 %112)
  %114 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %114, i64 %116
  %118 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %117, i32 0, i32 2
  store i8* %113, i8** %118, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %8, align 8
  %121 = ptrtoint i32* %119 to i32
  %122 = call i8* @be32_to_cpup(i32 %121)
  %123 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %123, i64 %125
  %127 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %126, i32 0, i32 1
  store i8* %122, i8** %127, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %8, align 8
  %130 = ptrtoint i32* %128 to i32
  %131 = call i8* @be32_to_cpup(i32 %130)
  %132 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %132, i64 %134
  %136 = getelementptr inbounds %struct.ti_syscon_reset_control, %struct.ti_syscon_reset_control* %135, i32 0, i32 0
  store i8* %131, i8** %136, align 8
  br label %137

137:                                              ; preds = %73
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %69

140:                                              ; preds = %69
  %141 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %142 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 3
  store i32* @ti_syscon_reset_ops, i32** %143, align 8
  %144 = load i32, i32* @THIS_MODULE, align 4
  %145 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %146 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 8
  %148 = load %struct.device_node*, %struct.device_node** %5, align 8
  %149 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %150 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  store %struct.device_node* %148, %struct.device_node** %151, align 8
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %154 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load %struct.regmap*, %struct.regmap** %7, align 8
  %157 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %158 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %157, i32 0, i32 3
  store %struct.regmap* %156, %struct.regmap** %158, align 8
  %159 = load %struct.ti_syscon_reset_control*, %struct.ti_syscon_reset_control** %9, align 8
  %160 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %161 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %160, i32 0, i32 2
  store %struct.ti_syscon_reset_control* %159, %struct.ti_syscon_reset_control** %161, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %164 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %167 = call i32 @platform_set_drvdata(%struct.platform_device* %165, %struct.ti_syscon_reset_data* %166)
  %168 = load %struct.device*, %struct.device** %4, align 8
  %169 = load %struct.ti_syscon_reset_data*, %struct.ti_syscon_reset_data** %6, align 8
  %170 = getelementptr inbounds %struct.ti_syscon_reset_data, %struct.ti_syscon_reset_data* %169, i32 0, i32 1
  %171 = call i32 @devm_reset_controller_register(%struct.device* %168, %struct.TYPE_2__* %170)
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %140, %65, %48, %34, %23
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.ti_syscon_reset_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.ti_syscon_reset_control* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ti_syscon_reset_data*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
