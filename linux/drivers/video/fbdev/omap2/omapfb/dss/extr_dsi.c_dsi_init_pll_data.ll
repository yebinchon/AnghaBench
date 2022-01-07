; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_init_pll_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_init_pll_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, i32, %struct.dss_pll }
%struct.dss_pll = type { i8*, i32*, i32*, i32, %struct.clk*, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get sys_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dsi0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"dsi1\00", align 1
@DSS_PLL_DSI1 = common dso_local global i32 0, align 4
@DSS_PLL_DSI2 = common dso_local global i32 0, align 4
@dss_omap3_dsi_pll_hw = common dso_local global i32 0, align 4
@dss_omap4_dsi_pll_hw = common dso_local global i32 0, align 4
@dss_omap5_dsi_pll_hw = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dsi_pll_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_init_pll_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_init_pll_data(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.dss_pll*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %4, align 8
  %10 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %11 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %10, i32 0, i32 2
  store %struct.dss_pll* %11, %struct.dss_pll** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.clk* @devm_clk_get(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %14, %struct.clk** %6, align 8
  %15 = load %struct.clk*, %struct.clk** %6, align 8
  %16 = call i64 @IS_ERR(%struct.clk* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 @DSSERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.clk*, %struct.clk** %6, align 8
  %21 = call i32 @PTR_ERR(%struct.clk* %20)
  store i32 %21, i32* %2, align 4
  br label %74

22:                                               ; preds = %1
  %23 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %29 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %30 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %32 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @DSS_PLL_DSI1, align 4
  br label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @DSS_PLL_DSI2, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %42 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.clk*, %struct.clk** %6, align 8
  %44 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %45 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %44, i32 0, i32 4
  store %struct.clk* %43, %struct.clk** %45, align 8
  %46 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %47 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %50 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = call i32 (...) @omapdss_get_version()
  switch i32 %51, label %61 [
    i32 134, label %52
    i32 133, label %52
    i32 132, label %52
    i32 135, label %52
    i32 130, label %55
    i32 129, label %55
    i32 131, label %55
    i32 128, label %58
  ]

52:                                               ; preds = %39, %39, %39, %39
  %53 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %54 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %53, i32 0, i32 2
  store i32* @dss_omap3_dsi_pll_hw, i32** %54, align 8
  br label %64

55:                                               ; preds = %39, %39, %39
  %56 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %57 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %56, i32 0, i32 2
  store i32* @dss_omap4_dsi_pll_hw, i32** %57, align 8
  br label %64

58:                                               ; preds = %39
  %59 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %60 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %59, i32 0, i32 2
  store i32* @dss_omap5_dsi_pll_hw, i32** %60, align 8
  br label %64

61:                                               ; preds = %39
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %74

64:                                               ; preds = %58, %55, %52
  %65 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %66 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %65, i32 0, i32 1
  store i32* @dsi_pll_ops, i32** %66, align 8
  %67 = load %struct.dss_pll*, %struct.dss_pll** %5, align 8
  %68 = call i32 @dss_pll_register(%struct.dss_pll* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %61, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @omapdss_get_version(...) #1

declare dso_local i32 @dss_pll_register(%struct.dss_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
