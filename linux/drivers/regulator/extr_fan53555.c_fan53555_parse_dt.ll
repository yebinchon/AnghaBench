; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_fan53555.c_fan53555_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fan53555_platform_data = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fcs,suspend-voltage-selector\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fan53555_platform_data* (%struct.device*, %struct.device_node*, %struct.regulator_desc*)* @fan53555_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fan53555_platform_data* @fan53555_parse_dt(%struct.device* %0, %struct.device_node* %1, %struct.regulator_desc* %2) #0 {
  %4 = alloca %struct.fan53555_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.fan53555_platform_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.regulator_desc* %2, %struct.regulator_desc** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.fan53555_platform_data* @devm_kzalloc(%struct.device* %11, i32 8, i32 %12)
  store %struct.fan53555_platform_data* %13, %struct.fan53555_platform_data** %8, align 8
  %14 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %15 = icmp ne %struct.fan53555_platform_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.fan53555_platform_data* null, %struct.fan53555_platform_data** %4, align 8
  br label %34

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load %struct.device_node*, %struct.device_node** %6, align 8
  %20 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %21 = call i32 @of_get_regulator_init_data(%struct.device* %18, %struct.device_node* %19, %struct.regulator_desc* %20)
  %22 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %23 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  %31 = getelementptr inbounds %struct.fan53555_platform_data, %struct.fan53555_platform_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %17
  %33 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %8, align 8
  store %struct.fan53555_platform_data* %33, %struct.fan53555_platform_data** %4, align 8
  br label %34

34:                                               ; preds = %32, %16
  %35 = load %struct.fan53555_platform_data*, %struct.fan53555_platform_data** %4, align 8
  ret %struct.fan53555_platform_data* %35
}

declare dso_local %struct.fan53555_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_get_regulator_init_data(%struct.device*, %struct.device_node*, %struct.regulator_desc*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
