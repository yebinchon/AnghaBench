; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_s3c_adc_battery.c_s3c_adc_bat_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_s3c_adc_battery.c_s3c_adc_bat_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_adc_bat = type { i32, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 (...)*, i32 (...)* }
%struct.work_struct = type { i32 }

@main_bat = common dso_local global %struct.s3c_adc_bat zeroinitializer, align 8
@s3c_adc_bat_work.was_plugged = internal global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @s3c_adc_bat_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_adc_bat_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.s3c_adc_bat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store %struct.s3c_adc_bat* @main_bat, %struct.s3c_adc_bat** %3, align 8
  %6 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %7 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @power_supply_am_i_supplied(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %12 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @s3c_adc_bat_work.was_plugged, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* @s3c_adc_bat_work.was_plugged, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %22 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %21, i32 0, i32 3
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = icmp ne i32 (...)* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %29 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (...)*, i32 (...)** %31, align 8
  %33 = call i32 (...) %32()
  br label %34

34:                                               ; preds = %27, %20
  %35 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %36 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %37 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  br label %56

38:                                               ; preds = %16
  %39 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %40 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32 (...)*, i32 (...)** %42, align 8
  %44 = icmp ne i32 (...)* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %47 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32 (...)*, i32 (...)** %49, align 8
  %51 = call i32 (...) %50()
  br label %52

52:                                               ; preds = %45, %38
  %53 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %54 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %55 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  br label %56

56:                                               ; preds = %52, %34
  br label %109

57:                                               ; preds = %1
  %58 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %59 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %108

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %108

67:                                               ; preds = %64
  %68 = call i32 @charge_finished(%struct.s3c_adc_bat* @main_bat)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %73 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32 (...)*, i32 (...)** %75, align 8
  %77 = icmp ne i32 (...)* %76, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %80 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %79, i32 0, i32 3
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32 (...)*, i32 (...)** %82, align 8
  %84 = call i32 (...) %83()
  br label %85

85:                                               ; preds = %78, %71
  %86 = load i8*, i8** @POWER_SUPPLY_STATUS_FULL, align 8
  %87 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %88 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %107

89:                                               ; preds = %67
  %90 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %91 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32 (...)*, i32 (...)** %93, align 8
  %95 = icmp ne i32 (...)* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %98 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %97, i32 0, i32 3
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32 (...)*, i32 (...)** %100, align 8
  %102 = call i32 (...) %101()
  br label %103

103:                                              ; preds = %96, %89
  %104 = load i8*, i8** @POWER_SUPPLY_STATUS_CHARGING, align 8
  %105 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %106 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %103, %85
  br label %108

108:                                              ; preds = %107, %64, %57
  br label %109

109:                                              ; preds = %108, %56
  %110 = load %struct.s3c_adc_bat*, %struct.s3c_adc_bat** %3, align 8
  %111 = getelementptr inbounds %struct.s3c_adc_bat, %struct.s3c_adc_bat* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @power_supply_changed(i32 %112)
  ret void
}

declare dso_local i32 @power_supply_am_i_supplied(i32) #1

declare dso_local i32 @charge_finished(%struct.s3c_adc_bat*) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
