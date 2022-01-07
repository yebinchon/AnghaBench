; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_get_battery_presence_and_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_get_battery_presence_and_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_client = type { i32 }
%union.power_supply_propval = type { i32 }

@sbs_data = common dso_local global %struct.TYPE_2__* null, align 8
@REG_STATUS = common dso_local global i64 0, align 8
@POWER_SUPPLY_PROP_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %union.power_supply_propval*)* @sbs_get_battery_presence_and_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_get_battery_presence_and_health(%struct.i2c_client* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %11 = load i64, i64* @REG_STATUS, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sbs_read_word_data(%struct.i2c_client* %9, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %24 = bitcast %union.power_supply_propval* %23 to i32*
  store i32 0, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %39

25:                                               ; preds = %18
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %33 = bitcast %union.power_supply_propval* %32 to i32*
  store i32 1, i32* %33, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %31
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %25, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @sbs_read_word_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
