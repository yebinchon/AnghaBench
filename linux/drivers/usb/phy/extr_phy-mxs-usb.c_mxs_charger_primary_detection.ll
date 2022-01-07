; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_charger_primary_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_charger_primary_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_phy = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@UNKNOWN_TYPE = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_CLR = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_CHK_CONTACT = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DET_STAT = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DET_STAT_CHRG_DETECTED = common dso_local global i32 0, align 4
@SDP_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"It is a standard downstream port\0A\00", align 1
@ANADIG_USB1_CHRG_DETECT_SET = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_EN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_phy*)* @mxs_charger_primary_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_charger_primary_detection(%struct.mxs_phy* %0) #0 {
  %2 = alloca %struct.mxs_phy*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxs_phy* %0, %struct.mxs_phy** %2, align 8
  %6 = load %struct.mxs_phy*, %struct.mxs_phy** %2, align 8
  %7 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %6, i32 0, i32 1
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %3, align 8
  %9 = load i32, i32* @UNKNOWN_TYPE, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.regmap*, %struct.regmap** %3, align 8
  %11 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CLR, align 4
  %12 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CHK_CONTACT, align 4
  %13 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @regmap_write(%struct.regmap* %10, i32 %11, i32 %14)
  %16 = call i32 @msleep(i32 100)
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = load i32, i32* @ANADIG_USB1_CHRG_DET_STAT, align 4
  %19 = call i32 @regmap_read(%struct.regmap* %17, i32 %18, i32* %5)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ANADIG_USB1_CHRG_DET_STAT_CHRG_DETECTED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @SDP_TYPE, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mxs_phy*, %struct.mxs_phy** %2, align 8
  %27 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_dbg(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_SET, align 4
  %34 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_EN_B, align 4
  %35 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @regmap_write(%struct.regmap* %32, i32 %33, i32 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
