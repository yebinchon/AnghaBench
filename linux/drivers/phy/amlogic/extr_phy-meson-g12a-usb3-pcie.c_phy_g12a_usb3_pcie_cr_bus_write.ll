; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_cr_bus_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/amlogic/extr_phy-meson-g12a-usb3-pcie.c_phy_g12a_usb3_pcie_cr_bus_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_g12a_usb3_pcie_priv = type { i32 }

@PHY_R4_PHY_CR_DATA_IN = common dso_local global i32 0, align 4
@PHY_R4 = common dso_local global i32 0, align 4
@PHY_R4_PHY_CR_CAP_DATA = common dso_local global i32 0, align 4
@PHY_R5 = common dso_local global i32 0, align 4
@PHY_R5_PHY_CR_ACK = common dso_local global i32 0, align 4
@PHY_R4_PHY_CR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @phy_g12a_usb3_pcie_cr_bus_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_g12a_usb3_pcie_cr_bus_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_g12a_usb3_pcie_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.phy_g12a_usb3_pcie_priv*
  store %struct.phy_g12a_usb3_pcie_priv* %13, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %14 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @phy_g12a_usb3_pcie_cr_bus_addr(%struct.phy_g12a_usb3_pcie_priv* %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %131

21:                                               ; preds = %3
  %22 = load i32, i32* @PHY_R4_PHY_CR_DATA_IN, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @FIELD_PREP(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %26 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PHY_R4, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %32 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PHY_R4, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @regmap_write(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %38 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PHY_R4, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @PHY_R4_PHY_CR_CAP_DATA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @regmap_write(i32 %39, i32 %40, i32 %43)
  %45 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %46 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PHY_R5, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @regmap_read_poll_timeout(i32 %47, i32 %48, i32 %49, i32 %52, i32 5, i32 1000)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %21
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %131

58:                                               ; preds = %21
  %59 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %60 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PHY_R4, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @regmap_write(i32 %61, i32 %62, i32 %63)
  %65 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %66 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @PHY_R5, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @regmap_read_poll_timeout(i32 %67, i32 %68, i32 %69, i32 %74, i32 5, i32 1000)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %131

80:                                               ; preds = %58
  %81 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %82 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PHY_R4, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @regmap_write(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %88 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PHY_R4, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @PHY_R4_PHY_CR_WRITE, align 4
  %93 = or i32 %91, %92
  %94 = call i32 @regmap_write(i32 %89, i32 %90, i32 %93)
  %95 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %96 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PHY_R5, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %102 = and i32 %100, %101
  %103 = call i32 @regmap_read_poll_timeout(i32 %97, i32 %98, i32 %99, i32 %102, i32 5, i32 1000)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %80
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %4, align 4
  br label %131

108:                                              ; preds = %80
  %109 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %110 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @PHY_R4, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @regmap_write(i32 %111, i32 %112, i32 %113)
  %115 = load %struct.phy_g12a_usb3_pcie_priv*, %struct.phy_g12a_usb3_pcie_priv** %8, align 8
  %116 = getelementptr inbounds %struct.phy_g12a_usb3_pcie_priv, %struct.phy_g12a_usb3_pcie_priv* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @PHY_R5, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @PHY_R5_PHY_CR_ACK, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @regmap_read_poll_timeout(i32 %117, i32 %118, i32 %119, i32 %124, i32 5, i32 1000)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %108
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %128, %106, %78, %56, %19
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @phy_g12a_usb3_pcie_cr_bus_addr(%struct.phy_g12a_usb3_pcie_priv*, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
