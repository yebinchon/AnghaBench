; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ralink/extr_phy-ralink-usb.c_ralink_usb_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ralink_usb_phy = type { %struct.TYPE_2__*, i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT_SYSC_REG_CLKCFG1 = common dso_local global i32 0, align 4
@RT_SYSC_REG_SYSCFG1 = common dso_local global i32 0, align 4
@RT_SYSCFG1_USB0_HOST_MODE = common dso_local global i32 0, align 4
@RT_SYSC_REG_USB_PHY_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"remote usb device wakeup %s\0A\00", align 1
@UDEV_WAKEUP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@USB_PHY_UTMI_8B60M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"UTMI 8bit 60MHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"UTMI 16bit 30MHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ralink_usb_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ralink_usb_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ralink_usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.ralink_usb_phy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.ralink_usb_phy* %6, %struct.ralink_usb_phy** %3, align 8
  %7 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %8 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RT_SYSC_REG_CLKCFG1, align 4
  %11 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %12 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %15 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %13, i32 %16)
  %18 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %19 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RT_SYSC_REG_SYSCFG1, align 4
  %22 = load i32, i32* @RT_SYSCFG1_USB0_HOST_MODE, align 4
  %23 = load i32, i32* @RT_SYSCFG1_USB0_HOST_MODE, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %26 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @reset_control_deassert(i32 %27)
  %29 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %30 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @reset_control_deassert(i32 %31)
  %33 = call i32 @mdelay(i32 10)
  %34 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %35 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %40 = call i32 @ralink_usb_phy_init(%struct.ralink_usb_phy* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %43 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RT_SYSC_REG_USB_PHY_CFG, align 4
  %46 = call i32 @regmap_read(i32 %44, i32 %45, i32* %4)
  %47 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %48 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @UDEV_WAKEUP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %57 = call i32 (i32*, i8*, ...) @dev_info(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @USB_PHY_UTMI_8B60M, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %41
  %63 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %64 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_info(i32* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %74

68:                                               ; preds = %41
  %69 = load %struct.ralink_usb_phy*, %struct.ralink_usb_phy** %3, align 8
  %70 = getelementptr inbounds %struct.ralink_usb_phy, %struct.ralink_usb_phy* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 (i32*, i8*, ...) @dev_info(i32* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %68, %62
  ret i32 0
}

declare dso_local %struct.ralink_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ralink_usb_phy_init(%struct.ralink_usb_phy*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
