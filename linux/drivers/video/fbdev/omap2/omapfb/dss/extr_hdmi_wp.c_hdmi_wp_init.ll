; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_wp_data = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wp\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"can't get WP mem resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"can't ioremap HDMI WP\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_wp_init(%struct.platform_device* %0, %struct.hdmi_wp_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hdmi_wp_data*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hdmi_wp_data* %1, %struct.hdmi_wp_data** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = load i32, i32* @IORESOURCE_MEM, align 4
  %9 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %7, i32 %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %9, %struct.resource** %6, align 8
  %10 = load %struct.resource*, %struct.resource** %6, align 8
  %11 = icmp ne %struct.resource* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %40

16:                                               ; preds = %2
  %17 = load %struct.resource*, %struct.resource** %6, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %21 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call i32 @devm_ioremap_resource(i32* %23, %struct.resource* %24)
  %26 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %27 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %16
  %34 = call i32 @DSSERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %5, align 8
  %36 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %33, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

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
