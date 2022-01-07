; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_ds2760_battery_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2760_battery.c_ds2760_battery_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds2760_device_info = type { i32, i32, i32, i32, i32, i32 }

@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"not enough power to charge\0A\00", align 1
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ds2760_device_info*)* @ds2760_battery_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds2760_battery_update_status(%struct.ds2760_device_info* %0) #0 {
  %2 = alloca %struct.ds2760_device_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ds2760_device_info* %0, %struct.ds2760_device_info** %2, align 8
  %4 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %5 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %8 = call i32 @ds2760_battery_read_status(%struct.ds2760_device_info* %7)
  %9 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %10 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %16 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %19 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @power_supply_am_i_supplied(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %17
  %24 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %25 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 10000
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %32 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %34 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  br label %94

35:                                               ; preds = %23
  %36 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %37 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, -5000
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %42 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %48 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_notice(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %53 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %54 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %56 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  br label %93

57:                                               ; preds = %35
  %58 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %59 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 10000
  br i1 %61, label %62, label %92

62:                                               ; preds = %57
  %63 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %64 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %62
  %69 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %70 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %74 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %81 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %91

82:                                               ; preds = %68
  %83 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %84 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %85 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %87 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %88 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info* %86, i32 %89)
  br label %91

91:                                               ; preds = %82, %77
  br label %92

92:                                               ; preds = %91, %62, %57
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %28
  br label %101

95:                                               ; preds = %17
  %96 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %97 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %98 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %100 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %103 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.ds2760_device_info*, %struct.ds2760_device_info** %2, align 8
  %109 = getelementptr inbounds %struct.ds2760_device_info, %struct.ds2760_device_info* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @power_supply_changed(i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  ret void
}

declare dso_local i32 @ds2760_battery_read_status(%struct.ds2760_device_info*) #1

declare dso_local i64 @power_supply_am_i_supplied(i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @ds2760_battery_set_current_accum(%struct.ds2760_device_info*, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
