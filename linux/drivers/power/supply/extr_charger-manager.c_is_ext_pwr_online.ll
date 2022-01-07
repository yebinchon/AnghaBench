; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_ext_pwr_online.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_ext_pwr_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64* }
%union.power_supply_propval = type { i64 }
%struct.power_supply = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Cannot find power supply \22%s\22\0A\00", align 1
@POWER_SUPPLY_PROP_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @is_ext_pwr_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_ext_pwr_online(%struct.charger_manager* %0) #0 {
  %2 = alloca %struct.charger_manager*, align 8
  %3 = alloca %union.power_supply_propval, align 8
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %60, %1
  %9 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %10 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %8
  %20 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %21 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.power_supply* @power_supply_get_by_name(i64 %28)
  store %struct.power_supply* %29, %struct.power_supply** %4, align 8
  %30 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %31 = icmp ne %struct.power_supply* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %19
  %33 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %34 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.charger_manager*, %struct.charger_manager** %2, align 8
  %37 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %60

46:                                               ; preds = %19
  %47 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %48 = load i32, i32* @POWER_SUPPLY_PROP_ONLINE, align 4
  %49 = call i32 @power_supply_get_property(%struct.power_supply* %47, i32 %48, %union.power_supply_propval* %3)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %51 = call i32 @power_supply_put(%struct.power_supply* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = bitcast %union.power_supply_propval* %3 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %5, align 4
  br label %63

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %8

63:                                               ; preds = %58, %8
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.power_supply* @power_supply_get_by_name(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
