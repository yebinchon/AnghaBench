; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.post_pll_config = type { i64, i32 }
%struct.phy = type { i32 }
%struct.inno_hdmi_phy = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.phy_config* }
%struct.TYPE_3__ = type { i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)* }
%struct.phy_config = type { i64 }

@post_pll_cfg_table = common dso_local global %struct.post_pll_config* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"TMDS clock is zero!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Inno HDMI PHY Power On\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @inno_hdmi_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.inno_hdmi_phy*, align 8
  %5 = alloca %struct.post_pll_config*, align 8
  %6 = alloca %struct.phy_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.inno_hdmi_phy* @phy_get_drvdata(%struct.phy* %9)
  store %struct.inno_hdmi_phy* %10, %struct.inno_hdmi_phy** %4, align 8
  %11 = load %struct.post_pll_config*, %struct.post_pll_config** @post_pll_cfg_table, align 8
  store %struct.post_pll_config* %11, %struct.post_pll_config** %5, align 8
  %12 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %13 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.phy_config*, %struct.phy_config** %15, align 8
  store %struct.phy_config* %16, %struct.phy_config** %6, align 8
  %17 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %18 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %19 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @inno_hdmi_phy_get_tmdsclk(%struct.inno_hdmi_phy* %17, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %26 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %133

31:                                               ; preds = %1
  %32 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %33 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)*, i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)** %37, align 8
  %39 = icmp ne i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %133

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %66, %43
  %45 = load %struct.post_pll_config*, %struct.post_pll_config** %5, align 8
  %46 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.post_pll_config*, %struct.post_pll_config** %5, align 8
  %52 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ule i64 %50, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49
  %56 = load %struct.post_pll_config*, %struct.post_pll_config** %5, align 8
  %57 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %60 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55, %49
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.post_pll_config*, %struct.post_pll_config** %5, align 8
  %68 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %67, i32 1
  store %struct.post_pll_config* %68, %struct.post_pll_config** %5, align 8
  br label %44

69:                                               ; preds = %64, %44
  br label %70

70:                                               ; preds = %83, %69
  %71 = load %struct.phy_config*, %struct.phy_config** %6, align 8
  %72 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.phy_config*, %struct.phy_config** %6, align 8
  %78 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ule i64 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.phy_config*, %struct.phy_config** %6, align 8
  %85 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %84, i32 1
  store %struct.phy_config* %85, %struct.phy_config** %6, align 8
  br label %70

86:                                               ; preds = %81, %70
  %87 = load %struct.post_pll_config*, %struct.post_pll_config** %5, align 8
  %88 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load %struct.phy_config*, %struct.phy_config** %6, align 8
  %93 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %86
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %133

99:                                               ; preds = %91
  %100 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %101 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %105 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @clk_prepare_enable(i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %133

112:                                              ; preds = %99
  %113 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %114 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %113, i32 0, i32 2
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)*, i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)** %118, align 8
  %120 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %121 = load %struct.post_pll_config*, %struct.post_pll_config** %5, align 8
  %122 = load %struct.phy_config*, %struct.phy_config** %6, align 8
  %123 = call i32 %119(%struct.inno_hdmi_phy* %120, %struct.post_pll_config* %121, %struct.phy_config* %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %112
  %127 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %128 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @clk_disable_unprepare(i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %126, %110, %96, %40, %24
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.inno_hdmi_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i64 @inno_hdmi_phy_get_tmdsclk(%struct.inno_hdmi_phy*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
