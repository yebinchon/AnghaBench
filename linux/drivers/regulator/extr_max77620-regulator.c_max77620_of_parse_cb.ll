; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_of_parse_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77620-regulator.c_max77620_of_parse_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i64 }
%struct.regulator_config = type { %struct.max77620_regulator* }
%struct.max77620_regulator = type { %struct.max77620_regulator_pdata* }
%struct.max77620_regulator_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"maxim,active-fps-source\00", align 1
@MAX77620_FPS_SRC_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"maxim,active-fps-power-up-slot\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"maxim,active-fps-power-down-slot\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"maxim,suspend-fps-source\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"maxim,suspend-fps-power-up-slot\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"maxim,suspend-fps-power-down-slot\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"maxim,power-ok-control\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"maxim,ramp-rate-setting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @max77620_of_parse_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77620_of_parse_cb(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca %struct.max77620_regulator*, align 8
  %8 = alloca %struct.max77620_regulator_pdata*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %6, align 8
  %11 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %12 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %11, i32 0, i32 0
  %13 = load %struct.max77620_regulator*, %struct.max77620_regulator** %12, align 8
  store %struct.max77620_regulator* %13, %struct.max77620_regulator** %7, align 8
  %14 = load %struct.max77620_regulator*, %struct.max77620_regulator** %7, align 8
  %15 = getelementptr inbounds %struct.max77620_regulator, %struct.max77620_regulator* %14, i32 0, i32 0
  %16 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %15, align 8
  %17 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %16, i64 %19
  store %struct.max77620_regulator_pdata* %20, %struct.max77620_regulator_pdata** %8, align 8
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_property_read_u32(%struct.device_node* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  br label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @MAX77620_FPS_SRC_DEF, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %32 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  br label %40

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ -1, %39 ]
  %42 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %43 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.device_node*, %struct.device_node** %4, align 8
  %45 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %9, align 4
  br label %51

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ -1, %50 ]
  %53 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %54 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.device_node*, %struct.device_node** %4, align 8
  %56 = call i32 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* %9, align 4
  br label %62

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ -1, %61 ]
  %64 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %65 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.device_node*, %struct.device_node** %4, align 8
  %67 = call i32 @of_property_read_u32(%struct.device_node* %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  br label %73

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ -1, %72 ]
  %75 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %76 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.device_node*, %struct.device_node** %4, align 8
  %78 = call i32 @of_property_read_u32(%struct.device_node* %77, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  br label %84

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ -1, %83 ]
  %86 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %87 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.device_node*, %struct.device_node** %4, align 8
  %89 = call i32 @of_property_read_u32(%struct.device_node* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32* %9)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %95 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  br label %99

96:                                               ; preds = %84
  %97 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %98 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %97, i32 0, i32 6
  store i32 -1, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = load %struct.device_node*, %struct.device_node** %4, align 8
  %101 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  br label %107

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %105, %104 ], [ 0, %106 ]
  %109 = load %struct.max77620_regulator_pdata*, %struct.max77620_regulator_pdata** %8, align 8
  %110 = getelementptr inbounds %struct.max77620_regulator_pdata, %struct.max77620_regulator_pdata* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.max77620_regulator*, %struct.max77620_regulator** %7, align 8
  %112 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %113 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @max77620_init_pmic(%struct.max77620_regulator* %111, i64 %114)
  ret i32 %115
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @max77620_init_pmic(%struct.max77620_regulator*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
