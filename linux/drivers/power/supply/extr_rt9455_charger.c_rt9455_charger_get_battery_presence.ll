; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_battery_presence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_battery_presence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }

@F_BATAB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to read BATAB bit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, %union.power_supply_propval*)* @rt9455_charger_get_battery_presence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_charger_get_battery_presence(%struct.rt9455_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt9455_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %8 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %9 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @F_BATAB, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regmap_field_read(i32 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %19 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
