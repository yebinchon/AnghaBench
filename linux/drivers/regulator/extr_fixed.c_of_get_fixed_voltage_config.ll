; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed.c_of_get_fixed_voltage_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fixed.c_of_get_fixed_voltage_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed_voltage_config = type { i64, i32, i8*, i32, i32, %struct.regulator_init_data* }
%struct.regulator_init_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32, i64 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Fixed regulator specified with variable voltages\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"startup-delay-us\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"vin-supply\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fixed_voltage_config* (%struct.device*, %struct.regulator_desc*)* @of_get_fixed_voltage_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fixed_voltage_config* @of_get_fixed_voltage_config(%struct.device* %0, %struct.regulator_desc* %1) #0 {
  %3 = alloca %struct.fixed_voltage_config*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.fixed_voltage_config*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.regulator_init_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %7, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.fixed_voltage_config* @devm_kzalloc(%struct.device* %12, i32 40, i32 %13)
  store %struct.fixed_voltage_config* %14, %struct.fixed_voltage_config** %6, align 8
  %15 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %16 = icmp ne %struct.fixed_voltage_config* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.fixed_voltage_config* @ERR_PTR(i32 %19)
  store %struct.fixed_voltage_config* %20, %struct.fixed_voltage_config** %3, align 8
  br label %95

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  %26 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %27 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device* %22, %struct.device_node* %25, %struct.regulator_desc* %26)
  %28 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %29 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %28, i32 0, i32 5
  store %struct.regulator_init_data* %27, %struct.regulator_init_data** %29, align 8
  %30 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %31 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %30, i32 0, i32 5
  %32 = load %struct.regulator_init_data*, %struct.regulator_init_data** %31, align 8
  %33 = icmp ne %struct.regulator_init_data* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.fixed_voltage_config* @ERR_PTR(i32 %36)
  store %struct.fixed_voltage_config* %37, %struct.fixed_voltage_config** %3, align 8
  br label %95

38:                                               ; preds = %21
  %39 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %40 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %39, i32 0, i32 5
  %41 = load %struct.regulator_init_data*, %struct.regulator_init_data** %40, align 8
  store %struct.regulator_init_data* %41, %struct.regulator_init_data** %8, align 8
  %42 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %43 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %46 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %50 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %52 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %56 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %38
  %61 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %62 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %66 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %73

67:                                               ; preds = %38
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.fixed_voltage_config* @ERR_PTR(i32 %71)
  store %struct.fixed_voltage_config* %72, %struct.fixed_voltage_config** %3, align 8
  br label %95

73:                                               ; preds = %60
  %74 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %75 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %81 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.device_node*, %struct.device_node** %7, align 8
  %84 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %85 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %84, i32 0, i32 3
  %86 = call i32 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %85)
  %87 = load %struct.device_node*, %struct.device_node** %7, align 8
  %88 = call i64 @of_find_property(%struct.device_node* %87, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  %92 = getelementptr inbounds %struct.fixed_voltage_config, %struct.fixed_voltage_config* %91, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %92, align 8
  br label %93

93:                                               ; preds = %90, %82
  %94 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %6, align 8
  store %struct.fixed_voltage_config* %94, %struct.fixed_voltage_config** %3, align 8
  br label %95

95:                                               ; preds = %93, %67, %34, %17
  %96 = load %struct.fixed_voltage_config*, %struct.fixed_voltage_config** %3, align 8
  ret %struct.fixed_voltage_config* %96
}

declare dso_local %struct.fixed_voltage_config* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.fixed_voltage_config* @ERR_PTR(i32) #1

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.regulator_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
