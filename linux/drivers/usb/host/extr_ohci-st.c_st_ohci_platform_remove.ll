; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-st.c_st_ohci_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-st.c_st_ohci_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ohci_pdata = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.usb_hcd = type { i32 }
%struct.st_ohci_platform_priv = type { i64* }

@USB_MAX_CLKS = common dso_local global i32 0, align 4
@ohci_platform_defaults = common dso_local global %struct.usb_ohci_pdata zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @st_ohci_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_ohci_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_ohci_pdata*, align 8
  %5 = alloca %struct.st_ohci_platform_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.usb_ohci_pdata* @dev_get_platdata(%struct.TYPE_2__* %10)
  store %struct.usb_ohci_pdata* %11, %struct.usb_ohci_pdata** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.st_ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd* %12)
  store %struct.st_ohci_platform_priv* %13, %struct.st_ohci_platform_priv** %5, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %15 = call i32 @usb_remove_hcd(%struct.usb_hcd* %14)
  %16 = load %struct.usb_ohci_pdata*, %struct.usb_ohci_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.usb_ohci_pdata, %struct.usb_ohci_pdata* %16, i32 0, i32 0
  %18 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.platform_device.0*)* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.usb_ohci_pdata*, %struct.usb_ohci_pdata** %4, align 8
  %22 = getelementptr inbounds %struct.usb_ohci_pdata, %struct.usb_ohci_pdata* %21, i32 0, i32 0
  %23 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %22, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = bitcast %struct.platform_device* %24 to %struct.platform_device.0*
  %26 = call i32 %23(%struct.platform_device.0* %25)
  br label %27

27:                                               ; preds = %20, %1
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %52, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @USB_MAX_CLKS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %34 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %32, %28
  %42 = phi i1 [ false, %28 ], [ %40, %32 ]
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = load %struct.st_ohci_platform_priv*, %struct.st_ohci_platform_priv** %5, align 8
  %45 = getelementptr inbounds %struct.st_ohci_platform_priv, %struct.st_ohci_platform_priv* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @clk_put(i64 %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %28

55:                                               ; preds = %41
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %57 = call i32 @usb_put_hcd(%struct.usb_hcd* %56)
  %58 = load %struct.usb_ohci_pdata*, %struct.usb_ohci_pdata** %4, align 8
  %59 = icmp eq %struct.usb_ohci_pdata* %58, @ohci_platform_defaults
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %60, %55
  ret i32 0
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.usb_ohci_pdata* @dev_get_platdata(%struct.TYPE_2__*) #1

declare dso_local %struct.st_ohci_platform_priv* @hcd_to_ohci_priv(%struct.usb_hcd*) #1

declare dso_local i32 @usb_remove_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @clk_put(i64) #1

declare dso_local i32 @usb_put_hcd(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
