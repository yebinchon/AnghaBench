; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cpcap_phy_ddata = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@cpcap_phy_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not get irq %s: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.cpcap_phy_ddata*, i8*)* @cpcap_usb_init_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_init_irq(%struct.platform_device* %0, %struct.cpcap_phy_ddata* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.cpcap_phy_ddata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.cpcap_phy_ddata* %1, %struct.cpcap_phy_ddata** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @platform_get_irq_byname(%struct.platform_device* %10, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %6, align 8
  %20 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @cpcap_phy_irq_thread, align 4
  %24 = load i32, i32* @IRQF_SHARED, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %6, align 8
  %27 = call i32 @devm_request_threaded_irq(i32 %21, i32 %22, i32* null, i32 %23, i32 %24, i8* %25, %struct.cpcap_phy_ddata* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %6, align 8
  %32 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %30, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i8*, %struct.cpcap_phy_ddata*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
