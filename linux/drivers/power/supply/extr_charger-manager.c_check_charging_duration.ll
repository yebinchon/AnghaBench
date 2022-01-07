; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_check_charging_duration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_check_charging_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i64, i64, i32, i64, %struct.charger_desc* }
%struct.charger_desc = type { i64, i64 }

@.str = private unnamed_addr constant [31 x i8] c"Charging duration exceed %ums\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Discharging\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Discharging duration exceed %ums\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Recharging\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @check_charging_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_charging_duration(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_desc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %8 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %9 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %8, i32 0, i32 4
  %10 = load %struct.charger_desc*, %struct.charger_desc** %9, align 8
  store %struct.charger_desc* %10, %struct.charger_desc** %4, align 8
  %11 = call i32 (...) @ktime_get()
  %12 = call i64 @ktime_to_ms(i32 %11)
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %14 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %19 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %17, %1
  %25 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %26 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %32 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %37 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %29
  %41 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %42 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %45 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dev_info(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %49 = call i32 @uevent_notify(%struct.charger_manager* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %51 = call i32 @try_charger_enable(%struct.charger_manager* %50, i32 0)
  store i32 1, i32* %7, align 4
  br label %52

52:                                               ; preds = %40, %29
  br label %91

53:                                               ; preds = %24
  %54 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %55 = call i64 @is_ext_pwr_online(%struct.charger_manager* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %53
  %58 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %59 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %90, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %65 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %70 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %62
  %74 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %75 = call i64 @is_ext_pwr_online(%struct.charger_manager* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %79 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %82 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @dev_info(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %86 = call i32 @uevent_notify(%struct.charger_manager* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %88 = call i32 @try_charger_enable(%struct.charger_manager* %87, i32 1)
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %77, %73, %62
  br label %90

90:                                               ; preds = %89, %57, %53
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @dev_info(i32, i8*, i64) #1

declare dso_local i32 @uevent_notify(%struct.charger_manager*, i8*) #1

declare dso_local i32 @try_charger_enable(%struct.charger_manager*, i32) #1

declare dso_local i64 @is_ext_pwr_online(%struct.charger_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
