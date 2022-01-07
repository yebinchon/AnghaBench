; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_regulators_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_ab3100.c_ab3100_regulators_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32 }
%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ab3100_platform_data = type { i32* }

@AB3100_LDO_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not read initial status of LDO_D\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"chip is already in active mode (Warm start)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"chip is in inactive mode (Cold start)\0A\00", align 1
@ab3100_regulator_matches = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@ab3100_reg_init_order = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"regulator initialization failed with error %d\0A\00", align 1
@AB3100_NUM_REGULATORS = common dso_local global i32 0, align 4
@ab3100_regulator_desc = common dso_local global %struct.regulator_desc* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab3100_regulators_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab3100_regulators_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ab3100_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regulator_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.ab3100_platform_data* @dev_get_platdata(%struct.TYPE_7__* %11)
  store %struct.ab3100_platform_data* %12, %struct.ab3100_platform_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @AB3100_LDO_D, align 4
  %20 = call i32 @abx500_get_register_interruptible(%struct.TYPE_7__* %18, i32 0, i32 %19, i32* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %122

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 16
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = call i32 @dev_notice(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_notice(%struct.TYPE_7__* %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.device_node*, %struct.device_node** %5, align 8
  %42 = icmp ne %struct.device_node* %41, null
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = load i32*, i32** @ab3100_regulator_matches, align 8
  %48 = load i32*, i32** @ab3100_regulator_matches, align 8
  %49 = call i32 @ARRAY_SIZE(i32* %48)
  %50 = call i32 @of_regulator_match(%struct.TYPE_7__* %45, %struct.device_node* %46, i32* %47, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %122

59:                                               ; preds = %43
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load %struct.device_node*, %struct.device_node** %5, align 8
  %62 = call i32 @ab3100_regulator_of_probe(%struct.platform_device* %60, %struct.device_node* %61)
  store i32 %62, i32* %2, align 4
  br label %122

63:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %94, %63
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** @ab3100_reg_init_order, align 8
  %67 = call i32 @ARRAY_SIZE(i32* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %64
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32*, i32** @ab3100_reg_init_order, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ab3100_platform_data*, %struct.ab3100_platform_data** %4, align 8
  %78 = getelementptr inbounds %struct.ab3100_platform_data, %struct.ab3100_platform_data* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @abx500_set_register_interruptible(%struct.TYPE_7__* %71, i32 0, i32 %76, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %69
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %2, align 4
  br label %122

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %64

97:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @AB3100_NUM_REGULATORS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load %struct.regulator_desc*, %struct.regulator_desc** @ab3100_regulator_desc, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %103, i64 %105
  store %struct.regulator_desc* %106, %struct.regulator_desc** %9, align 8
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = load %struct.ab3100_platform_data*, %struct.ab3100_platform_data** %4, align 8
  %109 = load %struct.regulator_desc*, %struct.regulator_desc** %9, align 8
  %110 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ab3100_regulator_register(%struct.platform_device* %107, %struct.ab3100_platform_data* %108, i32* null, i32* null, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %122

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %98

121:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %115, %87, %59, %53, %23
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.ab3100_platform_data* @dev_get_platdata(%struct.TYPE_7__*) #1

declare dso_local i32 @abx500_get_register_interruptible(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #1

declare dso_local i32 @dev_notice(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @of_regulator_match(%struct.TYPE_7__*, %struct.device_node*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ab3100_regulator_of_probe(%struct.platform_device*, %struct.device_node*) #1

declare dso_local i32 @abx500_set_register_interruptible(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @ab3100_regulator_register(%struct.platform_device*, %struct.ab3100_platform_data*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
