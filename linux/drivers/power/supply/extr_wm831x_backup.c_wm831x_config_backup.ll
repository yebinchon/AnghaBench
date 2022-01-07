; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_backup.c_wm831x_config_backup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_backup.c_wm831x_config_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.wm831x_pdata* }
%struct.wm831x_pdata = type { %struct.wm831x_backup_pdata* }
%struct.wm831x_backup_pdata = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"No backup battery charger configuration\0A\00", align 1
@WM831X_BKUP_CHG_ENA = common dso_local global i32 0, align 4
@WM831X_BKUP_BATT_DET_ENA = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_MODE = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_VLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid backup voltage limit %dmV\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid backup current limit %duA\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to unlock registers: %d\0A\00", align 1
@WM831X_BACKUP_CHARGER_CONTROL = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_ENA_MASK = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_MODE_MASK = common dso_local global i32 0, align 4
@WM831X_BKUP_BATT_DET_ENA_MASK = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_VLIM_MASK = common dso_local global i32 0, align 4
@WM831X_BKUP_CHG_ILIM_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to set backup charger config: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm831x*)* @wm831x_config_backup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm831x_config_backup(%struct.wm831x* %0) #0 {
  %2 = alloca %struct.wm831x*, align 8
  %3 = alloca %struct.wm831x_pdata*, align 8
  %4 = alloca %struct.wm831x_backup_pdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %2, align 8
  %7 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %8 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %10, align 8
  store %struct.wm831x_pdata* %11, %struct.wm831x_pdata** %3, align 8
  %12 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %3, align 8
  %13 = icmp ne %struct.wm831x_pdata* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %15, i32 0, i32 0
  %17 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %16, align 8
  %18 = icmp ne %struct.wm831x_backup_pdata* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %21 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @dev_warn(%struct.TYPE_3__* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %122

24:                                               ; preds = %14
  %25 = load %struct.wm831x_pdata*, %struct.wm831x_pdata** %3, align 8
  %26 = getelementptr inbounds %struct.wm831x_pdata, %struct.wm831x_pdata* %25, i32 0, i32 0
  %27 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %26, align 8
  store %struct.wm831x_backup_pdata* %27, %struct.wm831x_backup_pdata** %4, align 8
  store i32 0, i32* %6, align 4
  %28 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.wm831x_backup_pdata, %struct.wm831x_backup_pdata* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* @WM831X_BKUP_CHG_ENA, align 4
  %34 = load i32, i32* @WM831X_BKUP_BATT_DET_ENA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %24
  %39 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %4, align 8
  %40 = getelementptr inbounds %struct.wm831x_backup_pdata, %struct.wm831x_backup_pdata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @WM831X_BKUP_CHG_MODE, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %4, align 8
  %49 = getelementptr inbounds %struct.wm831x_backup_pdata, %struct.wm831x_backup_pdata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %56 [
    i32 2500, label %51
    i32 3100, label %52
  ]

51:                                               ; preds = %47
  br label %64

52:                                               ; preds = %47
  %53 = load i32, i32* @WM831X_BKUP_CHG_VLIM, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %64

56:                                               ; preds = %47
  %57 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %58 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %4, align 8
  %61 = getelementptr inbounds %struct.wm831x_backup_pdata, %struct.wm831x_backup_pdata* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(%struct.TYPE_3__* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %56, %52, %51
  %65 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %4, align 8
  %66 = getelementptr inbounds %struct.wm831x_backup_pdata, %struct.wm831x_backup_pdata* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %78 [
    i32 100, label %68
    i32 200, label %69
    i32 300, label %72
    i32 400, label %75
  ]

68:                                               ; preds = %64
  br label %86

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %86

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, 2
  store i32 %74, i32* %6, align 4
  br label %86

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, 3
  store i32 %77, i32* %6, align 4
  br label %86

78:                                               ; preds = %64
  %79 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %80 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load %struct.wm831x_backup_pdata*, %struct.wm831x_backup_pdata** %4, align 8
  %83 = getelementptr inbounds %struct.wm831x_backup_pdata, %struct.wm831x_backup_pdata* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(%struct.TYPE_3__* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %78, %75, %72, %69, %68
  %87 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %88 = call i32 @wm831x_reg_unlock(%struct.wm831x* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %93 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @dev_err(%struct.TYPE_3__* %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %122

97:                                               ; preds = %86
  %98 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %99 = load i32, i32* @WM831X_BACKUP_CHARGER_CONTROL, align 4
  %100 = load i32, i32* @WM831X_BKUP_CHG_ENA_MASK, align 4
  %101 = load i32, i32* @WM831X_BKUP_CHG_MODE_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @WM831X_BKUP_BATT_DET_ENA_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @WM831X_BKUP_CHG_VLIM_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @WM831X_BKUP_CHG_ILIM_MASK, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @wm831x_set_bits(%struct.wm831x* %98, i32 %99, i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %97
  %114 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %115 = getelementptr inbounds %struct.wm831x, %struct.wm831x* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @dev_err(%struct.TYPE_3__* %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %113, %97
  %120 = load %struct.wm831x*, %struct.wm831x** %2, align 8
  %121 = call i32 @wm831x_reg_lock(%struct.wm831x* %120)
  br label %122

122:                                              ; preds = %119, %91, %19
  ret void
}

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @wm831x_reg_unlock(%struct.wm831x*) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

declare dso_local i32 @wm831x_reg_lock(%struct.wm831x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
