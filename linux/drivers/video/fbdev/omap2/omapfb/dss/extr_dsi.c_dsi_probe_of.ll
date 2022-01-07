; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dsi_data = type { i32, i32 }
%struct.property = type { i32 }
%struct.omap_dsi_pin_config = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"lanes\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to find lane data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"bad number of lanes\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to read lane data\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to configure pins\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca [10 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.omap_dsi_pin_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %4, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %18)
  store %struct.dsi_data* %19, %struct.dsi_data** %5, align 8
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call %struct.device_node* @omapdss_of_get_first_endpoint(%struct.device_node* %20)
  store %struct.device_node* %21, %struct.device_node** %12, align 8
  %22 = load %struct.device_node*, %struct.device_node** %12, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %109

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %12, align 8
  %27 = call %struct.property* @of_find_property(%struct.device_node* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8)
  store %struct.property* %27, %struct.property** %6, align 8
  %28 = load %struct.property*, %struct.property** %6, align 8
  %29 = icmp eq %struct.property* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @dev_err(%struct.TYPE_2__* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %105

36:                                               ; preds = %25
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 4
  br i1 %42, label %54, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = srem i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %50 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = icmp sgt i32 %48, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47, %43, %36
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_2__* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %105

60:                                               ; preds = %47
  %61 = load %struct.device_node*, %struct.device_node** %12, align 8
  %62 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @of_property_read_u32_array(%struct.device_node* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_2__* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %105

71:                                               ; preds = %60
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %13, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %89, %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i64], [10 x i64]* %7, i64 0, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.omap_dsi_pin_config, %struct.omap_dsi_pin_config* %13, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %83, i32* %88, align 4
  br label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %94 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %93, i32 0, i32 1
  %95 = call i32 @dsi_configure_pins(i32* %94, %struct.omap_dsi_pin_config* %13)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %99, i32 0, i32 0
  %101 = call i32 @dev_err(%struct.TYPE_2__* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %105

102:                                              ; preds = %92
  %103 = load %struct.device_node*, %struct.device_node** %12, align 8
  %104 = call i32 @of_node_put(%struct.device_node* %103)
  store i32 0, i32* %2, align 4
  br label %109

105:                                              ; preds = %98, %67, %54, %30
  %106 = load %struct.device_node*, %struct.device_node** %12, align 8
  %107 = call i32 @of_node_put(%struct.device_node* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %105, %102, %24
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local %struct.device_node* @omapdss_of_get_first_endpoint(%struct.device_node*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i64*, i32) #1

declare dso_local i32 @dsi_configure_pins(i32*, %struct.omap_dsi_pin_config*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
