; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_gpio_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/motorola/extr_phy-cpcap-usb.c_cpcap_usb_gpio_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_phy_ddata = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_phy_ddata*, i32)* @cpcap_usb_gpio_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_usb_gpio_set_mode(%struct.cpcap_phy_ddata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpcap_phy_ddata*, align 8
  %5 = alloca i32, align 4
  store %struct.cpcap_phy_ddata* %0, %struct.cpcap_phy_ddata** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %7 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %14 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %37

20:                                               ; preds = %12
  %21 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %22 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 1
  %28 = call i32 @gpiod_set_value(i32 %25, i32 %27)
  %29 = load %struct.cpcap_phy_ddata*, %struct.cpcap_phy_ddata** %4, align 8
  %30 = getelementptr inbounds %struct.cpcap_phy_ddata, %struct.cpcap_phy_ddata* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %34, 1
  %36 = call i32 @gpiod_set_value(i32 %33, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %20, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
