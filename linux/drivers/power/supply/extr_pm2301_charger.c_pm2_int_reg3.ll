; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32, i32 }

@PM2XXX_INT4_ITCHARGINGON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"chargind operation has started\0A\00", align 1
@PM2XXX_INT4_ITVRESUME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"battery discharged down to VResume threshold\0A\00", align 1
@PM2XXX_INT4_ITBATTFULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"battery fully detected\0A\00", align 1
@PM2XXX_INT4_ITCVPHASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"CV phase enter with 0.5C charging\0A\00", align 1
@PM2XXX_INT4_ITVPWR2OVV = common dso_local global i32 0, align 4
@PM2XXX_INT4_ITVPWR1OVV = common dso_local global i32 0, align 4
@VPWR_OVV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"VPWR/VSYSTEM overvoltage detected\0A\00", align 1
@PM2XXX_INT4_S_ITBATTEMPCOLD = common dso_local global i32 0, align 4
@PM2XXX_INT4_S_ITBATTEMPHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"BTEMP is too Low/High\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pm2_int_reg3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2_int_reg3(i8* %0, i32 %1) #0 {
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
  %10 = load i32, i32* @PM2XXX_INT4_ITCHARGINGON, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %15 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PM2XXX_INT4_ITVRESUME, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %25 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PM2XXX_INT4_ITBATTFULL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %35 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @PM2XXX_INT4_ITCVPHASE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %45 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PM2XXX_INT4_ITVPWR2OVV, align 4
  %51 = load i32, i32* @PM2XXX_INT4_ITVPWR1OVV, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load i32, i32* @VPWR_OVV, align 4
  %57 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %58 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PM2XXX_INT4_ITVPWR2OVV, align 4
  %62 = load i32, i32* @PM2XXX_INT4_ITVPWR1OVV, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = call i32 @pm2xxx_charger_ovv_mngt(%struct.pm2xxx_charger* %59, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %67 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %55, %48
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @PM2XXX_INT4_S_ITBATTEMPCOLD, align 4
  %73 = load i32, i32* @PM2XXX_INT4_S_ITBATTEMPHOT, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PM2XXX_INT4_S_ITBATTEMPCOLD, align 4
  %81 = load i32, i32* @PM2XXX_INT4_S_ITBATTEMPHOT, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = call i32 @pm2xxx_charger_batt_therm_mngt(%struct.pm2xxx_charger* %78, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %86 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %77, %70
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm2xxx_charger_ovv_mngt(%struct.pm2xxx_charger*, i32) #1

declare dso_local i32 @pm2xxx_charger_batt_therm_mngt(%struct.pm2xxx_charger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
