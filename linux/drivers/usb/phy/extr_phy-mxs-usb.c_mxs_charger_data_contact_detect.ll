; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_charger_data_contact_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_charger_data_contact_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_phy = type { %struct.TYPE_2__, %struct.regmap* }
%struct.TYPE_2__ = type { i32 }
%struct.regmap = type { i32 }

@ANADIG_USB1_VBUS_DET_STAT = common dso_local global i32 0, align 4
@ANADIG_USB1_VBUS_DET_STAT_VBUS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vbus is not valid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_CLR = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_EN_B = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_SET = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_CHK_CONTACT = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B = common dso_local global i32 0, align 4
@MXS_USB_CHARGER_DATA_CONTACT_TIMEOUT = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DET_STAT = common dso_local global i32 0, align 4
@ANADIG_USB1_CHRG_DET_STAT_PLUG_CONTACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Data pin can't make good contact.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_phy*)* @mxs_charger_data_contact_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_charger_data_contact_detect(%struct.mxs_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_phy*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxs_phy* %0, %struct.mxs_phy** %3, align 8
  %8 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %9 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %8, i32 0, i32 1
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = load i32, i32* @ANADIG_USB1_VBUS_DET_STAT, align 4
  %13 = call i32 @regmap_read(%struct.regmap* %11, i32 %12, i32* %7)
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ANADIG_USB1_VBUS_DET_STAT_VBUS_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %1
  %19 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %20 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %83

26:                                               ; preds = %1
  %27 = load %struct.regmap*, %struct.regmap** %4, align 8
  %28 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CLR, align 4
  %29 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_EN_B, align 4
  %30 = call i32 @regmap_write(%struct.regmap* %27, i32 %28, i32 %29)
  %31 = load %struct.regmap*, %struct.regmap** %4, align 8
  %32 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_SET, align 4
  %33 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CHK_CONTACT, align 4
  %34 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @regmap_write(%struct.regmap* %31, i32 %32, i32 %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %61, %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MXS_USB_CHARGER_DATA_CONTACT_TIMEOUT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load %struct.regmap*, %struct.regmap** %4, align 8
  %43 = load i32, i32* @ANADIG_USB1_CHRG_DET_STAT, align 4
  %44 = call i32 @regmap_read(%struct.regmap* %42, i32 %43, i32* %7)
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @ANADIG_USB1_CHRG_DET_STAT_PLUG_CONTACT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 5
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %64

55:                                               ; preds = %49
  %56 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %57

57:                                               ; preds = %55
  br label %60

58:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  %59 = call i32 @usleep_range(i32 5000, i32 6000)
  br label %60

60:                                               ; preds = %58, %57
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %37

64:                                               ; preds = %54, %37
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MXS_USB_CHARGER_DATA_CONTACT_TIMEOUT, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load %struct.mxs_phy*, %struct.mxs_phy** %3, align 8
  %70 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.regmap*, %struct.regmap** %4, align 8
  %75 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_SET, align 4
  %76 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_EN_B, align 4
  %77 = load i32, i32* @ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @regmap_write(%struct.regmap* %74, i32 %75, i32 %78)
  %80 = load i32, i32* @ENXIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %68, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
