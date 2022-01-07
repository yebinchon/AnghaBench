; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_as3711-regulator.c_as3711_regulator_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_as3711-regulator.c_as3711_regulator_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_regulator_match = type { %struct.device_node*, i32 }
%struct.device_node = type { i32 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.as3711_regulator_pdata = type { i32* }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@as3711_regulator_matches = common dso_local global %struct.of_regulator_match* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node**, i32)* @as3711_regulator_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_regulator_parse_dt(%struct.device* %0, %struct.device_node** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.as3711_regulator_pdata*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.of_regulator_match*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node** %1, %struct.device_node*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.as3711_regulator_pdata* @dev_get_platdata(%struct.device* %13)
  store %struct.as3711_regulator_pdata* %14, %struct.as3711_regulator_pdata** %8, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device_node* @of_get_child_by_name(i32 %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %20, %struct.device_node** %9, align 8
  %21 = load %struct.device_node*, %struct.device_node** %9, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %80

28:                                               ; preds = %3
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.device_node*, %struct.device_node** %9, align 8
  %33 = load %struct.of_regulator_match*, %struct.of_regulator_match** @as3711_regulator_matches, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @of_regulator_match(%struct.TYPE_2__* %31, %struct.device_node* %32, %struct.of_regulator_match* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.device_node*, %struct.device_node** %9, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %46 = load %struct.of_regulator_match*, %struct.of_regulator_match** @as3711_regulator_matches, align 8
  store %struct.of_regulator_match* %46, %struct.of_regulator_match** %10, align 8
  br label %47

47:                                               ; preds = %74, %45
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load %struct.of_regulator_match*, %struct.of_regulator_match** %10, align 8
  %53 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %52, i32 0, i32 0
  %54 = load %struct.device_node*, %struct.device_node** %53, align 8
  %55 = icmp ne %struct.device_node* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.of_regulator_match*, %struct.of_regulator_match** %10, align 8
  %58 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.as3711_regulator_pdata*, %struct.as3711_regulator_pdata** %8, align 8
  %61 = getelementptr inbounds %struct.as3711_regulator_pdata, %struct.as3711_regulator_pdata* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load %struct.of_regulator_match*, %struct.of_regulator_match** %10, align 8
  %67 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %66, i32 0, i32 0
  %68 = load %struct.device_node*, %struct.device_node** %67, align 8
  %69 = load %struct.device_node**, %struct.device_node*** %6, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.device_node*, %struct.device_node** %69, i64 %71
  store %struct.device_node* %68, %struct.device_node** %72, align 8
  br label %73

73:                                               ; preds = %56, %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load %struct.of_regulator_match*, %struct.of_regulator_match** %10, align 8
  %78 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %77, i32 1
  store %struct.of_regulator_match* %78, %struct.of_regulator_match** %10, align 8
  br label %47

79:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %40, %23
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.as3711_regulator_pdata* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_2__*, %struct.device_node*, %struct.of_regulator_match*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
