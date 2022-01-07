; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c__cm_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c__cm_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@default_event_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Charging/Discharging duration is out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"EVENT_HANDLE: Battery Fully Charged\0A\00", align 1
@CM_EVENT_BATT_FULL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"CHARGING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @_cm_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_cm_monitor(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %5 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %6 = call i32 @cm_check_thermal_status(%struct.charger_manager* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %11 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %117

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %21 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %23 = call i32 @try_charger_enable(%struct.charger_manager* %22, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %18
  %26 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %27 = load i8**, i8*** @default_event_names, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @uevent_notify(%struct.charger_manager* %26, i8* %31)
  br label %33

33:                                               ; preds = %25, %18
  br label %116

34:                                               ; preds = %15
  %35 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %36 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %34
  %40 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %41 = call i64 @check_charging_duration(%struct.charger_manager* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %45 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %115

48:                                               ; preds = %39, %34
  %49 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %50 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %55 = call i64 @is_ext_pwr_online(%struct.charger_manager* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %59 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %64 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @fullbatt_vchk(i32* %65)
  br label %114

67:                                               ; preds = %57, %53, %48
  %68 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %69 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %98, label %72

72:                                               ; preds = %67
  %73 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %74 = call i64 @is_full_charged(%struct.charger_manager* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %72
  %77 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %78 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %83 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_info(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %87 = load i8**, i8*** @default_event_names, align 8
  %88 = load i64, i64* @CM_EVENT_BATT_FULL, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @uevent_notify(%struct.charger_manager* %86, i8* %90)
  %92 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %93 = call i32 @try_charger_enable(%struct.charger_manager* %92, i32 0)
  %94 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %95 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = call i32 @fullbatt_vchk(i32* %96)
  br label %113

98:                                               ; preds = %76, %72, %67
  %99 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %100 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %102 = call i64 @is_ext_pwr_online(%struct.charger_manager* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %106 = call i32 @try_charger_enable(%struct.charger_manager* %105, i32 1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %110 = call i32 @uevent_notify(%struct.charger_manager* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104
  br label %112

112:                                              ; preds = %111, %98
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113, %62
  br label %115

115:                                              ; preds = %114, %43
  br label %116

116:                                              ; preds = %115, %33
  store i32 1, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %14
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @cm_check_thermal_status(%struct.charger_manager*) #1

declare dso_local i32 @try_charger_enable(%struct.charger_manager*, i32) #1

declare dso_local i32 @uevent_notify(%struct.charger_manager*, i8*) #1

declare dso_local i64 @check_charging_duration(%struct.charger_manager*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @is_ext_pwr_online(%struct.charger_manager*) #1

declare dso_local i32 @fullbatt_vchk(i32*) #1

declare dso_local i64 @is_full_charged(%struct.charger_manager*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
