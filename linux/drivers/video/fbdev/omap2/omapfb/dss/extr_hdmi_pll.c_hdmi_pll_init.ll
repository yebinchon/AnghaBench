; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_hdmi_pll_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_pll.c_hdmi_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_pll_data = type { i32, %struct.hdmi_wp_data* }
%struct.hdmi_wp_data = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't get PLL mem resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"can't ioremap PLLCTRL\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to init HDMI PLL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_pll_init(%struct.platform_device* %0, %struct.hdmi_pll_data* %1, %struct.hdmi_wp_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.hdmi_pll_data*, align 8
  %7 = alloca %struct.hdmi_wp_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.hdmi_pll_data* %1, %struct.hdmi_pll_data** %6, align 8
  store %struct.hdmi_wp_data* %2, %struct.hdmi_wp_data** %7, align 8
  %10 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %11 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %6, align 8
  %12 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %11, i32 0, i32 1
  store %struct.hdmi_wp_data* %10, %struct.hdmi_wp_data** %12, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
  %15 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %13, i32 %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %15, %struct.resource** %9, align 8
  %16 = load %struct.resource*, %struct.resource** %9, align 8
  %17 = icmp ne %struct.resource* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %3
  %23 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.resource*, %struct.resource** %9, align 8
  %26 = call i32 @devm_ioremap_resource(i32* %24, %struct.resource* %25)
  %27 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %6, align 8
  %28 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %6, align 8
  %30 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = call i32 @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %6, align 8
  %37 = getelementptr inbounds %struct.hdmi_pll_data, %struct.hdmi_pll_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %50

40:                                               ; preds = %22
  %41 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %42 = load %struct.hdmi_pll_data*, %struct.hdmi_pll_data** %6, align 8
  %43 = call i32 @dsi_init_pll_data(%struct.platform_device* %41, %struct.hdmi_pll_data* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46, %34, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dsi_init_pll_data(%struct.platform_device*, %struct.hdmi_pll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
