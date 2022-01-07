; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_init_pcie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_init_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i64, i32*, i32, %struct.miphy28lp_dev* }
%struct.miphy28lp_dev = type { i32, i32 }

@SYSCFG_SATA = common dso_local global i64 0, align 8
@SYSCFG_PCI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"pcie-up mode, addr 0x%p\0A\00", align 1
@SATA_CTRL_MASK = common dso_local global i32 0, align 4
@SATA_CTRL_SELECT_PCIE = common dso_local global i32 0, align 4
@PCIE_CTRL_MASK = common dso_local global i32 0, align 4
@SYSCFG_PCIE_PCIE_VAL = common dso_local global i32 0, align 4
@MIPHY_CTRL_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"PCIe phy setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy28lp_init_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_init_pcie(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca %struct.miphy28lp_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %6 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %7 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %6, i32 0, i32 3
  %8 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %7, align 8
  store %struct.miphy28lp_dev* %8, %struct.miphy28lp_dev** %4, align 8
  %9 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %10 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @SYSCFG_SATA, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %18 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @SYSCFG_PCI, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %26 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %31 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29, %24, %16, %1
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %120

37:                                               ; preds = %29
  %38 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %39 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %42 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_info(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %46 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %49 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @SYSCFG_SATA, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SATA_CTRL_MASK, align 4
  %55 = load i32, i32* @SATA_CTRL_SELECT_PCIE, align 4
  %56 = call i32 @regmap_update_bits(i32 %47, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %58 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %61 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @SYSCFG_PCI, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PCIE_CTRL_MASK, align 4
  %67 = load i32, i32* @SYSCFG_PCIE_PCIE_VAL, align 4
  %68 = call i32 @regmap_update_bits(i32 %59, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %70 = load i32, i32* @MIPHY_CTRL_DEFAULT, align 4
  %71 = call i32 @miphy28lp_setup(%struct.miphy28lp_phy* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %37
  %75 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %76 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %120

80:                                               ; preds = %37
  %81 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %82 = call i32 @miphy28lp_configure_pcie(%struct.miphy28lp_phy* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %120

87:                                               ; preds = %80
  %88 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %89 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 260
  %92 = call i32 @writeb_relaxed(i32 104, i64 %91)
  %93 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %94 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 261
  %97 = call i32 @writeb_relaxed(i32 97, i64 %96)
  %98 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %99 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 264
  %102 = call i32 @writeb_relaxed(i32 104, i64 %101)
  %103 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %104 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 265
  %107 = call i32 @writeb_relaxed(i32 97, i64 %106)
  %108 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %109 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 268
  %112 = call i32 @writeb_relaxed(i32 104, i64 %111)
  %113 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %114 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 269
  %117 = call i32 @writeb_relaxed(i32 96, i64 %116)
  %118 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %119 = call i32 @miphy_is_ready(%struct.miphy28lp_phy* %118)
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %87, %85, %74, %34
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @miphy28lp_setup(%struct.miphy28lp_phy*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @miphy28lp_configure_pcie(%struct.miphy28lp_phy*) #1

declare dso_local i32 @writeb_relaxed(i32, i64) #1

declare dso_local i32 @miphy_is_ready(%struct.miphy28lp_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
