; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-hdmi.c_inno_hdmi_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.inno_hdmi_phy = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.inno_hdmi_phy*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Inno HDMI PHY Power Off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @inno_hdmi_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.inno_hdmi_phy*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = call %struct.inno_hdmi_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.inno_hdmi_phy* %6, %struct.inno_hdmi_phy** %4, align 8
  %7 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %8 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.inno_hdmi_phy*)*, i32 (%struct.inno_hdmi_phy*)** %12, align 8
  %14 = icmp ne i32 (%struct.inno_hdmi_phy*)* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %20 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.inno_hdmi_phy*)*, i32 (%struct.inno_hdmi_phy*)** %24, align 8
  %26 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %27 = call i32 %25(%struct.inno_hdmi_phy* %26)
  %28 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %29 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_disable_unprepare(i32 %30)
  %32 = load %struct.inno_hdmi_phy*, %struct.inno_hdmi_phy** %4, align 8
  %33 = getelementptr inbounds %struct.inno_hdmi_phy, %struct.inno_hdmi_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.inno_hdmi_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
