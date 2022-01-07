; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.phy_g12a_usb3_pcie_priv = type { i32, %struct.phy* }

@.str = private unnamed_addr constant [29 x i8] c"invalid number of arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PHY_TYPE_USB3 = common dso_local global i32 0, align 4
@PHY_TYPE_PCIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid phy mode select argument\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @phy_g12a_usb3_pcie_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @phy_g12a_usb3_pcie_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.phy_g12a_usb3_pcie_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.phy_g12a_usb3_pcie_priv* @dev_get_drvdata(%struct.device* %8)
  store %struct.phy_g12a_usb3_pcie_priv* %9, %struct.phy_g12a_usb3_pcie_priv** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.phy* @ERR_PTR(i32 %18)
  store %struct.phy* %19, %struct.phy** %3, align 8
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %22 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PHY_TYPE_USB3, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PHY_TYPE_PCIE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.phy* @ERR_PTR(i32 %37)
  store %struct.phy* %38, %struct.phy** %3, align 8
  br label %46

39:                                               ; preds = %29, %20
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %6, align 8
  %42 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %6, align 8
  %44 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %43, i32 0, i32 1
  %45 = load %struct.phy*, %struct.phy** %44, align 8
  store %struct.phy* %45, %struct.phy** %3, align 8
  br label %46

46:                                               ; preds = %39, %33, %14
  %47 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %47
}

declare dso_local %struct.phy_g12a_usb3_pcie_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
