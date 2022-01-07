; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2_int_reg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32, i32 }

@PM2XXX_INT5_ITVSYSTEMOVV = common dso_local global i32 0, align 4
@VSYSTEM_OVV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VSYSTEM overvoltage detected\0A\00", align 1
@PM2XXX_INT5_ITTHERMALWARNINGFALL = common dso_local global i32 0, align 4
@PM2XXX_INT5_ITTHERMALWARNINGRISE = common dso_local global i32 0, align 4
@PM2XXX_INT5_ITTHERMALSHUTDOWNFALL = common dso_local global i32 0, align 4
@PM2XXX_INT5_ITTHERMALSHUTDOWNRISE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"BTEMP die temperature is too Low/High\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pm2_int_reg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2_int_reg4(i8* %0, i32 %1) #0 {
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
  %10 = load i32, i32* @PM2XXX_INT5_ITVSYSTEMOVV, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* @VSYSTEM_OVV, align 4
  %15 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %16 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PM2XXX_INT5_ITVSYSTEMOVV, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @pm2xxx_charger_ovv_mngt(%struct.pm2xxx_charger* %17, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %23 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %13, %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PM2XXX_INT5_ITTHERMALWARNINGFALL, align 4
  %29 = load i32, i32* @PM2XXX_INT5_ITTHERMALWARNINGRISE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @PM2XXX_INT5_ITTHERMALSHUTDOWNFALL, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @PM2XXX_INT5_ITTHERMALSHUTDOWNRISE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %27, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %26
  %38 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %39 = getelementptr inbounds %struct.pm2xxx_charger, %struct.pm2xxx_charger* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PM2XXX_INT5_ITTHERMALWARNINGFALL, align 4
  %45 = load i32, i32* @PM2XXX_INT5_ITTHERMALWARNINGRISE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PM2XXX_INT5_ITTHERMALSHUTDOWNFALL, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PM2XXX_INT5_ITTHERMALSHUTDOWNRISE, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %43, %50
  %52 = call i32 @pm2xxx_charger_die_therm_mngt(%struct.pm2xxx_charger* %42, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %37, %26
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @pm2xxx_charger_ovv_mngt(%struct.pm2xxx_charger*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @pm2xxx_charger_die_therm_mngt(%struct.pm2xxx_charger*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
