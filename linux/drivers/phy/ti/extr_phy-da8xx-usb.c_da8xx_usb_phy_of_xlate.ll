; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-da8xx-usb.c_da8xx_usb_phy_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-da8xx-usb.c_da8xx_usb_phy_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.da8xx_usb_phy = type { %struct.phy*, %struct.phy* }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @da8xx_usb_phy_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @da8xx_usb_phy_of_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.da8xx_usb_phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.da8xx_usb_phy* @dev_get_drvdata(%struct.device* %7)
  store %struct.da8xx_usb_phy* %8, %struct.da8xx_usb_phy** %6, align 8
  %9 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %6, align 8
  %10 = icmp ne %struct.da8xx_usb_phy* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.phy* @ERR_PTR(i32 %13)
  store %struct.phy* %14, %struct.phy** %3, align 8
  br label %33

15:                                               ; preds = %2
  %16 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %29 [
    i32 0, label %21
    i32 1, label %25
  ]

21:                                               ; preds = %15
  %22 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %6, align 8
  %23 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %22, i32 0, i32 1
  %24 = load %struct.phy*, %struct.phy** %23, align 8
  store %struct.phy* %24, %struct.phy** %3, align 8
  br label %33

25:                                               ; preds = %15
  %26 = load %struct.da8xx_usb_phy*, %struct.da8xx_usb_phy** %6, align 8
  %27 = getelementptr inbounds %struct.da8xx_usb_phy, %struct.da8xx_usb_phy* %26, i32 0, i32 0
  %28 = load %struct.phy*, %struct.phy** %27, align 8
  store %struct.phy* %28, %struct.phy** %3, align 8
  br label %33

29:                                               ; preds = %15
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.phy* @ERR_PTR(i32 %31)
  store %struct.phy* %32, %struct.phy** %3, align 8
  br label %33

33:                                               ; preds = %29, %25, %21, %11
  %34 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %34
}

declare dso_local %struct.da8xx_usb_phy* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
