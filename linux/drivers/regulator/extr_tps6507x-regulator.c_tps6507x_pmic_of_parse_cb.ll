; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps6507x-regulator.c_tps6507x_pmic_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i64 }
%struct.regulator_config = type { %struct.tps6507x_pmic* }
%struct.tps6507x_pmic = type { %struct.tps_info** }
%struct.tps_info = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ti,defdcdc_default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @tps6507x_pmic_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps6507x_pmic_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca %struct.tps6507x_pmic*, align 8
  %8 = alloca %struct.tps_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %6, align 8
  %11 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %12 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 0
  %13 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %12, align 8
  store %struct.tps6507x_pmic* %13, %struct.tps6507x_pmic** %7, align 8
  %14 = load %struct.tps6507x_pmic*, %struct.tps6507x_pmic** %7, align 8
  %15 = getelementptr inbounds %struct.tps6507x_pmic, %struct.tps6507x_pmic* %14, i32 0, i32 0
  %16 = load %struct.tps_info**, %struct.tps_info*** %15, align 8
  %17 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.tps_info*, %struct.tps_info** %16, i64 %19
  %21 = load %struct.tps_info*, %struct.tps_info** %20, align 8
  store %struct.tps_info* %21, %struct.tps_info** %8, align 8
  %22 = load %struct.device_node*, %struct.device_node** %4, align 8
  %23 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.tps_info*, %struct.tps_info** %8, align 8
  %29 = getelementptr inbounds %struct.tps_info, %struct.tps_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %3
  ret i32 0
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
