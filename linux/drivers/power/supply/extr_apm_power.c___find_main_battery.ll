; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_apm_power.c___find_main_battery.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_apm_power.c___find_main_battery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.find_bat_param = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@CHARGE_FULL_DESIGN = common dso_local global i32 0, align 4
@CHARGE_FULL = common dso_local global i32 0, align 4
@ENERGY_FULL_DESIGN = common dso_local global i32 0, align 4
@ENERGY_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__find_main_battery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__find_main_battery(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.find_bat_param*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.find_bat_param*
  store %struct.find_bat_param* %8, %struct.find_bat_param** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.TYPE_6__* @dev_get_drvdata(%struct.device* %9)
  %11 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %12 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %11, i32 0, i32 3
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %12, align 8
  %13 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %14 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %13, i32 0, i32 3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %23 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %22, i32 0, i32 3
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %26 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %25, i32 0, i32 6
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %26, align 8
  store i32 1, i32* %3, align 4
  br label %109

27:                                               ; preds = %2
  %28 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %29 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %28, i32 0, i32 3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* @CHARGE_FULL_DESIGN, align 4
  %32 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %33 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %32, i32 0, i32 2
  %34 = call i32 @PSY_PROP(%struct.TYPE_6__* %30, i32 %31, %struct.TYPE_7__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %38 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* @CHARGE_FULL, align 4
  %41 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %42 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %41, i32 0, i32 2
  %43 = call i32 @PSY_PROP(%struct.TYPE_6__* %39, i32 %40, %struct.TYPE_7__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %67, label %45

45:                                               ; preds = %36, %27
  %46 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %47 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %51 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %45
  %55 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %56 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %59 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %58, i32 0, i32 5
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  %60 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %61 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %65 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %54, %45
  br label %108

67:                                               ; preds = %36
  %68 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %69 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %68, i32 0, i32 3
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* @ENERGY_FULL_DESIGN, align 4
  %72 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %73 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %72, i32 0, i32 2
  %74 = call i32 @PSY_PROP(%struct.TYPE_6__* %70, i32 %71, %struct.TYPE_7__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %78 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* @ENERGY_FULL, align 4
  %81 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %82 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %81, i32 0, i32 2
  %83 = call i32 @PSY_PROP(%struct.TYPE_6__* %79, i32 %80, %struct.TYPE_7__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %76, %67
  %86 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %87 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %91 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %89, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %96 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %99 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %98, i32 0, i32 4
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %99, align 8
  %100 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %101 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.find_bat_param*, %struct.find_bat_param** %6, align 8
  %105 = getelementptr inbounds %struct.find_bat_param, %struct.find_bat_param* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %94, %85
  br label %107

107:                                              ; preds = %106, %76
  br label %108

108:                                              ; preds = %107, %66
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_6__* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @PSY_PROP(%struct.TYPE_6__*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
