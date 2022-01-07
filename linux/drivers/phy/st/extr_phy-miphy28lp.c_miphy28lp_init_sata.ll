; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_init_sata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/st/extr_phy-miphy28lp.c_miphy28lp_init_sata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.miphy28lp_phy = type { i32, i32*, i32, %struct.miphy28lp_dev* }
%struct.miphy28lp_dev = type { i32, i32 }

@SATA_CTRL_SELECT_SATA = common dso_local global i32 0, align 4
@SYSCFG_SATA = common dso_local global i64 0, align 8
@SYSCFG_PCI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sata-up mode, addr 0x%p\0A\00", align 1
@SATA_GEN1 = common dso_local global i32 0, align 4
@SATA_SPDMODE = common dso_local global i32 0, align 4
@SATA_CTRL_MASK = common dso_local global i32 0, align 4
@PCIE_CTRL_MASK = common dso_local global i32 0, align 4
@SATA_CTRL_SELECT_PCIE = common dso_local global i32 0, align 4
@MIPHY_CTRL_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"SATA phy setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.miphy28lp_phy*)* @miphy28lp_init_sata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @miphy28lp_init_sata(%struct.miphy28lp_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.miphy28lp_phy*, align 8
  %4 = alloca %struct.miphy28lp_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.miphy28lp_phy* %0, %struct.miphy28lp_phy** %3, align 8
  %7 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %8 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %7, i32 0, i32 3
  %9 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %8, align 8
  store %struct.miphy28lp_dev* %9, %struct.miphy28lp_dev** %4, align 8
  %10 = load i32, i32* @SATA_CTRL_SELECT_SATA, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %12 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @SYSCFG_SATA, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %20 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @SYSCFG_PCI, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %28 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %18, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %91

34:                                               ; preds = %26
  %35 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %36 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %39 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %43 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SATA_GEN1, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load i32, i32* @SATA_SPDMODE, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %52 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %55 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @SYSCFG_SATA, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SATA_CTRL_MASK, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @regmap_update_bits(i32 %53, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %64 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %67 = getelementptr inbounds %struct.miphy28lp_phy, %struct.miphy28lp_phy* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @SYSCFG_PCI, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PCIE_CTRL_MASK, align 4
  %73 = load i32, i32* @SATA_CTRL_SELECT_PCIE, align 4
  %74 = call i32 @regmap_update_bits(i32 %65, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %76 = load i32, i32* @MIPHY_CTRL_DEFAULT, align 4
  %77 = call i32 @miphy28lp_setup(%struct.miphy28lp_phy* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %34
  %81 = load %struct.miphy28lp_dev*, %struct.miphy28lp_dev** %4, align 8
  %82 = getelementptr inbounds %struct.miphy28lp_dev, %struct.miphy28lp_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_err(i32 %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %91

86:                                               ; preds = %34
  %87 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %88 = call i32 @miphy28lp_configure_sata(%struct.miphy28lp_phy* %87)
  %89 = load %struct.miphy28lp_phy*, %struct.miphy28lp_phy** %3, align 8
  %90 = call i32 @miphy_is_ready(%struct.miphy28lp_phy* %89)
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %80, %31
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @miphy28lp_setup(%struct.miphy28lp_phy*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @miphy28lp_configure_sata(%struct.miphy28lp_phy*) #1

declare dso_local i32 @miphy_is_ready(%struct.miphy28lp_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
