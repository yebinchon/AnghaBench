; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_mtk_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_mtk_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xsphy_instance = type { i32, i32 }
%struct.mtk_xsphy = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to enable ref_clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"incompatible phy type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mtk_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.xsphy_instance*, align 8
  %5 = alloca %struct.mtk_xsphy*, align 8
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.xsphy_instance* @phy_get_drvdata(%struct.phy* %7)
  store %struct.xsphy_instance* %8, %struct.xsphy_instance** %4, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = getelementptr inbounds %struct.phy, %struct.phy* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mtk_xsphy* @dev_get_drvdata(i32 %12)
  store %struct.mtk_xsphy* %13, %struct.mtk_xsphy** %5, align 8
  %14 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %15 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_xsphy, %struct.mtk_xsphy* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %1
  %27 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %28 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %41 [
    i32 129, label %30
    i32 128, label %37
  ]

30:                                               ; preds = %26
  %31 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %5, align 8
  %32 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %33 = call i32 @u2_phy_instance_init(%struct.mtk_xsphy* %31, %struct.xsphy_instance* %32)
  %34 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %5, align 8
  %35 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %36 = call i32 @u2_phy_props_set(%struct.mtk_xsphy* %34, %struct.xsphy_instance* %35)
  br label %52

37:                                               ; preds = %26
  %38 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %5, align 8
  %39 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %40 = call i32 @u3_phy_props_set(%struct.mtk_xsphy* %38, %struct.xsphy_instance* %39)
  br label %52

41:                                               ; preds = %26
  %42 = load %struct.mtk_xsphy*, %struct.mtk_xsphy** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_xsphy, %struct.mtk_xsphy* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.xsphy_instance*, %struct.xsphy_instance** %4, align 8
  %47 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %37, %30
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %41, %20
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.xsphy_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.mtk_xsphy* @dev_get_drvdata(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @u2_phy_instance_init(%struct.mtk_xsphy*, %struct.xsphy_instance*) #1

declare dso_local i32 @u2_phy_props_set(%struct.mtk_xsphy*, %struct.xsphy_instance*) #1

declare dso_local i32 @u3_phy_props_set(%struct.mtk_xsphy*, %struct.xsphy_instance*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
