; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb_phy_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-omap-usb2.c_omap_usb_phy_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_usb = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_usb*, i32)* @omap_usb_phy_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usb_phy_power(%struct.omap_usb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_usb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.omap_usb* %0, %struct.omap_usb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %9 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %14 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @omap_control_phy_power(i32 %15, i32 %16)
  store i32 0, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %23 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %27 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %31 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %34 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.omap_usb*, %struct.omap_usb** %4, align 8
  %37 = getelementptr inbounds %struct.omap_usb, %struct.omap_usb* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @regmap_update_bits(i32 %32, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %29, %12
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @omap_control_phy_power(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
