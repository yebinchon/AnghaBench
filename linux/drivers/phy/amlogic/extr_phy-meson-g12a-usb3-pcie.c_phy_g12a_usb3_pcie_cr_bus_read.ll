; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_cr_bus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_cr_bus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_g12a_usb3_pcie_priv = type { i32 }

@PHY_R4 = common dso_local global i32 0, align 4
@PHY_R4_PHY_CR_READ = common dso_local global i32 0, align 4
@PHY_R5 = common dso_local global i32 0, align 4
@PHY_R5_PHY_CR_ACK = common dso_local global i32 0, align 4
@PHY_R5_PHY_CR_DATA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @phy_g12a_usb3_pcie_cr_bus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_g12a_usb3_pcie_cr_bus_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.phy_g12a_usb3_pcie_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.phy_g12a_usb3_pcie_priv*
  store %struct.phy_g12a_usb3_pcie_priv* %12, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %13 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @phy_g12a_usb3_pcie_cr_bus_addr(%struct.phy_g12a_usb3_pcie_priv* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %22 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PHY_R4, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 0)
  %26 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %27 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PHY_R4, align 4
  %30 = load i32, i32* @PHY_R4_PHY_CR_READ, align 4
  %31 = call i32 @regmap_write(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %33 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PHY_R5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @regmap_read_poll_timeout(i32 %34, i32 %35, i32 %36, i32 %39, i32 5, i32 1000)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %20
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %72

45:                                               ; preds = %20
  %46 = load i32, i32* @PHY_R5_PHY_CR_DATA_OUT, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @FIELD_GET(i32 %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %51 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PHY_R4, align 4
  %54 = call i32 @regmap_write(i32 %52, i32 %53, i32 0)
  %55 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %56 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PHY_R5, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i32 @regmap_read_poll_timeout(i32 %57, i32 %58, i32 %59, i32 %65, i32 5, i32 1000)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %45
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %69, %43, %18
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @phy_g12a_usb3_pcie_cr_bus_addr(%struct.phy_g12a_usb3_pcie_priv*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
