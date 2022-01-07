; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_dsi_init_pll_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_dsi_init_pll_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_pll_data = type { i32, %struct.dss_pll }
%struct.dss_pll = type { i8*, i32*, i32*, %struct.clk*, i32, i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get sys_clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@DSS_PLL_HDMI = common dso_local global i32 0, align 4
@dss_omap4_hdmi_pll_hw = common dso_local global i32 0, align 4
@dss_omap5_hdmi_pll_hw = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@dsi_pll_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.hdmi_pll_data*)* @dsi_init_pll_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_init_pll_data(%struct.platform_device* %0, %struct.hdmi_pll_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hdmi_pll_data*, align 8
  %6 = alloca %struct.dss_pll*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hdmi_pll_data* %1, %struct.hdmi_pll_data** %5, align 8
  %9 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %5, align 8
  %10 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %9, i32 0, i32 1
  store %struct.dss_pll* %10, %struct.dss_pll** %6, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.clk* @devm_clk_get(i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %13, %struct.clk** %7, align 8
  %14 = load %struct.clk*, %struct.clk** %7, align 8
  %15 = call i64 @IS_ERR(%struct.clk* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = call i32 @DSSERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.clk*, %struct.clk** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.clk* %19)
  store i32 %20, i32* %3, align 4
  br label %55

21:                                               ; preds = %2
  %22 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %23 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @DSS_PLL_HDMI, align 4
  %25 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %26 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %31 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %34 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %33, i32 0, i32 3
  store %struct.clk* %32, %struct.clk** %34, align 8
  %35 = call i32 (...) @omapdss_get_version()
  switch i32 %35, label %42 [
    i32 130, label %36
    i32 129, label %36
    i32 131, label %36
    i32 128, label %39
    i32 132, label %39
  ]

36:                                               ; preds = %21, %21, %21
  %37 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %38 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %37, i32 0, i32 2
  store i32* @dss_omap4_hdmi_pll_hw, i32** %38, align 8
  br label %45

39:                                               ; preds = %21, %21
  %40 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %41 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %40, i32 0, i32 2
  store i32* @dss_omap5_hdmi_pll_hw, i32** %41, align 8
  br label %45

42:                                               ; preds = %21
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %39, %36
  %46 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %47 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %46, i32 0, i32 1
  store i32* @dsi_pll_ops, i32** %47, align 8
  %48 = load %struct.dss_pll*, %struct.dss_pll** %6, align 8
  %49 = call i32 @dss_pll_register(%struct.dss_pll* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %52, %42, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

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
