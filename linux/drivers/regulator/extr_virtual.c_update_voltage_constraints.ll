; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_update_voltage_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_update_voltage_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.virtual_consumer_data = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Requesting %d-%duV\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"regulator_set_voltage() failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Enabling regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"regulator_enable() failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Disabling regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"regulator_disable() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.virtual_consumer_data*)* @update_voltage_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_voltage_constraints(%struct.device* %0, %struct.virtual_consumer_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.virtual_consumer_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.virtual_consumer_data* %1, %struct.virtual_consumer_data** %4, align 8
  %6 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %7 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %2
  %11 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %12 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %10
  %16 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %17 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %20 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sle i64 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %26 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %29 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %30)
  %32 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %33 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %36 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %39 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @regulator_set_voltage(i32 %34, i64 %37, i64 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %113

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %15, %10, %2
  %50 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %51 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %56 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %54
  %60 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %61 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %81, label %64

64:                                               ; preds = %59
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %68 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regulator_enable(i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %75 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %73
  br label %81

81:                                               ; preds = %80, %59, %54, %49
  %82 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %83 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %88 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %113, label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %93 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %100 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @regulator_disable(i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %107 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  br label %112

108:                                              ; preds = %96
  %109 = load %struct.device*, %struct.device** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @dev_err(%struct.device* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %105
  br label %113

113:                                              ; preds = %44, %112, %91, %86
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @regulator_set_voltage(i32, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
