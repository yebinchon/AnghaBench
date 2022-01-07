; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_dp_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_dp_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_typec_phy = type { i32, i32, i32, i64, %struct.rockchip_usb3phy_port_cfg* }
%struct.rockchip_usb3phy_port_cfg = type { i32 }

@MODE_DFP_DP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MODE_DISCONNECT = common dso_local global i32 0, align 4
@readl = common dso_local global i32 0, align 4
@DP_MODE_CTL = common dso_local global i64 0, align 8
@DP_MODE_A2 = common dso_local global i32 0, align 4
@PHY_MODE_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to wait TCPHY enter A2\0A\00", align 1
@DP_MODE_ENTER_A0 = common dso_local global i32 0, align 4
@DP_MODE_A0 = common dso_local global i32 0, align 4
@DP_MODE_ENTER_A2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to wait TCPHY enter A0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_dp_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  %4 = alloca %struct.rockchip_usb3phy_port_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %8 = load %struct.phy*, %struct.phy** %2, align 8
  %9 = call %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy* %8)
  store %struct.rockchip_typec_phy* %9, %struct.rockchip_typec_phy** %3, align 8
  %10 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %11 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %10, i32 0, i32 4
  %12 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %11, align 8
  store %struct.rockchip_usb3phy_port_cfg* %12, %struct.rockchip_usb3phy_port_cfg** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %17 = call i32 @tcphy_get_mode(%struct.rockchip_typec_phy* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %6, align 4
  br label %144

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MODE_DFP_DP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %144

30:                                               ; preds = %22
  %31 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %32 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %144

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MODE_DFP_DP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %43 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MODE_DISCONNECT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %49 = call i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy* %48)
  %50 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @tcphy_phy_init(%struct.rockchip_typec_phy* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %64

53:                                               ; preds = %41, %37
  %54 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %55 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MODE_DISCONNECT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @tcphy_phy_init(%struct.rockchip_typec_phy* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %144

68:                                               ; preds = %64
  %69 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %70 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %4, align 8
  %71 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, %struct.rockchip_usb3phy_port_cfg* %70, i32 0, i32 0
  %72 = call i32 @property_enable(%struct.rockchip_typec_phy* %69, i32* %71, i32 1)
  %73 = load i32, i32* @readl, align 4
  %74 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %75 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @DP_MODE_CTL, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @DP_MODE_A2, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @PHY_MODE_SET_TIMEOUT, align 4
  %84 = call i32 @readx_poll_timeout(i32 %73, i64 %78, i32 %79, i32 %82, i32 1000, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %68
  %88 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %89 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %134

92:                                               ; preds = %68
  %93 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %94 = call i32 @tcphy_dp_aux_calibration(%struct.rockchip_typec_phy* %93)
  %95 = load i32, i32* @DP_MODE_ENTER_A0, align 4
  %96 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %97 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DP_MODE_CTL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load i32, i32* @readl, align 4
  %103 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %104 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @DP_MODE_CTL, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @DP_MODE_A0, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @PHY_MODE_SET_TIMEOUT, align 4
  %113 = call i32 @readx_poll_timeout(i32 %102, i64 %107, i32 %108, i32 %111, i32 1000, i32 %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %92
  %117 = load i32, i32* @DP_MODE_ENTER_A2, align 4
  %118 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %119 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @DP_MODE_CTL, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %125 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %134

128:                                              ; preds = %92
  %129 = load i32, i32* @MODE_DFP_DP, align 4
  %130 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %131 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 8
  br label %134

134:                                              ; preds = %128, %116, %87
  %135 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %136 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @MODE_DISCONNECT, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %142 = call i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy* %141)
  br label %143

143:                                              ; preds = %140, %134
  br label %144

144:                                              ; preds = %143, %67, %36, %27, %20
  %145 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %146 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %145, i32 0, i32 1
  %147 = call i32 @mutex_unlock(i32* %146)
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcphy_get_mode(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_phy_init(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @property_enable(%struct.rockchip_typec_phy*, i32*, i32) #1

declare dso_local i32 @readx_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tcphy_dp_aux_calibration(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
