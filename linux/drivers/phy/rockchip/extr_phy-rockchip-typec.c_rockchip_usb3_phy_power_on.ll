; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_usb3_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_rockchip_usb3_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_typec_phy = type { i32, i32, i32, %struct.rockchip_usb3phy_port_cfg* }
%struct.rockchip_usb3phy_port_cfg = type { %struct.usb3phy_reg }
%struct.usb3phy_reg = type { i32, i32 }

@MODE_DFP_USB = common dso_local global i32 0, align 4
@MODE_UFP_USB = common dso_local global i32 0, align 4
@MODE_DISCONNECT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_usb3_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb3_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  %4 = alloca %struct.rockchip_usb3phy_port_cfg*, align 8
  %5 = alloca %struct.usb3phy_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %10 = load %struct.phy*, %struct.phy** %2, align 8
  %11 = call %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy* %10)
  store %struct.rockchip_typec_phy* %11, %struct.rockchip_typec_phy** %3, align 8
  %12 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %13 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %12, i32 0, i32 3
  %14 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %13, align 8
  store %struct.rockchip_usb3phy_port_cfg* %14, %struct.rockchip_usb3phy_port_cfg** %4, align 8
  %15 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %4, align 8
  %16 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, %struct.rockchip_usb3phy_port_cfg* %15, i32 0, i32 0
  store %struct.usb3phy_reg* %16, %struct.usb3phy_reg** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %18 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %21 = call i32 @tcphy_get_mode(%struct.rockchip_typec_phy* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %8, align 4
  br label %105

26:                                               ; preds = %1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MODE_DFP_USB, align 4
  %29 = load i32, i32* @MODE_UFP_USB, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %35 = call i32 @tcphy_cfg_usb3_to_usb2_only(%struct.rockchip_typec_phy* %34, i32 1)
  br label %105

36:                                               ; preds = %26
  %37 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %38 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %105

43:                                               ; preds = %36
  %44 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %45 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MODE_DISCONNECT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @tcphy_phy_init(%struct.rockchip_typec_phy* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %105

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %43
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %90, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 100
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %63 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.usb3phy_reg*, %struct.usb3phy_reg** %5, align 8
  %66 = getelementptr inbounds %struct.usb3phy_reg, %struct.usb3phy_reg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regmap_read(i32 %64, i32 %67, i32* %9)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.usb3phy_reg*, %struct.usb3phy_reg** %5, align 8
  %71 = getelementptr inbounds %struct.usb3phy_reg, %struct.usb3phy_reg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = and i32 %69, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %88, label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @MODE_DFP_USB, align 4
  %79 = load i32, i32* @MODE_UFP_USB, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %77, %80
  %82 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %83 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %87 = call i32 @tcphy_cfg_usb3_to_usb2_only(%struct.rockchip_typec_phy* %86, i32 0)
  br label %105

88:                                               ; preds = %61
  %89 = call i32 @usleep_range(i32 10, i32 20)
  br label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %58

93:                                               ; preds = %58
  %94 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %95 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @MODE_DISCONNECT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %101 = call i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy* %100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %102, %76, %55, %42, %33, %24
  %106 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %107 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local %struct.rockchip_typec_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcphy_get_mode(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @tcphy_cfg_usb3_to_usb2_only(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @tcphy_phy_init(%struct.rockchip_typec_phy*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @tcphy_phy_deinit(%struct.rockchip_typec_phy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
