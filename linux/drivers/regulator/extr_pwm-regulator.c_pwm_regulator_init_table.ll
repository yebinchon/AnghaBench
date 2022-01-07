; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_init_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pwm-regulator.c_pwm_regulator_init_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.pwm_regulator_data = type { i32, %struct.TYPE_4__, %struct.pwm_voltages* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.pwm_voltages = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"voltage-table\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"voltage-table length(%d) is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to read voltage-table: %d\0A\00", align 1
@pwm_regulator_voltage_table_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.pwm_regulator_data*)* @pwm_regulator_init_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_regulator_init_table(%struct.platform_device* %0, %struct.pwm_regulator_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.pwm_regulator_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.pwm_voltages*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.pwm_regulator_data* %1, %struct.pwm_regulator_data** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32 @of_find_property(%struct.device_node* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %8)
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = urem i64 %21, 4
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %2
  %25 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_err(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %77

31:                                               ; preds = %19
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.pwm_voltages* @devm_kzalloc(%struct.TYPE_5__* %33, i32 %34, i32 %35)
  store %struct.pwm_voltages* %36, %struct.pwm_voltages** %7, align 8
  %37 = load %struct.pwm_voltages*, %struct.pwm_voltages** %7, align 8
  %38 = icmp ne %struct.pwm_voltages* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %77

42:                                               ; preds = %31
  %43 = load %struct.device_node*, %struct.device_node** %6, align 8
  %44 = load %struct.pwm_voltages*, %struct.pwm_voltages** %7, align 8
  %45 = bitcast %struct.pwm_voltages* %44 to i32*
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @of_property_read_u32_array(%struct.device_node* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %45, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @dev_err(%struct.TYPE_5__* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %3, align 4
  br label %77

59:                                               ; preds = %42
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %5, align 8
  %63 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.pwm_voltages*, %struct.pwm_voltages** %7, align 8
  %65 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %5, align 8
  %66 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %65, i32 0, i32 2
  store %struct.pwm_voltages* %64, %struct.pwm_voltages** %66, align 8
  %67 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %5, align 8
  %68 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32* @pwm_regulator_voltage_table_ops, i32** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = udiv i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = load %struct.pwm_regulator_data*, %struct.pwm_regulator_data** %5, align 8
  %75 = getelementptr inbounds %struct.pwm_regulator_data, %struct.pwm_regulator_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %59, %53, %39, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local %struct.pwm_voltages* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
