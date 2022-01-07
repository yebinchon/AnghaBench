; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_cr_bus_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_cr_bus_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_g12a_usb3_pcie_priv = type { i32 }

@PHY_R4_PHY_CR_DATA_IN = common dso_local global i32 0, align 4
@PHY_R4 = common dso_local global i32 0, align 4
@PHY_R4_PHY_CR_CAP_ADDR = common dso_local global i32 0, align 4
@PHY_R5 = common dso_local global i32 0, align 4
@PHY_R5_PHY_CR_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_g12a_usb3_pcie_priv*, i32)* @phy_g12a_usb3_pcie_cr_bus_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_g12a_usb3_pcie_cr_bus_addr(%struct.phy_g12a_usb3_pcie_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_g12a_usb3_pcie_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.phy_g12a_usb3_pcie_priv* %0, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @PHY_R4_PHY_CR_DATA_IN, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @FIELD_PREP(i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  %13 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PHY_R4, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  %19 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PHY_R4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @regmap_write(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  %25 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PHY_R4, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PHY_R4_PHY_CR_CAP_ADDR, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_write(i32 %26, i32 %27, i32 %30)
  %32 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  %33 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PHY_R5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @regmap_read_poll_timeout(i32 %34, i32 %35, i32 %36, i32 %39, i32 5, i32 1000)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %2
  %46 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  %47 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PHY_R4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @regmap_write(i32 %48, i32 %49, i32 %50)
  %52 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %4, align 8
  %53 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHY_R5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @regmap_read_poll_timeout(i32 %54, i32 %55, i32 %56, i32 %62, i32 5, i32 1000)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %45
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %66, %43
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
