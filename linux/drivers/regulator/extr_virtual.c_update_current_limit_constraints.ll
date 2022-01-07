; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_update_current_limit_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_update_current_limit_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.virtual_consumer_data = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Requesting %d-%duA\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"regulator_set_current_limit() failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Enabling regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"regulator_enable() failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Disabling regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"regulator_disable() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.virtual_consumer_data*)* @update_current_limit_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_current_limit_constraints(%struct.device* %0, %struct.virtual_consumer_data* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.virtual_consumer_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.virtual_consumer_data* %1, %struct.virtual_consumer_data** %4, align 8
  %6 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %7 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %2
  %11 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %12 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %15 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %10
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %21 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %24 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25)
  %27 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %28 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %31 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %34 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @regulator_set_current_limit(i32 %29, i64 %32, i64 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %18
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %103

43:                                               ; preds = %18
  br label %44

44:                                               ; preds = %43, %10, %2
  %45 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %46 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %44
  %50 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %51 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %58 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_enable(i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %54
  %64 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %65 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  br label %70

66:                                               ; preds = %54
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %49, %44
  %72 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %73 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %78 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %76, %71
  %82 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %83 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.device*, %struct.device** %3, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %89 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %90 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @regulator_disable(i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %4, align 8
  %97 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %96, i32 0, i32 2
  store i32 0, i32* %97, align 8
  br label %102

98:                                               ; preds = %86
  %99 = load %struct.device*, %struct.device** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %39, %102, %81, %76
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @regulator_set_current_limit(i32, i64, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
