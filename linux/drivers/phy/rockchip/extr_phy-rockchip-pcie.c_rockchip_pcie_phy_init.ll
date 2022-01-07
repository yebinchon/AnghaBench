; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-pcie.c_rockchip_pcie_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_pcie_instance = type { i32 }
%struct.rockchip_pcie_phy = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Fail to enable pcie ref clock.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"assert phy_rst err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_pcie_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pcie_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.phy_pcie_instance*, align 8
  %5 = alloca %struct.rockchip_pcie_phy*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy* %7)
  store %struct.phy_pcie_instance* %8, %struct.phy_pcie_instance** %4, align 8
  %9 = load %struct.phy_pcie_instance*, %struct.phy_pcie_instance** %4, align 8
  %10 = call %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance* %9)
  store %struct.rockchip_pcie_phy* %10, %struct.rockchip_pcie_phy** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %15 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %22 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.phy*, %struct.phy** %3, align 8
  %29 = getelementptr inbounds %struct.phy, %struct.phy* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %53

31:                                               ; preds = %20
  %32 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %33 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @reset_control_assert(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.phy*, %struct.phy** %3, align 8
  %40 = getelementptr inbounds %struct.phy, %struct.phy* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %48

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %46 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  store i32 0, i32* %2, align 4
  br label %62

48:                                               ; preds = %38
  %49 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %50 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @clk_disable_unprepare(i32 %51)
  br label %53

53:                                               ; preds = %48, %27
  %54 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %55 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.rockchip_pcie_phy*, %struct.rockchip_pcie_phy** %5, align 8
  %59 = getelementptr inbounds %struct.rockchip_pcie_phy, %struct.rockchip_pcie_phy* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %53, %44
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.phy_pcie_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.rockchip_pcie_phy* @to_pcie_phy(%struct.phy_pcie_instance*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
