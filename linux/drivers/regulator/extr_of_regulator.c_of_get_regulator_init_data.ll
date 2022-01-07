; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_get_regulator_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_of_regulator.c_of_get_regulator_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_init_data = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.device* %0, %struct.device_node* %1, %struct.regulator_desc* %2) #0 {
  %4 = alloca %struct.regulator_init_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca %struct.regulator_init_data*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.regulator_desc* %2, %struct.regulator_desc** %7, align 8
  %9 = load %struct.device_node*, %struct.device_node** %6, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %4, align 8
  br label %28

12:                                               ; preds = %3
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.regulator_init_data* @devm_kzalloc(%struct.device* %13, i32 4, i32 %14)
  store %struct.regulator_init_data* %15, %struct.regulator_init_data** %8, align 8
  %16 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %17 = icmp ne %struct.regulator_init_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %4, align 8
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.device_node*, %struct.device_node** %6, align 8
  %22 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %23 = call i64 @of_get_regulation_constraints(%struct.device* %20, %struct.device_node* %21, %struct.regulator_init_data** %8, %struct.regulator_desc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.regulator_init_data* null, %struct.regulator_init_data** %4, align 8
  br label %28

26:                                               ; preds = %19
  %27 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  store %struct.regulator_init_data* %27, %struct.regulator_init_data** %4, align 8
  br label %28

28:                                               ; preds = %26, %25, %18, %11
  %29 = load %struct.regulator_init_data*, %struct.regulator_init_data** %4, align 8
  ret %struct.regulator_init_data* %29
}

declare dso_local %struct.regulator_init_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @of_get_regulation_constraints(%struct.device*, %struct.device_node*, %struct.regulator_init_data**, %struct.regulator_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
