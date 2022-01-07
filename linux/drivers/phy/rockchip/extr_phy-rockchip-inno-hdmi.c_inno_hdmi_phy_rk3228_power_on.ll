; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3228_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_rk3228_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi_phy = type { i32 }
%struct.post_pll_config = type { i32, i32, i32, i32 }
%struct.phy_config = type { i32* }

@RK3228_PDATAEN_DISABLE = common dso_local global i32 0, align 4
@RK3228_PRE_PLL_POWER_DOWN = common dso_local global i32 0, align 4
@RK3228_POST_PLL_POWER_DOWN = common dso_local global i32 0, align 4
@RK3228_POST_PLL_PRE_DIV_MASK = common dso_local global i32 0, align 4
@RK3228_POST_PLL_FB_DIV_8_MASK = common dso_local global i32 0, align 4
@RK3228_POST_PLL_POST_DIV_ENABLE = common dso_local global i32 0, align 4
@RK3228_POST_PLL_POST_DIV_MASK = common dso_local global i32 0, align 4
@RK3228_BANDGAP_ENABLE = common dso_local global i32 0, align 4
@RK3228_TMDS_DRIVER_ENABLE = common dso_local global i32 0, align 4
@RK3228_POST_PLL_LOCK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Post-PLL locking failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi_phy*, %struct.post_pll_config*, %struct.phy_config*)* @inno_hdmi_phy_rk3228_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_rk3228_power_on(%struct.inno_hdmi_phy* %0, %struct.post_pll_config* %1, %struct.phy_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inno_hdmi_phy*, align 8
  %6 = alloca %struct.post_pll_config*, align 8
  %7 = alloca %struct.phy_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inno_hdmi_phy* %0, %struct.inno_hdmi_phy** %5, align 8
  store %struct.post_pll_config* %1, %struct.post_pll_config** %6, align 8
  store %struct.phy_config* %2, %struct.phy_config** %7, align 8
  %11 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %12 = load i32, i32* @RK3228_PDATAEN_DISABLE, align 4
  %13 = load i32, i32* @RK3228_PDATAEN_DISABLE, align 4
  %14 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %11, i32 2, i32 %12, i32 %13)
  %15 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %16 = load i32, i32* @RK3228_PRE_PLL_POWER_DOWN, align 4
  %17 = load i32, i32* @RK3228_POST_PLL_POWER_DOWN, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @RK3228_PRE_PLL_POWER_DOWN, align 4
  %20 = load i32, i32* @RK3228_POST_PLL_POWER_DOWN, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %15, i32 224, i32 %18, i32 %21)
  %23 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %24 = load i32, i32* @RK3228_POST_PLL_PRE_DIV_MASK, align 4
  %25 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %26 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RK3228_POST_PLL_PRE_DIV(i32 %27)
  %29 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %23, i32 233, i32 %24, i32 %28)
  %30 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %31 = load i32, i32* @RK3228_POST_PLL_FB_DIV_8_MASK, align 4
  %32 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %33 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @RK3228_POST_PLL_FB_DIV_8(i32 %34)
  %36 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %30, i32 235, i32 %31, i32 %35)
  %37 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %38 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %39 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RK3228_POST_PLL_FB_DIV_7_0(i32 %40)
  %42 = call i32 @inno_write(%struct.inno_hdmi_phy* %37, i32 234, i32 %41)
  %43 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %44 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %3
  %48 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %49 = load i32, i32* @RK3228_POST_PLL_POST_DIV_ENABLE, align 4
  %50 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %48, i32 233, i32 %49, i32 0)
  br label %66

51:                                               ; preds = %3
  %52 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %53 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %54, 2
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %58 = load i32, i32* @RK3228_POST_PLL_POST_DIV_ENABLE, align 4
  %59 = load i32, i32* @RK3228_POST_PLL_POST_DIV_ENABLE, align 4
  %60 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %57, i32 233, i32 %58, i32 %59)
  %61 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %62 = load i32, i32* @RK3228_POST_PLL_POST_DIV_MASK, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @RK3228_POST_PLL_POST_DIV(i32 %63)
  %65 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %61, i32 235, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %51, %47
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 239, %72
  %74 = load %struct.phy_config*, %struct.phy_config** %7, align 8
  %75 = getelementptr inbounds %struct.phy_config, %struct.phy_config* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @inno_write(%struct.inno_hdmi_phy* %71, i32 %73, i32 %80)
  br label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %67

85:                                               ; preds = %67
  %86 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %87 = load i32, i32* @RK3228_PRE_PLL_POWER_DOWN, align 4
  %88 = load i32, i32* @RK3228_POST_PLL_POWER_DOWN, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %86, i32 224, i32 %89, i32 0)
  %91 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %92 = load i32, i32* @RK3228_BANDGAP_ENABLE, align 4
  %93 = load i32, i32* @RK3228_BANDGAP_ENABLE, align 4
  %94 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %91, i32 225, i32 %92, i32 %93)
  %95 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %96 = load i32, i32* @RK3228_TMDS_DRIVER_ENABLE, align 4
  %97 = load i32, i32* @RK3228_TMDS_DRIVER_ENABLE, align 4
  %98 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %95, i32 225, i32 %96, i32 %97)
  %99 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @RK3228_POST_PLL_LOCK_STATUS, align 4
  %103 = and i32 %101, %102
  %104 = call i32 @inno_poll(%struct.inno_hdmi_phy* %99, i32 235, i32 %100, i32 %103, i32 100, i32 100000)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %85
  %108 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %109 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %124

113:                                              ; preds = %85
  %114 = load %struct.post_pll_config*, %struct.post_pll_config** %6, align 8
  %115 = getelementptr inbounds %struct.post_pll_config, %struct.post_pll_config* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 340000000
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 @msleep(i32 100)
  br label %120

120:                                              ; preds = %118, %113
  %121 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %5, align 8
  %122 = load i32, i32* @RK3228_PDATAEN_DISABLE, align 4
  %123 = call i32 @inno_update_bits(%struct.inno_hdmi_phy* %121, i32 2, i32 %122, i32 0)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %107
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @inno_update_bits(%struct.inno_hdmi_phy*, i32, i32, i32) #1

declare dso_local i32 @RK3228_POST_PLL_PRE_DIV(i32) #1

declare dso_local i32 @RK3228_POST_PLL_FB_DIV_8(i32) #1

declare dso_local i32 @inno_write(%struct.inno_hdmi_phy*, i32, i32) #1

declare dso_local i32 @RK3228_POST_PLL_FB_DIV_7_0(i32) #1

declare dso_local i32 @RK3228_POST_PLL_POST_DIV(i32) #1

declare dso_local i32 @inno_poll(%struct.inno_hdmi_phy*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
