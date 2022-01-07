; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-dm816x-usb.c_dm816x_usb_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-dm816x-usb.c_dm816x_usb_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.dm816x_usb_phy = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"nonstandard phy refclk\0A\00", align 1
@DM816X_USB_CTRL_PHYCLKSRC = common dso_local global i32 0, align 4
@DM816X_USB_CTRL_PHYSLEEP1 = common dso_local global i32 0, align 4
@DM816X_USB_CTRL_PHYSLEEP0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Working dm816x USB_CTRL! (0x%08x)\0A\00", align 1
@DM816X_USBPHY_CTRL_TXRISETUNE = common dso_local global i32 0, align 4
@DM816X_USBPHY_CTRL_TXVREFTUNE = common dso_local global i32 0, align 4
@DM816X_USBPHY_CTRL_TXPREEMTUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @dm816x_usb_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm816x_usb_phy_init(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.dm816x_usb_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = call %struct.dm816x_usb_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.dm816x_usb_phy* %7, %struct.dm816x_usb_phy** %3, align 8
  %8 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %9 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_get_rate(i32 %10)
  %12 = icmp ne i32 %11, 24000000
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %15 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_warn(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %20 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %23 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DM816X_USB_CTRL_PHYCLKSRC, align 4
  %26 = load i32, i32* @DM816X_USB_CTRL_PHYSLEEP1, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DM816X_USB_CTRL_PHYSLEEP0, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @regmap_update_bits(i32 %21, i32 %24, i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %32 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %35 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regmap_read(i32 %33, i32 %36, i32* %4)
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %18
  %42 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %43 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_info(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %18
  %48 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %49 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %52 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @regmap_read(i32 %50, i32 %53, i32* %4)
  %55 = load i32, i32* @DM816X_USBPHY_CTRL_TXRISETUNE, align 4
  %56 = load i32, i32* @DM816X_USBPHY_CTRL_TXVREFTUNE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @DM816X_USBPHY_CTRL_TXPREEMTUNE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %63 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.dm816x_usb_phy*, %struct.dm816x_usb_phy** %3, align 8
  %66 = getelementptr inbounds %struct.dm816x_usb_phy, %struct.dm816x_usb_phy* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @regmap_write(i32 %64, i32 %67, i32 %68)
  ret i32 0
}

declare dso_local %struct.dm816x_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
