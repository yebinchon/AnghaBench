; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-pistachio-usb.c_pistachio_usb_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-pistachio-usb.c_pistachio_usb_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.pistachio_usb_phy = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to enable PHY clock: %d\0A\00", align 1
@USB_PHY_STRAP_CONTROL = common dso_local global i32 0, align 4
@USB_PHY_STRAP_CONTROL_REFCLK_MASK = common dso_local global i32 0, align 4
@USB_PHY_STRAP_CONTROL_REFCLK_SHIFT = common dso_local global i32 0, align 4
@REFCLK_XO_CRYSTAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unsupported rate for XO crystal: %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@fsel_rate_map = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Unsupported clock rate: %lu\0A\00", align 1
@USB_PHY_CONTROL1 = common dso_local global i32 0, align 4
@USB_PHY_CONTROL1_FSEL_MASK = common dso_local global i32 0, align 4
@USB_PHY_CONTROL1_FSEL_SHIFT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@USB_PHY_STATUS = common dso_local global i32 0, align 4
@USB_PHY_STATUS_VBUS_FAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"VBUS fault detected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@USB_PHY_STATUS_RX_PHY_CLK = common dso_local global i32 0, align 4
@USB_PHY_STATUS_RX_UTMI_CLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Timed out waiting for PHY to power on\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @pistachio_usb_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pistachio_usb_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.pistachio_usb_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %10 = load %struct.phy*, %struct.phy** %3, align 8
  %11 = call %struct.pistachio_usb_phy* @phy_get_drvdata(%struct.phy* %10)
  store %struct.pistachio_usb_phy* %11, %struct.pistachio_usb_phy** %4, align 8
  %12 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %13 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_prepare_enable(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %20 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %2, align 4
  br label %154

25:                                               ; preds = %1
  %26 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %27 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB_PHY_STRAP_CONTROL, align 4
  %30 = load i32, i32* @USB_PHY_STRAP_CONTROL_REFCLK_MASK, align 4
  %31 = load i32, i32* @USB_PHY_STRAP_CONTROL_REFCLK_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %34 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_PHY_STRAP_CONTROL_REFCLK_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %32, i32 %37)
  %39 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %40 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @clk_get_rate(i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %44 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @REFCLK_XO_CRYSTAL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %25
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 12000000
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %53 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %148

59:                                               ; preds = %48, %25
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i64*, i64** @fsel_rate_map, align 8
  %63 = call i32 @ARRAY_SIZE(i64* %62)
  %64 = icmp ult i32 %61, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %60
  %66 = load i64, i64* %6, align 8
  %67 = load i64*, i64** @fsel_rate_map, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %78

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %60

78:                                               ; preds = %73, %60
  %79 = load i32, i32* %7, align 4
  %80 = load i64*, i64** @fsel_rate_map, align 8
  %81 = call i32 @ARRAY_SIZE(i64* %80)
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %85 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i64, i64* %6, align 8
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %148

91:                                               ; preds = %78
  %92 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %93 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @USB_PHY_CONTROL1, align 4
  %96 = load i32, i32* @USB_PHY_CONTROL1_FSEL_MASK, align 4
  %97 = load i32, i32* @USB_PHY_CONTROL1_FSEL_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @USB_PHY_CONTROL1_FSEL_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = call i32 @regmap_update_bits(i32 %94, i32 %95, i32 %98, i32 %101)
  %103 = load i64, i64* @jiffies, align 8
  %104 = call i64 @msecs_to_jiffies(i32 200)
  %105 = add i64 %103, %104
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %139, %91
  %107 = load i64, i64* @jiffies, align 8
  %108 = load i64, i64* %5, align 8
  %109 = call i64 @time_before(i64 %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %106
  %112 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %113 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @USB_PHY_STATUS, align 4
  %116 = call i32 @regmap_read(i32 %114, i32 %115, i32* %9)
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @USB_PHY_STATUS_VBUS_FAULT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %123 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @dev_err(i32 %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %8, align 4
  br label %148

128:                                              ; preds = %111
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* @USB_PHY_STATUS_RX_PHY_CLK, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @USB_PHY_STATUS_RX_UTMI_CLK, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %154

139:                                              ; preds = %133, %128
  %140 = call i32 @usleep_range(i32 1000, i32 1500)
  br label %106

141:                                              ; preds = %106
  %142 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %143 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @dev_err(i32 %144, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %146 = load i32, i32* @ETIMEDOUT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %141, %121, %83, %51
  %149 = load %struct.pistachio_usb_phy*, %struct.pistachio_usb_phy** %4, align 8
  %150 = getelementptr inbounds %struct.pistachio_usb_phy, %struct.pistachio_usb_phy* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clk_disable_unprepare(i32 %151)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %148, %138, %18
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.pistachio_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
