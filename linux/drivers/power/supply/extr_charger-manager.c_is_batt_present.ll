; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_batt_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_batt_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { i32 }

@POWER_SUPPLY_PROP_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot find power supply \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @is_batt_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_batt_present(%struct.charger_manager* %0) #0 {
  %2 = alloca %struct.charger_manager*, align 8
  %3 = alloca %union.power_supply_propval, align 4
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %2, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %9 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %96 [
    i32 131, label %13
    i32 128, label %14
    i32 129, label %15
    i32 130, label %39
  ]

13:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %96

14:                                               ; preds = %1
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %17 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.power_supply* @power_supply_get_by_name(i32 %20)
  store %struct.power_supply* %21, %struct.power_supply** %4, align 8
  %22 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %23 = icmp ne %struct.power_supply* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %96

25:                                               ; preds = %15
  %26 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %27 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %28 = call i32 @power_supply_get_property(%struct.power_supply* %26, i32 %27, %union.power_supply_propval* %3)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = bitcast %union.power_supply_propval* %3 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31, %25
  %37 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %38 = call i32 @power_supply_put(%struct.power_supply* %37)
  br label %96

39:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %92, %39
  %41 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %42 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %40
  %52 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %53 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.power_supply* @power_supply_get_by_name(i32 %60)
  store %struct.power_supply* %61, %struct.power_supply** %4, align 8
  %62 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %63 = icmp ne %struct.power_supply* %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %51
  %65 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %66 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %69 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %92

78:                                               ; preds = %51
  %79 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %80 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %81 = call i32 @power_supply_get_property(%struct.power_supply* %79, i32 %80, %union.power_supply_propval* %3)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %83 = call i32 @power_supply_put(%struct.power_supply* %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = bitcast %union.power_supply_propval* %3 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 1, i32* %5, align 4
  br label %95

91:                                               ; preds = %86, %78
  br label %92

92:                                               ; preds = %91, %64
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %40

95:                                               ; preds = %90, %40
  br label %96

96:                                               ; preds = %1, %95, %36, %24, %14, %13
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.power_supply* @power_supply_get_by_name(i32) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
