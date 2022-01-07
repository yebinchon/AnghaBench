; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-st.c_st_ohci_platform_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-st.c_st_ohci_platform_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.st_ohci_platform_priv = type { i64*, i32, i32, i32 }

@USB_MAX_CLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @st_ohci_platform_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_ohci_platform_power_off(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.st_ohci_platform_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.st_ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd* %8)
  store %struct.st_ohci_platform_priv* %9, %struct.st_ohci_platform_priv** %4, align 8
  %10 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %4, align 8
  %11 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @reset_control_assert(i32 %12)
  %14 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %4, align 8
  %15 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @reset_control_assert(i32 %16)
  %18 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %4, align 8
  %19 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @phy_power_off(i32 %20)
  %22 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %4, align 8
  %23 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @phy_exit(i32 %24)
  %26 = load i32, i32* @USB_MAX_CLKS, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %50, %1
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %4, align 8
  %33 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %31
  %41 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %4, align 8
  %42 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @clk_disable_unprepare(i64 %47)
  br label %49

49:                                               ; preds = %40, %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %28

53:                                               ; preds = %28
  ret void
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.st_ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
