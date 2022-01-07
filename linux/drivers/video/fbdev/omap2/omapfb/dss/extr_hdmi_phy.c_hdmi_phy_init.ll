; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_phy.c_hdmi_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_phy_data = type { i32 }
%struct.resource = type { i32 }

@phy_feat = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"can't get PHY mem resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"can't ioremap TX PHY\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_phy_init(%struct.platform_device* %0, %struct.hdmi_phy_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hdmi_phy_data*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hdmi_phy_data* %1, %struct.hdmi_phy_data** %5, align 8
  %7 = call i32 (...) @hdmi_phy_get_features()
  store i32 %7, i32* @phy_feat, align 4
  %8 = load i32, i32* @phy_feat, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %14, i32 %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %16, %struct.resource** %6, align 8
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = call i32 @DSSERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %13
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = call i32 @devm_ioremap_resource(i32* %25, %struct.resource* %26)
  %28 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %5, align 8
  %31 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %5, align 8
  %38 = getelementptr inbounds %struct.hdmi_phy_data, %struct.hdmi_phy_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %35, %19, %10
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @hdmi_phy_get_features(...) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
