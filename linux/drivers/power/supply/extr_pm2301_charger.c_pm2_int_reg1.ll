; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32 }

@PM2XXX_INT2_ITVPWR1PLUG = common dso_local global i32 0, align 4
@PM2XXX_INT2_ITVPWR2PLUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Main charger plugged\0A\00", align 1
@PM2XXX_INT2_ITVPWR1UNPLUG = common dso_local global i32 0, align 4
@PM2XXX_INT2_ITVPWR2UNPLUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Main charger unplugged\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pm2_int_reg1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2_int_reg1(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pm2xxx_charger*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.pm2xxx_charger*
  store %struct.pm2xxx_charger* %8, %struct.pm2xxx_charger** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PM2XXX_INT2_ITVPWR1PLUG, align 4
  %11 = load i32, i32* @PM2XXX_INT2_ITVPWR2PLUG, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %17 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PM2XXX_INT2_ITVPWR1PLUG, align 4
  %23 = load i32, i32* @PM2XXX_INT2_ITVPWR2PLUG, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = call i32 @pm2xxx_charger_itv_pwr_plug_mngt(%struct.pm2xxx_charger* %20, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PM2XXX_INT2_ITVPWR1UNPLUG, align 4
  %30 = load i32, i32* @PM2XXX_INT2_ITVPWR2UNPLUG, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %36 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PM2XXX_INT2_ITVPWR1UNPLUG, align 4
  %42 = load i32, i32* @PM2XXX_INT2_ITVPWR2UNPLUG, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = call i32 @pm2xxx_charger_itv_pwr_unplug_mngt(%struct.pm2xxx_charger* %39, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %34, %27
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm2xxx_charger_itv_pwr_plug_mngt(%struct.pm2xxx_charger*, i32) #1

declare dso_local i32 @pm2xxx_charger_itv_pwr_unplug_mngt(%struct.pm2xxx_charger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
