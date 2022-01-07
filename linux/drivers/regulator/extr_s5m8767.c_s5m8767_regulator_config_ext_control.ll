; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_regulator_config_ext_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_s5m8767.c_s5m8767_regulator_config_ext_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5m8767_info = type { i32, i32, %struct.sec_opmode_data* }
%struct.sec_opmode_data = type { i64, i64 }
%struct.sec_regulator_data = type { i64, i64, i32 }
%struct.regulator_config = type { i64 }

@S5M8767_BUCK9 = common dso_local global i64 0, align 8
@s5m8767_opmode_reg = common dso_local global i32** null, align 8
@S5M8767_ENCTRL_USE_GPIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"ext-control for %pOFn: mismatched op_mode (%x), ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ext-control for %pOFn: GPIO not valid, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5m8767_info*, %struct.sec_regulator_data*, %struct.regulator_config*)* @s5m8767_regulator_config_ext_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5m8767_regulator_config_ext_control(%struct.s5m8767_info* %0, %struct.sec_regulator_data* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca %struct.s5m8767_info*, align 8
  %5 = alloca %struct.sec_regulator_data*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sec_opmode_data*, align 8
  store %struct.s5m8767_info* %0, %struct.s5m8767_info** %4, align 8
  store %struct.sec_regulator_data* %1, %struct.sec_regulator_data** %5, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %11 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S5M8767_BUCK9, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %85

16:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.s5m8767_info*, %struct.s5m8767_info** %4, align 8
  %20 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %17
  %24 = load %struct.s5m8767_info*, %struct.s5m8767_info** %4, align 8
  %25 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %24, i32 0, i32 2
  %26 = load %struct.sec_opmode_data*, %struct.sec_opmode_data** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sec_opmode_data, %struct.sec_opmode_data* %26, i64 %28
  store %struct.sec_opmode_data* %29, %struct.sec_opmode_data** %9, align 8
  %30 = load %struct.sec_opmode_data*, %struct.sec_opmode_data** %9, align 8
  %31 = getelementptr inbounds %struct.sec_opmode_data, %struct.sec_opmode_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %34 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %23
  %38 = load i32**, i32*** @s5m8767_opmode_reg, align 8
  %39 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %40 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.sec_opmode_data*, %struct.sec_opmode_data** %9, align 8
  %45 = getelementptr inbounds %struct.sec_opmode_data, %struct.sec_opmode_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %37, %17
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @S5M8767_ENCTRL_USE_GPIO, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.s5m8767_info*, %struct.s5m8767_info** %4, align 8
  %59 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %62 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %85

66:                                               ; preds = %53
  %67 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %68 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load %struct.s5m8767_info*, %struct.s5m8767_info** %4, align 8
  %73 = getelementptr inbounds %struct.s5m8767_info, %struct.s5m8767_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %76 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, i32, ...) @dev_warn(i32 %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %85

79:                                               ; preds = %66
  %80 = load %struct.sec_regulator_data*, %struct.sec_regulator_data** %5, align 8
  %81 = getelementptr inbounds %struct.sec_regulator_data, %struct.sec_regulator_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %84 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %71, %57, %15
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
