; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_common.c_hdmi_parse_lanes_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_common.c_hdmi_parse_lanes_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.hdmi_phy_data = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"lanes\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"bad number of lanes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to read lane data\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to parse lane data\0A\00", align 1
@hdmi_parse_lanes_of.default_lanes = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_parse_lanes_of(%struct.platform_device* %0, %struct.device_node* %1, %struct.hdmi_phy_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.hdmi_phy_data*, align 8
  %8 = alloca %struct.property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.hdmi_phy_data* %2, %struct.hdmi_phy_data** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call %struct.property* @of_find_property(%struct.device_node* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %10)
  store %struct.property* %13, %struct.property** %8, align 8
  %14 = load %struct.property*, %struct.property** %8, align 8
  %15 = icmp ne %struct.property* %14, null
  br i1 %15, label %16, label %55

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %68

30:                                               ; preds = %16
  %31 = load %struct.device_node*, %struct.device_node** %6, align 8
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i32 @of_property_read_u32_array(%struct.device_node* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %32, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %68

43:                                               ; preds = %30
  %44 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %7, align 8
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %46 = call i32 @hdmi_phy_parse_lanes(%struct.hdmi_phy_data* %44, i32* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %68

54:                                               ; preds = %43
  br label %67

55:                                               ; preds = %3
  %56 = load %struct.hdmi_phy_data*, %struct.hdmi_phy_data** %7, align 8
  %57 = call i32 @hdmi_phy_parse_lanes(%struct.hdmi_phy_data* %56, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @hdmi_parse_lanes_of.default_lanes, i64 0, i64 0))
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i64 @WARN_ON(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %68

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %54
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %61, %49, %38, %24
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @hdmi_phy_parse_lanes(%struct.hdmi_phy_data*, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
