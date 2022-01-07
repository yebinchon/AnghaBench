; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-vrx200-pcie.c_ltq_vrx200_pcie_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.ltq_vrx200_pcie_phy_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @ltq_vrx200_pcie_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_vrx200_pcie_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.ltq_vrx200_pcie_phy_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy* %6)
  store %struct.ltq_vrx200_pcie_phy_priv* %7, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %8 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %8, i32 0, i32 5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @of_device_is_big_endian(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %17 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %20 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %23 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regmap_update_bits(i32 %18, i32 %21, i32 %24, i32 %27)
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %31 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %37 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @regmap_update_bits(i32 %32, i32 %35, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %29, %15
  %41 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %42 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @reset_control_assert(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %73

48:                                               ; preds = %40
  %49 = call i32 @udelay(i32 1)
  %50 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %51 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @reset_control_deassert(i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %73

57:                                               ; preds = %48
  %58 = call i32 @udelay(i32 1)
  %59 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %60 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @reset_control_deassert(i32 %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %68

66:                                               ; preds = %57
  %67 = call i32 @usleep_range(i32 20, i32 40)
  store i32 0, i32* %2, align 4
  br label %75

68:                                               ; preds = %65
  %69 = load %struct.ltq_vrx200_pcie_phy_priv*, %struct.ltq_vrx200_pcie_phy_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ltq_vrx200_pcie_phy_priv, %struct.ltq_vrx200_pcie_phy_priv* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @reset_control_assert(i32 %71)
  br label %73

73:                                               ; preds = %68, %56, %47
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ltq_vrx200_pcie_phy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i64 @of_device_is_big_endian(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
