; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-xgene.c_xgene_phy_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.xgene_phy_ctx = type { i32, i32 }

@CLK_EXT_DIFF = common dso_local global i32 0, align 4
@SSC_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"PHY initialize failed %d\0A\00", align 1
@MAX_LANE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"PHY initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @xgene_phy_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_phy_hw_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.xgene_phy_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.xgene_phy_ctx* @phy_get_drvdata(%struct.phy* %7)
  store %struct.xgene_phy_ctx* %8, %struct.xgene_phy_ctx** %4, align 8
  %9 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %10 = load i32, i32* @CLK_EXT_DIFF, align 4
  %11 = load i32, i32* @SSC_DISABLE, align 4
  %12 = call i32 @xgene_phy_hw_initialize(%struct.xgene_phy_ctx* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %58

22:                                               ; preds = %1
  %23 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IS_ERR(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_prepare_enable(i32 %31)
  %33 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_disable_unprepare(i32 %35)
  %37 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_prepare_enable(i32 %39)
  br label %41

41:                                               ; preds = %28, %22
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %50, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @MAX_LANE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @xgene_phy_gen_avg_val(%struct.xgene_phy_ctx* %47, i32 %48)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %42

53:                                               ; preds = %42
  %54 = load %struct.xgene_phy_ctx*, %struct.xgene_phy_ctx** %4, align 8
  %55 = getelementptr inbounds %struct.xgene_phy_ctx, %struct.xgene_phy_ctx* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.xgene_phy_ctx* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @xgene_phy_hw_initialize(%struct.xgene_phy_ctx*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @xgene_phy_gen_avg_val(%struct.xgene_phy_ctx*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
