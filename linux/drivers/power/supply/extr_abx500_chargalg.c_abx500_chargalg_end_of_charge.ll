; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_end_of_charge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_abx500_chargalg.c_abx500_chargalg_end_of_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_chargalg = type { i64, i64, i32, i64, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i64 0, align 8
@STATE_NORMAL = common dso_local global i64 0, align 8
@EOC_COND_CNT = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"EOC reached!\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c" EOC limit reached for the %d time, out of %d before EOC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abx500_chargalg*)* @abx500_chargalg_end_of_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abx500_chargalg_end_of_charge(%struct.abx500_chargalg* %0) #0 {
  %2 = alloca %struct.abx500_chargalg*, align 8
  store %struct.abx500_chargalg* %0, %struct.abx500_chargalg** %2, align 8
  %3 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %4 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @POWER_SUPPLY_STATUS_CHARGING, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %108

8:                                                ; preds = %1
  %9 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %10 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATE_NORMAL, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %108

14:                                               ; preds = %8
  %15 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %16 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %108, label %19

19:                                               ; preds = %14
  %20 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %21 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %25 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %24, i32 0, i32 7
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %30 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %29, i32 0, i32 7
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %23, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %19
  %39 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %40 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %46 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %108

50:                                               ; preds = %44, %38, %19
  %51 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %52 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %56 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %55, i32 0, i32 7
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %61 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %60, i32 0, i32 7
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %54, %67
  br i1 %68, label %69, label %108

69:                                               ; preds = %50
  %70 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %71 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %69
  %76 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %77 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load i64, i64* @EOC_COND_CNT, align 8
  %81 = icmp sge i64 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %84 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load i64, i64* @POWER_SUPPLY_STATUS_FULL, align 8
  %86 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %87 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %89 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  %90 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %91 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %95 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @power_supply_changed(i32 %96)
  br label %107

98:                                               ; preds = %75
  %99 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %100 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %103 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @EOC_COND_CNT, align 8
  %106 = call i32 (i32, i8*, ...) @dev_dbg(i32 %101, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %105)
  br label %107

107:                                              ; preds = %98, %82
  br label %111

108:                                              ; preds = %69, %50, %44, %14, %8, %1
  %109 = load %struct.abx500_chargalg*, %struct.abx500_chargalg** %2, align 8
  %110 = getelementptr inbounds %struct.abx500_chargalg, %struct.abx500_chargalg* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %107
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
