; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32 }

@PM2XXX_INT3_ITAUTOTIMEOUTWD = common dso_local global i32 0, align 4
@PM2XXX_INT3_ITCHPRECHARGEWD = common dso_local global i32 0, align 4
@PM2XXX_INT3_ITCHCCWD = common dso_local global i32 0, align 4
@PM2XXX_INT3_ITCHCVWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Watchdog occurred for precharge, CC and CV charge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pm2_int_reg2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2_int_reg2(i8* %0, i32 %1) #0 {
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
  %10 = load i32, i32* @PM2XXX_INT3_ITAUTOTIMEOUTWD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @pm2xxx_charger_wd_exp_mngt(%struct.pm2xxx_charger* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %13, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PM2XXX_INT3_ITCHPRECHARGEWD, align 4
  %20 = load i32, i32* @PM2XXX_INT3_ITCHCCWD, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PM2XXX_INT3_ITCHCVWD, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %28 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @pm2xxx_charger_wd_exp_mngt(%struct.pm2xxx_charger*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
