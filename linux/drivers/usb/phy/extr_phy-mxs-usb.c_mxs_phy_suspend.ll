; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i64 }
%struct.mxs_phy = type { i32 }

@HW_USBPHY_PWD = common dso_local global i64 0, align 8
@BM_USBPHY_CTRL_CLKGATE = common dso_local global i32 0, align 4
@HW_USBPHY_CTRL_SET = common dso_local global i64 0, align 8
@HW_USBPHY_CTRL_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*, i32)* @mxs_phy_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_phy_suspend(%struct.usb_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mxs_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %11 = call %struct.mxs_phy* @to_mxs_phy(%struct.usb_phy* %10)
  store %struct.mxs_phy* %11, %struct.mxs_phy** %7, align 8
  %12 = load %struct.mxs_phy*, %struct.mxs_phy** %7, align 8
  %13 = call i32 @mxs_phy_is_low_speed_connection(%struct.mxs_phy* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mxs_phy*, %struct.mxs_phy** %7, align 8
  %15 = call i32 @mxs_phy_get_vbus_status(%struct.mxs_phy* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = call i32 (...) @mxs_phy_clock_switch_delay()
  %25 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %26 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HW_USBPHY_PWD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 -4194305, i64 %29)
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %33 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HW_USBPHY_PWD, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 -1, i64 %36)
  br label %38

38:                                               ; preds = %31, %23
  %39 = load i32, i32* @BM_USBPHY_CTRL_CLKGATE, align 4
  %40 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %41 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HW_USBPHY_CTRL_SET, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.mxs_phy*, %struct.mxs_phy** %7, align 8
  %47 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  br label %74

50:                                               ; preds = %2
  %51 = call i32 (...) @mxs_phy_clock_switch_delay()
  %52 = load %struct.mxs_phy*, %struct.mxs_phy** %7, align 8
  %53 = getelementptr inbounds %struct.mxs_phy, %struct.mxs_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_prepare_enable(i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %75

60:                                               ; preds = %50
  %61 = load i32, i32* @BM_USBPHY_CTRL_CLKGATE, align 4
  %62 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %63 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HW_USBPHY_CTRL_CLR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.usb_phy*, %struct.usb_phy** %4, align 8
  %69 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HW_USBPHY_PWD, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  br label %74

74:                                               ; preds = %60, %38
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %58
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.mxs_phy* @to_mxs_phy(%struct.usb_phy*) #1

declare dso_local i32 @mxs_phy_is_low_speed_connection(%struct.mxs_phy*) #1

declare dso_local i32 @mxs_phy_get_vbus_status(%struct.mxs_phy*) #1

declare dso_local i32 @mxs_phy_clock_switch_delay(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
