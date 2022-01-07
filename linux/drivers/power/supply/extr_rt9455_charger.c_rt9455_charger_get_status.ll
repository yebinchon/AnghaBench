; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }

@F_PWR_RDY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to read PWR_RDY bit\0A\00", align 1
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@F_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to read STAT bits\0A\00", align 1
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, %union.power_supply_propval*)* @rt9455_charger_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_charger_get_status(%struct.rt9455_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt9455_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %9 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %10 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @F_PWR_RDY, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_field_read(i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %20 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %67

32:                                               ; preds = %25
  %33 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %34 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @F_STAT, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regmap_field_read(i32 %38, i32* %6)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %44 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %67

49:                                               ; preds = %32
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %63 [
    i32 0, label %51
    i32 1, label %55
    i32 2, label %59
  ]

51:                                               ; preds = %49
  %52 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %67

55:                                               ; preds = %49
  %56 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %67

59:                                               ; preds = %49
  %60 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %65 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %66 = bitcast %union.power_supply_propval* %65 to i32*
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %59, %55, %51, %42, %28, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
