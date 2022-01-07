; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_set_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mxs-usb.c_mxs_phy_set_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_phy = type { i64 }
%struct.mxs_phy = type { i32 }

@BM_USBPHY_CTRL_ENVBUSCHG_WKUP = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENDPDMCHG_WKUP = common dso_local global i32 0, align 4
@BM_USBPHY_CTRL_ENIDCHG_WKUP = common dso_local global i32 0, align 4
@HW_USBPHY_CTRL_SET = common dso_local global i64 0, align 8
@HW_USBPHY_CTRL_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_phy*, i32)* @mxs_phy_set_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_phy_set_wakeup(%struct.usb_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mxs_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_phy* %0, %struct.usb_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %8 = call %struct.mxs_phy* @to_mxs_phy(%struct.usb_phy* %7)
  store %struct.mxs_phy* %8, %struct.mxs_phy** %5, align 8
  %9 = load i32, i32* @BM_USBPHY_CTRL_ENVBUSCHG_WKUP, align 4
  %10 = load i32, i32* @BM_USBPHY_CTRL_ENDPDMCHG_WKUP, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BM_USBPHY_CTRL_ENIDCHG_WKUP, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.mxs_phy*, %struct.mxs_phy** %5, align 8
  %18 = call i32 @mxs_phy_disconnect_line(%struct.mxs_phy* %17, i32 1)
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %21 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HW_USBPHY_CTRL_SET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  br label %36

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.usb_phy*, %struct.usb_phy** %3, align 8
  %29 = getelementptr inbounds %struct.usb_phy, %struct.usb_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HW_USBPHY_CTRL_CLR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 %27, i64 %32)
  %34 = load %struct.mxs_phy*, %struct.mxs_phy** %5, align 8
  %35 = call i32 @mxs_phy_disconnect_line(%struct.mxs_phy* %34, i32 0)
  br label %36

36:                                               ; preds = %26, %16
  ret i32 0
}

declare dso_local %struct.mxs_phy* @to_mxs_phy(%struct.usb_phy*) #1

declare dso_local i32 @mxs_phy_disconnect_line(%struct.mxs_phy*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
