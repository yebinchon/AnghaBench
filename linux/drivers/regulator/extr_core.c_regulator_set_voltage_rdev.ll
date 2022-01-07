; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_voltage_rdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_set_voltage_rdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to increase supply voltage: %d\0A\00", align 1
@PM_SUSPEND_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to decrease supply voltage: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_voltage_rdev(%struct.regulator_dev* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %93

18:                                               ; preds = %4
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %25 = call i64 @regulator_ops_is_valid(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %93

27:                                               ; preds = %18
  %28 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %29 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %27
  %35 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %93, label %43

43:                                               ; preds = %34
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %45 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %93, label %52

52:                                               ; preds = %43, %27
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @regulator_map_voltage(%struct.regulator_dev* %53, i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %11, align 4
  br label %151

61:                                               ; preds = %52
  %62 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @_regulator_list_voltage(%struct.regulator_dev* %62, i32 %63, i32 0)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %11, align 4
  br label %151

69:                                               ; preds = %61
  %70 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %71 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %9, align 4
  %79 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %80 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regulator_get_voltage_rdev(i32 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %69
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %11, align 4
  br label %151

89:                                               ; preds = %69
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %89, %43, %34, %18, %4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %98 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @INT_MAX, align 4
  %102 = load i64, i64* %8, align 8
  %103 = call i32 @regulator_set_voltage_unlocked(%struct.TYPE_6__* %99, i32 %100, i32 %101, i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %96
  %107 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %108 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %107, i32 0, i32 0
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %151

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %93
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* @PM_SUSPEND_ON, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @_regulator_do_set_voltage(%struct.regulator_dev* %117, i32 %118, i32 %119)
  store i32 %120, i32* %11, align 4
  br label %127

121:                                              ; preds = %112
  %122 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @_regulator_do_set_suspend_voltage(%struct.regulator_dev* %122, i32 %123, i32 %124, i64 %125)
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %151

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %131
  %135 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %136 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @INT_MAX, align 4
  %140 = load i64, i64* %8, align 8
  %141 = call i32 @regulator_set_voltage_unlocked(%struct.TYPE_6__* %137, i32 %138, i32 %139, i64 %140)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %134
  %145 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %146 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %145, i32 0, i32 0
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @dev_warn(i32* %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %144, %134
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %149, %131
  br label %151

151:                                              ; preds = %150, %130, %106, %87, %67, %59
  %152 = load i32, i32* %11, align 4
  ret i32 %152
}

declare dso_local i64 @regulator_ops_is_valid(i32, i32) #1

declare dso_local i32 @regulator_map_voltage(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @_regulator_list_voltage(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @regulator_get_voltage_rdev(i32) #1

declare dso_local i32 @regulator_set_voltage_unlocked(%struct.TYPE_6__*, i32, i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @_regulator_do_set_voltage(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @_regulator_do_set_suspend_voltage(%struct.regulator_dev*, i32, i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
