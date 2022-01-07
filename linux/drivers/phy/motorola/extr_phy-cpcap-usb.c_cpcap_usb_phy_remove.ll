; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_phy_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_phy_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cpcap_phy_ddata = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"could not set UART mode\0A\00", align 1
@MUSB_VBUS_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"could not set mailbox\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_usb_phy_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_phy_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cpcap_phy_ddata*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.cpcap_phy_ddata* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.cpcap_phy_ddata* %6, %struct.cpcap_phy_ddata** %3, align 8
  %7 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %8 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %7, i32 0, i32 5
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %11 = call i32 @cpcap_usb_set_uart_mode(%struct.cpcap_phy_ddata* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %16 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @MUSB_VBUS_OFF, align 4
  %21 = call i32 @musb_mailbox(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %26 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %31 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %30, i32 0, i32 3
  %32 = call i32 @usb_remove_phy(i32* %31)
  %33 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %34 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %33, i32 0, i32 2
  %35 = call i32 @cancel_delayed_work_sync(i32* %34)
  %36 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %37 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_unprepare(i32 %38)
  %40 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %3, align 8
  %41 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_disable(i32 %42)
  ret i32 0
}

declare dso_local %struct.cpcap_phy_ddata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @cpcap_usb_set_uart_mode(%struct.cpcap_phy_ddata*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @musb_mailbox(i32) #1

declare dso_local i32 @usb_remove_phy(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
