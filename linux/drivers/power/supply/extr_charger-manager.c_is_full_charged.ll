; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_full_charged.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_is_full_charged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.charger_desc* }
%struct.charger_desc = type { i64, i32, i64, i32 }
%union.power_supply_propval = type { i64 }
%struct.power_supply = type { i32 }

@POWER_SUPPLY_PROP_CHARGE_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_CAPACITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*)* @is_full_charged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_full_charged(%struct.charger_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.charger_manager*, align 8
  %4 = alloca %struct.charger_desc*, align 8
  %5 = alloca %union.power_supply_propval, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %3, align 8
  %10 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %11 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %10, i32 0, i32 0
  %12 = load %struct.charger_desc*, %struct.charger_desc** %11, align 8
  store %struct.charger_desc* %12, %struct.charger_desc** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %14 = call i32 @is_batt_present(%struct.charger_manager* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %19 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %18, i32 0, i32 0
  %20 = load %struct.charger_desc*, %struct.charger_desc** %19, align 8
  %21 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.power_supply* @power_supply_get_by_name(i32 %22)
  store %struct.power_supply* %23, %struct.power_supply** %6, align 8
  %24 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %25 = icmp ne %struct.power_supply* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %92

27:                                               ; preds = %17
  %28 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %29 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = bitcast %union.power_supply_propval* %5 to i64*
  store i64 0, i64* %33, align 8
  %34 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %35 = load i32, i32* @POWER_SUPPLY_PROP_CHARGE_FULL, align 4
  %36 = call i32 @power_supply_get_property(%struct.power_supply* %34, i32 %35, %union.power_supply_propval* %5)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = bitcast %union.power_supply_propval* %5 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %43 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %88

47:                                               ; preds = %39, %32
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %50 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %48
  %54 = load %struct.charger_manager*, %struct.charger_manager** %3, align 8
  %55 = call i32 @get_batt_uV(%struct.charger_manager* %54, i32* %9)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %61 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %88

65:                                               ; preds = %58, %53
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %68 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = bitcast %union.power_supply_propval* %5 to i64*
  store i64 0, i64* %72, align 8
  %73 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %74 = load i32, i32* @POWER_SUPPLY_PROP_CAPACITY, align 4
  %75 = call i32 @power_supply_get_property(%struct.power_supply* %73, i32 %74, %union.power_supply_propval* %5)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %71
  %79 = bitcast %union.power_supply_propval* %5 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.charger_desc*, %struct.charger_desc** %4, align 8
  %82 = getelementptr inbounds %struct.charger_desc, %struct.charger_desc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 1, i32* %7, align 4
  br label %88

86:                                               ; preds = %78, %71
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %85, %64, %46
  %89 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %90 = call i32 @power_supply_put(%struct.power_supply* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %26, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @is_batt_present(%struct.charger_manager*) #1

declare dso_local %struct.power_supply* @power_supply_get_by_name(i32) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @get_batt_uV(%struct.charger_manager*, i32*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
