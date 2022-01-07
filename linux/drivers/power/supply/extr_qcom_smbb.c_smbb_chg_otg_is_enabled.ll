; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_chg_otg_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_chg_otg_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.smbb_charger = type { i32, i64, i32 }

@SMBB_USB_OTG_CTL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"failed to read OTG_CTL\0A\00", align 1
@OTG_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @smbb_chg_otg_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_chg_otg_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.smbb_charger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.smbb_charger* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.smbb_charger* %7, %struct.smbb_charger** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.smbb_charger*, %struct.smbb_charger** %3, align 8
  %9 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.smbb_charger*, %struct.smbb_charger** %3, align 8
  %12 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SMBB_USB_OTG_CTL, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @regmap_read(i32 %10, i64 %15, i32* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.smbb_charger*, %struct.smbb_charger** %3, align 8
  %21 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @OTG_CTL_EN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local %struct.smbb_charger* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
