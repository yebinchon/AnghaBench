; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_rcar2.c_usbhs_rcar2_hardware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_rcar2.c_usbhs_rcar2_hardware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usbhs_priv = type { %struct.phy* }
%struct.phy = type { i32 }

@CONFIG_GENERIC_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @usbhs_rcar2_hardware_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhs_rcar2_hardware_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device* %6)
  store %struct.usbhs_priv* %7, %struct.usbhs_priv** %4, align 8
  %8 = load i32, i32* @CONFIG_GENERIC_PHY, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.phy* @phy_get(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.phy* %14, %struct.phy** %5, align 8
  %15 = load %struct.phy*, %struct.phy** %5, align 8
  %16 = call i64 @IS_ERR(%struct.phy* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.phy*, %struct.phy** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.phy* %19)
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %11
  %22 = load %struct.phy*, %struct.phy** %5, align 8
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %24 = getelementptr inbounds %struct.usbhs_priv, %struct.usbhs_priv* %23, i32 0, i32 0
  store %struct.phy* %22, %struct.phy** %24, align 8
  store i32 0, i32* %2, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %21, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.usbhs_priv* @usbhs_pdev_to_priv(%struct.platform_device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local %struct.phy* @phy_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
