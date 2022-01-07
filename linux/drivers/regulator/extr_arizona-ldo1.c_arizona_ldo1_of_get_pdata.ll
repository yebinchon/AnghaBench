; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_of_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_arizona-ldo1.c_arizona_ldo1_of_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona_ldo1_pdata = type { %struct.regulator_init_data* }
%struct.regulator_init_data = type { i32, i32* }
%struct.regulator_config = type { %struct.TYPE_2__*, %struct.device_node*, %struct.arizona_ldo1* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.arizona_ldo1 = type { i32 }
%struct.regulator_desc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"DCVDD-supply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arizona_ldo1_pdata*, %struct.regulator_config*, %struct.regulator_desc*, i32*)* @arizona_ldo1_of_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_ldo1_of_get_pdata(%struct.arizona_ldo1_pdata* %0, %struct.regulator_config* %1, %struct.regulator_desc* %2, i32* %3) #0 {
  %5 = alloca %struct.arizona_ldo1_pdata*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca %struct.regulator_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.arizona_ldo1*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.regulator_init_data*, align 8
  store %struct.arizona_ldo1_pdata* %0, %struct.arizona_ldo1_pdata** %5, align 8
  store %struct.regulator_config* %1, %struct.regulator_config** %6, align 8
  store %struct.regulator_desc* %2, %struct.regulator_desc** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %15 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %14, i32 0, i32 2
  %16 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %15, align 8
  store %struct.arizona_ldo1* %16, %struct.arizona_ldo1** %9, align 8
  %17 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %18 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %10, align 8
  %22 = load %struct.device_node*, %struct.device_node** %10, align 8
  %23 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %23, %struct.device_node** %11, align 8
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %25, %struct.device_node** %12, align 8
  %26 = load %struct.device_node*, %struct.device_node** %11, align 8
  %27 = icmp ne %struct.device_node* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %4
  %29 = load %struct.device_node*, %struct.device_node** %11, align 8
  %30 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %31 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %30, i32 0, i32 1
  store %struct.device_node* %29, %struct.device_node** %31, align 8
  %32 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %33 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.device_node*, %struct.device_node** %11, align 8
  %36 = load %struct.regulator_desc*, %struct.regulator_desc** %7, align 8
  %37 = call %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_2__* %34, %struct.device_node* %35, %struct.regulator_desc* %36)
  store %struct.regulator_init_data* %37, %struct.regulator_init_data** %13, align 8
  %38 = load %struct.regulator_init_data*, %struct.regulator_init_data** %13, align 8
  %39 = icmp ne %struct.regulator_init_data* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %28
  %41 = load %struct.arizona_ldo1*, %struct.arizona_ldo1** %9, align 8
  %42 = getelementptr inbounds %struct.arizona_ldo1, %struct.arizona_ldo1* %41, i32 0, i32 0
  %43 = load %struct.regulator_init_data*, %struct.regulator_init_data** %13, align 8
  %44 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.regulator_init_data*, %struct.regulator_init_data** %13, align 8
  %46 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.device_node*, %struct.device_node** %12, align 8
  %48 = icmp ne %struct.device_node* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.device_node*, %struct.device_node** %12, align 8
  %51 = load %struct.device_node*, %struct.device_node** %11, align 8
  %52 = icmp ne %struct.device_node* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32*, i32** %8, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %49, %40
  %56 = load %struct.regulator_init_data*, %struct.regulator_init_data** %13, align 8
  %57 = load %struct.arizona_ldo1_pdata*, %struct.arizona_ldo1_pdata** %5, align 8
  %58 = getelementptr inbounds %struct.arizona_ldo1_pdata, %struct.arizona_ldo1_pdata* %57, i32 0, i32 0
  store %struct.regulator_init_data* %56, %struct.regulator_init_data** %58, align 8
  br label %59

59:                                               ; preds = %55, %28
  br label %66

60:                                               ; preds = %4
  %61 = load %struct.device_node*, %struct.device_node** %12, align 8
  %62 = icmp ne %struct.device_node* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32*, i32** %8, align 8
  store i32 1, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %65, %59
  %67 = load %struct.device_node*, %struct.device_node** %12, align 8
  %68 = call i32 @of_node_put(%struct.device_node* %67)
  ret i32 0
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.regulator_init_data* @of_get_regulator_init_data(%struct.TYPE_2__*, %struct.device_node*, %struct.regulator_desc*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
