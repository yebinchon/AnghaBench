; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_pmic_dt_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s2mps11.c_s2mps11_pmic_dt_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.of_regulator_match = type { i32 }
%struct.s2mps11_info = type { i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"could not find regulators sub-node\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S2MPS14X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.of_regulator_match*, %struct.s2mps11_info*, i32)* @s2mps11_pmic_dt_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s2mps11_pmic_dt_parse(%struct.platform_device* %0, %struct.of_regulator_match* %1, %struct.s2mps11_info* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.of_regulator_match*, align 8
  %8 = alloca %struct.s2mps11_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %6, align 8
  store %struct.of_regulator_match* %1, %struct.of_regulator_match** %7, align 8
  store %struct.s2mps11_info* %2, %struct.s2mps11_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_child_by_name(i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %17, %struct.device_node** %10, align 8
  %18 = load %struct.device_node*, %struct.device_node** %10, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %46

26:                                               ; preds = %4
  %27 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %10, align 8
  %30 = load %struct.of_regulator_match*, %struct.of_regulator_match** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @of_regulator_match(%struct.TYPE_5__* %28, %struct.device_node* %29, %struct.of_regulator_match* %30, i32 %31)
  %33 = load %struct.s2mps11_info*, %struct.s2mps11_info** %8, align 8
  %34 = getelementptr inbounds %struct.s2mps11_info, %struct.s2mps11_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S2MPS14X, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %40 = load %struct.of_regulator_match*, %struct.of_regulator_match** %7, align 8
  %41 = load %struct.s2mps11_info*, %struct.s2mps11_info** %8, align 8
  %42 = call i32 @s2mps14_pmic_dt_parse_ext_control_gpio(%struct.platform_device* %39, %struct.of_regulator_match* %40, %struct.s2mps11_info* %41)
  br label %43

43:                                               ; preds = %38, %26
  %44 = load %struct.device_node*, %struct.device_node** %10, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_5__*, %struct.device_node*, %struct.of_regulator_match*, i32) #1

declare dso_local i32 @s2mps14_pmic_dt_parse_ext_control_gpio(%struct.platform_device*, %struct.of_regulator_match*, %struct.s2mps11_info*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
