; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65132-regulator.c_tps65132_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i64 }
%struct.regulator_config = type { %struct.tps65132_regulator* }
%struct.tps65132_regulator = type { i32, %struct.tps65132_reg_pdata* }
%struct.tps65132_reg_pdata = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"active-discharge\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"ti,active-discharge-time-us\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to read active discharge time:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @tps65132_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65132_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.tps65132_regulator*, align 8
  %9 = alloca %struct.tps65132_reg_pdata*, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %11 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %12 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 0
  %13 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %12, align 8
  store %struct.tps65132_regulator* %13, %struct.tps65132_regulator** %8, align 8
  %14 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %8, align 8
  %15 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %14, i32 0, i32 1
  %16 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %15, align 8
  %17 = load %struct.regulator_desc*, %struct.regulator_desc** %6, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %16, i64 %19
  store %struct.tps65132_reg_pdata* %20, %struct.tps65132_reg_pdata** %9, align 8
  %21 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %8, align 8
  %22 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = call i8* @devm_fwnode_get_index_gpiod_from_child(i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32* %25, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %28 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %30 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @IS_ERR_OR_NULL(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %36 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @PTR_ERR(i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @EPROBE_DEFER, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %87

45:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %87

46:                                               ; preds = %3
  %47 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %8, align 8
  %48 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.device_node*, %struct.device_node** %5, align 8
  %51 = getelementptr inbounds %struct.device_node, %struct.device_node* %50, i32 0, i32 0
  %52 = call i8* @devm_fwnode_get_index_gpiod_from_child(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %51, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %54 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %56 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @IS_ERR_OR_NULL(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %46
  %61 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %62 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %87

71:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %87

72:                                               ; preds = %46
  %73 = load %struct.device_node*, %struct.device_node** %5, align 8
  %74 = load %struct.tps65132_reg_pdata*, %struct.tps65132_reg_pdata** %9, align 8
  %75 = getelementptr inbounds %struct.tps65132_reg_pdata, %struct.tps65132_reg_pdata* %74, i32 0, i32 0
  %76 = call i32 @of_property_read_u32(%struct.device_node* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.tps65132_regulator*, %struct.tps65132_regulator** %8, align 8
  %81 = getelementptr inbounds %struct.tps65132_regulator, %struct.tps65132_regulator* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %72
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %79, %71, %69, %45, %43
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @devm_fwnode_get_index_gpiod_from_child(i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
