; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_on_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_on_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s device has disconnected\0A\00", align 1
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"HS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FS/LS\00", align 1
@HW_USBPHY_CTRL = common dso_local global i64 0, align 8
@BM_USBPHY_CTRL_ENHOSTDISCONDETECT = common dso_local global i32 0, align 4
@HW_USBPHY_CTRL_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*, i32)* @mxs_phy_on_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_phy_on_disconnect(%struct.usb_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %6 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @USB_SPEED_HIGH, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 @dev_dbg(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %15 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HW_USBPHY_CTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = load i32, i32* @BM_USBPHY_CTRL_ENHOSTDISCONDETECT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i32, i32* @BM_USBPHY_CTRL_ENHOSTDISCONDETECT, align 4
  %25 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %26 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @HW_USBPHY_CTRL_CLR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  br label %31

31:                                               ; preds = %23, %2
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
