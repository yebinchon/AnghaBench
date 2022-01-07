; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_apply_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_apply_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_default = type { i32, i32 }
%struct.phy = type { i32 }
%struct.ltq_vrx200_pcie_phy_priv = type { i32 }

@ltq_vrx200_pcie_phy_apply_workarounds.slices = internal constant [3 x %struct.reg_default] [%struct.reg_default { i32 130, i32 131 }, %struct.reg_default { i32 128, i32 129 }, %struct.reg_default { i32 132, i32 133 }], align 16
@PCIE_PHY_TX2_MOD1 = common dso_local global i32 0, align 4
@PCIE_PHY_TX2_MOD2 = common dso_local global i32 0, align 4
@PCIE_PHY_TX2_MOD3 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_MOD1 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_MOD2 = common dso_local global i32 0, align 4
@PCIE_PHY_TX1_MOD3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @ltq_vrx200_pcie_phy_apply_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltq_vrx200_pcie_phy_apply_workarounds(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.ltq_vrx200_pcie_phy_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy* %5)
  store %struct.ltq_vrx200_pcie_phy_priv* %6, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %46, %1
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ARRAY_SIZE(%struct.reg_default* getelementptr inbounds ([3 x %struct.reg_default], [3 x %struct.reg_default]* @ltq_vrx200_pcie_phy_apply_workarounds.slices, i64 0, i64 0))
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %7
  %12 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [3 x %struct.reg_default], [3 x %struct.reg_default]* @ltq_vrx200_pcie_phy_apply_workarounds.slices, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x %struct.reg_default], [3 x %struct.reg_default]* @ltq_vrx200_pcie_phy_apply_workarounds.slices, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x %struct.reg_default], [3 x %struct.reg_default]* @ltq_vrx200_pcie_phy_apply_workarounds.slices, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regmap_update_bits(i32 %14, i32 %19, i32 %24, i32 %29)
  %31 = call i32 @udelay(i32 1)
  %32 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x %struct.reg_default], [3 x %struct.reg_default]* @ltq_vrx200_pcie_phy_apply_workarounds.slices, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [3 x %struct.reg_default], [3 x %struct.reg_default]* @ltq_vrx200_pcie_phy_apply_workarounds.slices, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.reg_default, %struct.reg_default* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @regmap_update_bits(i32 %34, i32 %39, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %11
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %7

49:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %96, %49
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 5
  br i1 %52, label %53, label %99

53:                                               ; preds = %50
  %54 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PCIE_PHY_TX2_MOD1, align 4
  %58 = call i32 @regmap_write(i32 %56, i32 %57, i32 8190)
  %59 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCIE_PHY_TX2_MOD2, align 4
  %63 = call i32 @regmap_write(i32 %61, i32 %62, i32 65534)
  %64 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %65 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PCIE_PHY_TX2_MOD3, align 4
  %68 = call i32 @regmap_write(i32 %66, i32 %67, i32 1537)
  %69 = call i32 @usleep_range(i32 1000, i32 2000)
  %70 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PCIE_PHY_TX2_MOD3, align 4
  %74 = call i32 @regmap_write(i32 %72, i32 %73, i32 1)
  %75 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %76 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @PCIE_PHY_TX1_MOD1, align 4
  %79 = call i32 @regmap_write(i32 %77, i32 %78, i32 8190)
  %80 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %81 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PCIE_PHY_TX1_MOD2, align 4
  %84 = call i32 @regmap_write(i32 %82, i32 %83, i32 65534)
  %85 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %86 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PCIE_PHY_TX1_MOD3, align 4
  %89 = call i32 @regmap_write(i32 %87, i32 %88, i32 1537)
  %90 = call i32 @usleep_range(i32 1000, i32 2000)
  %91 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %3, align 8
  %92 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PCIE_PHY_TX1_MOD3, align 4
  %95 = call i32 @regmap_write(i32 %93, i32 %94, i32 1)
  br label %96

96:                                               ; preds = %53
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %4, align 4
  br label %50

99:                                               ; preds = %50
  ret void
}

declare dso_local %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.reg_default*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
