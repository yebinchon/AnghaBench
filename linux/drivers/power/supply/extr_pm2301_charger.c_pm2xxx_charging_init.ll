; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charging_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_pm2301_charger.c_pm2xxx_charging_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm2xxx_charger = type { i32 }

@PM2XXX_BATT_CTRL_REG3 = common dso_local global i32 0, align 4
@PM2XXX_CH_WD_CV_PHASE_60MIN = common dso_local global i32 0, align 4
@PM2XXX_CH_WD_CC_PHASE_60MIN = common dso_local global i32 0, align 4
@PM2XXX_BATT_CTRL_REG4 = common dso_local global i32 0, align 4
@PM2XXX_CH_WD_PRECH_PHASE_60MIN = common dso_local global i32 0, align 4
@PM2XXX_BATT_CTRL_REG5 = common dso_local global i32 0, align 4
@PM2XXX_CH_WD_AUTO_TIMEOUT_20MIN = common dso_local global i32 0, align 4
@PM2XXX_BATT_CTRL_REG6 = common dso_local global i32 0, align 4
@PM2XXX_DIR_CH_CC_CURRENT_1000MA = common dso_local global i32 0, align 4
@PM2XXX_CH_PRECH_CURRENT_100MA = common dso_local global i32 0, align 4
@PM2XXX_CH_EOC_CURRENT_100MA = common dso_local global i32 0, align 4
@PM2XXX_BATT_CTRL_REG7 = common dso_local global i32 0, align 4
@PM2XXX_CH_PRECH_VOL_2_9 = common dso_local global i32 0, align 4
@PM2XXX_CH_VRESUME_VOL_3_8 = common dso_local global i32 0, align 4
@PM2XXX_BATT_CTRL_REG8 = common dso_local global i32 0, align 4
@PM2XXX_CH_VOLT_4_2 = common dso_local global i32 0, align 4
@PM2XXX_BATT_CTRL_REG9 = common dso_local global i32 0, align 4
@PM2XXX_CH_150MV_DROP_300MV = common dso_local global i32 0, align 4
@PM2XXX_CHARCHING_INFO_DIS = common dso_local global i32 0, align 4
@PM2XXX_CH_CC_REDUCED_CURRENT_IDENT = common dso_local global i32 0, align 4
@PM2XXX_CH_CC_MODEDROP_DIS = common dso_local global i32 0, align 4
@PM2XXX_INP_VOLT_VPWR2 = common dso_local global i32 0, align 4
@PM2XXX_VPWR2_OVV_10 = common dso_local global i32 0, align 4
@PM2XXX_INP_VOLT_VPWR1 = common dso_local global i32 0, align 4
@PM2XXX_VPWR1_OVV_10 = common dso_local global i32 0, align 4
@PM2XXX_INP_DROP_VPWR2 = common dso_local global i32 0, align 4
@PM2XXX_VPWR2_HW_OPT_DIS = common dso_local global i32 0, align 4
@PM2XXX_VPWR2_VALID_DIS = common dso_local global i32 0, align 4
@PM2XXX_VPWR2_DROP_DIS = common dso_local global i32 0, align 4
@PM2XXX_INP_DROP_VPWR1 = common dso_local global i32 0, align 4
@PM2XXX_VPWR1_HW_OPT_DIS = common dso_local global i32 0, align 4
@PM2XXX_VPWR1_VALID_DIS = common dso_local global i32 0, align 4
@PM2XXX_VPWR1_DROP_DIS = common dso_local global i32 0, align 4
@PM2XXX_BATT_LOW_LEV_COMP_REG = common dso_local global i32 0, align 4
@PM2XXX_VBAT_LOW_MONITORING_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm2xxx_charger*)* @pm2xxx_charging_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm2xxx_charging_init(%struct.pm2xxx_charger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm2xxx_charger*, align 8
  %4 = alloca i32, align 4
  store %struct.pm2xxx_charger* %0, %struct.pm2xxx_charger** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %6 = load i32, i32* @PM2XXX_BATT_CTRL_REG3, align 4
  %7 = load i32, i32* @PM2XXX_CH_WD_CV_PHASE_60MIN, align 4
  %8 = load i32, i32* @PM2XXX_CH_WD_CC_PHASE_60MIN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %5, i32 %6, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %17 = load i32, i32* @PM2XXX_BATT_CTRL_REG4, align 4
  %18 = load i32, i32* @PM2XXX_CH_WD_PRECH_PHASE_60MIN, align 4
  %19 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %21 = load i32, i32* @PM2XXX_BATT_CTRL_REG5, align 4
  %22 = load i32, i32* @PM2XXX_CH_WD_AUTO_TIMEOUT_20MIN, align 4
  %23 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %20, i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %25 = load i32, i32* @PM2XXX_BATT_CTRL_REG6, align 4
  %26 = load i32, i32* @PM2XXX_DIR_CH_CC_CURRENT_1000MA, align 4
  %27 = load i32, i32* @PM2XXX_CH_PRECH_CURRENT_100MA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @PM2XXX_CH_EOC_CURRENT_100MA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %24, i32 %25, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %33 = load i32, i32* @PM2XXX_BATT_CTRL_REG7, align 4
  %34 = load i32, i32* @PM2XXX_CH_PRECH_VOL_2_9, align 4
  %35 = load i32, i32* @PM2XXX_CH_VRESUME_VOL_3_8, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %32, i32 %33, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %39 = load i32, i32* @PM2XXX_BATT_CTRL_REG8, align 4
  %40 = load i32, i32* @PM2XXX_CH_VOLT_4_2, align 4
  %41 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %43 = load i32, i32* @PM2XXX_BATT_CTRL_REG9, align 4
  %44 = load i32, i32* @PM2XXX_CH_150MV_DROP_300MV, align 4
  %45 = load i32, i32* @PM2XXX_CHARCHING_INFO_DIS, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @PM2XXX_CH_CC_REDUCED_CURRENT_IDENT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @PM2XXX_CH_CC_MODEDROP_DIS, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %42, i32 %43, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %53 = load i32, i32* @PM2XXX_INP_VOLT_VPWR2, align 4
  %54 = load i32, i32* @PM2XXX_VPWR2_OVV_10, align 4
  %55 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %52, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %57 = load i32, i32* @PM2XXX_INP_VOLT_VPWR1, align 4
  %58 = load i32, i32* @PM2XXX_VPWR1_OVV_10, align 4
  %59 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %61 = load i32, i32* @PM2XXX_INP_DROP_VPWR2, align 4
  %62 = load i32, i32* @PM2XXX_VPWR2_HW_OPT_DIS, align 4
  %63 = load i32, i32* @PM2XXX_VPWR2_VALID_DIS, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @PM2XXX_VPWR2_DROP_DIS, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %60, i32 %61, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %69 = load i32, i32* @PM2XXX_INP_DROP_VPWR1, align 4
  %70 = load i32, i32* @PM2XXX_VPWR1_HW_OPT_DIS, align 4
  %71 = load i32, i32* @PM2XXX_VPWR1_VALID_DIS, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PM2XXX_VPWR1_DROP_DIS, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %68, i32 %69, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load %struct.pm2xxx_charger*, %struct.pm2xxx_charger** %3, align 8
  %77 = load i32, i32* @PM2XXX_BATT_LOW_LEV_COMP_REG, align 4
  %78 = load i32, i32* @PM2XXX_VBAT_LOW_MONITORING_ENA, align 4
  %79 = call i32 @pm2xxx_reg_write(%struct.pm2xxx_charger* %76, i32 %77, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %15, %13
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @pm2xxx_reg_write(%struct.pm2xxx_charger*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
