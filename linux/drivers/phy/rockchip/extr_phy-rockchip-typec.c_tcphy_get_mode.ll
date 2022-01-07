; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { i32, i32, %struct.extcon_dev* }
%struct.extcon_dev = type { i32 }
%union.extcon_property_value = type { i64 }

@MODE_DFP_USB = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@EXTCON_DISP_DP = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@MODE_UFP_USB = common dso_local global i32 0, align 4
@MODE_DFP_DP = common dso_local global i32 0, align 4
@EXTCON_PROP_USB_SS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"get superspeed property failed\0A\00", align 1
@EXTCON_PROP_USB_TYPEC_POLARITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"get polarity property failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_typec_phy*)* @tcphy_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcphy_get_mode(%struct.rockchip_typec_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  %4 = alloca %struct.extcon_dev*, align 8
  %5 = alloca %union.extcon_property_value, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %3, align 8
  %11 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %11, i32 0, i32 2
  %13 = load %struct.extcon_dev*, %struct.extcon_dev** %12, align 8
  store %struct.extcon_dev* %13, %struct.extcon_dev** %4, align 8
  %14 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %15 = icmp ne %struct.extcon_dev* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @MODE_DFP_USB, align 4
  store i32 %17, i32* %2, align 4
  br label %82

18:                                               ; preds = %1
  %19 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %20 = load i32, i32* @EXTCON_USB, align 4
  %21 = call i32 @extcon_get_state(%struct.extcon_dev* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %23 = load i32, i32* @EXTCON_DISP_DP, align 4
  %24 = call i32 @extcon_get_state(%struct.extcon_dev* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MODE_DFP_USB, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @EXTCON_USB_HOST, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @MODE_UFP_USB, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @EXTCON_USB, align 4
  store i32 %31, i32* %6, align 4
  br label %60

32:                                               ; preds = %18
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i32, i32* @MODE_DFP_DP, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @EXTCON_DISP_DP, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @EXTCON_PROP_USB_SS, align 4
  %41 = call i32 @extcon_get_property(%struct.extcon_dev* %38, i32 %39, i32 %40, %union.extcon_property_value* %5)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %2, align 4
  br label %82

50:                                               ; preds = %35
  %51 = bitcast %union.extcon_property_value* %5 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @MODE_DFP_USB, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %54, %50
  br label %59

59:                                               ; preds = %58, %32
  br label %60

60:                                               ; preds = %59, %29
  %61 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @EXTCON_PROP_USB_TYPEC_POLARITY, align 4
  %64 = call i32 @extcon_get_property(%struct.extcon_dev* %61, i32 %62, i32 %63, %union.extcon_property_value* %5)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %69 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %2, align 4
  br label %82

73:                                               ; preds = %60
  %74 = bitcast %union.extcon_property_value* %5 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 1, i32 0
  %79 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %80 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %73, %67, %44, %16
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @extcon_get_state(%struct.extcon_dev*, i32) #1

declare dso_local i32 @extcon_get_property(%struct.extcon_dev*, i32, i32, %union.extcon_property_value*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
