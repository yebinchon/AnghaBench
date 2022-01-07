; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ab8500_usb = type { i64, i32, i32 }

@USB_HOST = common dso_local global i64 0, align 8
@USB_PERIPHERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ab8500_usb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ab8500_usb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ab8500_usb* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ab8500_usb* %5, %struct.ab8500_usb** %3, align 8
  %6 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %7 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %6, i32 0, i32 2
  %8 = call i32 @cancel_work_sync(i32* %7)
  %9 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %10 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %9, i32 0, i32 1
  %11 = call i32 @usb_remove_phy(i32* %10)
  %12 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %13 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @USB_HOST, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %19 = call i32 @ab8500_usb_host_phy_dis(%struct.ab8500_usb* %18)
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %22 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @USB_PERIPHERAL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.ab8500_usb*, %struct.ab8500_usb** %3, align 8
  %28 = call i32 @ab8500_usb_peri_phy_dis(%struct.ab8500_usb* %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29, %17
  ret i32 0
}

declare dso_local %struct.ab8500_usb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @usb_remove_phy(i32*) #1

declare dso_local i32 @ab8500_usb_host_phy_dis(%struct.ab8500_usb*) #1

declare dso_local i32 @ab8500_usb_peri_phy_dis(%struct.ab8500_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
