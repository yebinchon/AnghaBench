; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_charger_secondary_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_charger_secondary_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_phy = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@ANADIG_USB1_CHRG_DET_STAT = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DET_STAT_DM_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"It is a dedicate charging port\0A\00", align 1
@DCP_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"It is a charging downstream port\0A\00", align 1
@CDP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_phy*)* @mxs_charger_secondary_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_charger_secondary_detection(%struct.mxs_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_phy*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.mxs_phy* %0, %struct.mxs_phy** %3, align 8
  %6 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %7 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %6, i32 0, i32 1
  %8 = load %struct.regmap*, %struct.regmap** %7, align 8
  store %struct.regmap* %8, %struct.regmap** %4, align 8
  %9 = call i32 @msleep(i32 80)
  %10 = load %struct.regmap*, %struct.regmap** %4, align 8
  %11 = load i32, i32* @ANADIG_USB1_CHRG_DET_STAT, align 4
  %12 = call i32 @regmap_read(%struct.regmap* %10, i32 %11, i32* %5)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ANADIG_USB1_CHRG_DET_STAT_DM_STATE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %19 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @DCP_TYPE, align 4
  store i32 %23, i32* %2, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %26 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @CDP_TYPE, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
