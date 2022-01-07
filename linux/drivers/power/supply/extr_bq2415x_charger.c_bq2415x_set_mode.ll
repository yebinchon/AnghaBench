; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bq2415x_device = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BQ2415X_CHARGER_DISABLE = common dso_local global i32 0, align 4
@BQ2415X_BOOST_MODE_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"changing mode to: Offline\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"changing mode to: N/A\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"changing mode to: Host/HUB charger\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"changing mode to: Dedicated charger\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"changing mode to: Boost\0A\00", align 1
@BQ2415X_CHARGER_ENABLE = common dso_local global i32 0, align 4
@BQ2415X_BOOST_MODE_ENABLE = common dso_local global i32 0, align 4
@weak_battery_voltage = common dso_local global i32 0, align 4
@battery_regulation_voltage = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bq2415x_device*, i32)* @bq2415x_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_set_mode(%struct.bq2415x_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bq2415x_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bq2415x_device* %0, %struct.bq2415x_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 132
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 128
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %12
  br label %17

17:                                               ; preds = %16, %11
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %22 = load i32, i32* @BQ2415X_CHARGER_DISABLE, align 4
  %23 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %29 = load i32, i32* @BQ2415X_BOOST_MODE_DISABLE, align 4
  %30 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %114

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %73 [
    i32 128, label %38
    i32 129, label %45
    i32 130, label %52
    i32 131, label %59
    i32 132, label %66
  ]

38:                                               ; preds = %36
  %39 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %40 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_dbg(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %44 = call i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %43, i32 100)
  store i32 %44, i32* %6, align 4
  br label %73

45:                                               ; preds = %36
  %46 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %47 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %51 = call i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %50, i32 100)
  store i32 %51, i32* %6, align 4
  br label %73

52:                                               ; preds = %36
  %53 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %54 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %58 = call i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %57, i32 500)
  store i32 %58, i32* %6, align 4
  br label %73

59:                                               ; preds = %36
  %60 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %61 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_dbg(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %65 = call i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %64, i32 1800)
  store i32 %65, i32* %6, align 4
  br label %73

66:                                               ; preds = %36
  %67 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %68 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %71 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %72 = call i32 @bq2415x_set_current_limit(%struct.bq2415x_device* %71, i32 100)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %36, %66, %59, %52, %45, %38
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %114

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %83 = load i32, i32* @BQ2415X_CHARGER_ENABLE, align 4
  %84 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  br label %93

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %90 = load i32, i32* @BQ2415X_BOOST_MODE_ENABLE, align 4
  %91 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %89, i32 %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %85
  br label %93

93:                                               ; preds = %92, %81
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %114

98:                                               ; preds = %93
  %99 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %100 = load i32, i32* @weak_battery_voltage, align 4
  %101 = call i32 @bq2415x_set_default_value(%struct.bq2415x_device* %99, i32 %100)
  %102 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %103 = load i32, i32* @battery_regulation_voltage, align 4
  %104 = call i32 @bq2415x_set_default_value(%struct.bq2415x_device* %102, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %107 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.bq2415x_device*, %struct.bq2415x_device** %4, align 8
  %109 = getelementptr inbounds %struct.bq2415x_device, %struct.bq2415x_device* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = call i32 @sysfs_notify(i32* %112, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %98, %96, %76, %34
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @bq2415x_set_current_limit(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_set_default_value(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
