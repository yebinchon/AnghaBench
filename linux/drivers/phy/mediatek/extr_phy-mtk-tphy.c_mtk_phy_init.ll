; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-tphy.c_mtk_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_phy_instance = type { i32, i32 }
%struct.mtk_tphy = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable u3phya_ref\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to enable ref_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"incompatible PHY type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mtk_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.mtk_phy_instance*, align 8
  %5 = alloca %struct.mtk_tphy*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.mtk_phy_instance* @phy_get_drvdata(%struct.phy* %7)
  store %struct.mtk_phy_instance* %8, %struct.mtk_phy_instance** %4, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = getelementptr inbounds %struct.phy, %struct.phy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mtk_tphy* @dev_get_drvdata(i32 %12)
  store %struct.mtk_tphy* %13, %struct.mtk_tphy** %5, align 8
  %14 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %70

26:                                               ; preds = %1
  %27 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %28 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_prepare_enable(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %35 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %70

39:                                               ; preds = %26
  %40 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %41 = getelementptr inbounds %struct.mtk_phy_instance, %struct.mtk_phy_instance* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %62 [
    i32 129, label %43
    i32 128, label %50
    i32 131, label %54
    i32 130, label %58
  ]

43:                                               ; preds = %39
  %44 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %45 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %46 = call i32 @u2_phy_instance_init(%struct.mtk_tphy* %44, %struct.mtk_phy_instance* %45)
  %47 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %48 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %49 = call i32 @u2_phy_props_set(%struct.mtk_tphy* %47, %struct.mtk_phy_instance* %48)
  br label %69

50:                                               ; preds = %39
  %51 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %52 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %53 = call i32 @u3_phy_instance_init(%struct.mtk_tphy* %51, %struct.mtk_phy_instance* %52)
  br label %69

54:                                               ; preds = %39
  %55 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %56 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %57 = call i32 @pcie_phy_instance_init(%struct.mtk_tphy* %55, %struct.mtk_phy_instance* %56)
  br label %69

58:                                               ; preds = %39
  %59 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %60 = load %struct.mtk_phy_instance*, %struct.mtk_phy_instance** %4, align 8
  %61 = call i32 @sata_phy_instance_init(%struct.mtk_tphy* %59, %struct.mtk_phy_instance* %60)
  br label %69

62:                                               ; preds = %39
  %63 = load %struct.mtk_tphy*, %struct.mtk_tphy** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_tphy, %struct.mtk_tphy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %58, %54, %50, %43
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %62, %33, %20
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.mtk_phy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mtk_tphy* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @u2_phy_instance_init(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @u2_phy_props_set(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @u3_phy_instance_init(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @pcie_phy_instance_init(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

declare dso_local i32 @sata_phy_instance_init(%struct.mtk_tphy*, %struct.mtk_phy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
