; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_watchdog_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charger_watchdog_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_charger = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.pm2xxx_charger = type { i32 }

@POWER_SUPPLY_TYPE_MAINS = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@PM2XXX_BATT_WD_KICK = common dso_local global i32 0, align 4
@WD_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to kick WD!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ux500_charger*)* @pm2xxx_charger_watchdog_kick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_charger_watchdog_kick(%struct.ux500_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ux500_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm2xxx_charger*, align 8
  store %struct.ux500_charger* %0, %struct.ux500_charger** %3, align 8
  %6 = load %struct.ux500_charger*, %struct.ux500_charger** %3, align 8
  %7 = getelementptr inbounds %struct.ux500_charger, %struct.ux500_charger* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @POWER_SUPPLY_TYPE_MAINS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.ux500_charger*, %struct.ux500_charger** %3, align 8
  %17 = call %struct.pm2xxx_charger* @to_pm2xxx_charger_ac_device_info(%struct.ux500_charger* %16)
  store %struct.pm2xxx_charger* %17, %struct.pm2xxx_charger** %5, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %15
  %22 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %23 = load i32, i32* @PM2XXX_BATT_WD_KICK, align 4
  %24 = load i32, i32* @WD_TIMER, align 4
  %25 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %22, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %30 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.pm2xxx_charger* @to_pm2xxx_charger_ac_device_info(%struct.ux500_charger*) #1

declare dso_local i32 @pm2xxx_reg_write(%struct.pm2xxx_charger*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
