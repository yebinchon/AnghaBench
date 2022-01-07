; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_usbmisc_get_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_usbmisc_get_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_usbmisc_data = type { i32, i32, i32, i32, i8*, i8*, i32*, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }
%struct.of_phandle_args = type { i32, i32* }

@.str = private unnamed_addr constant [12 x i8] c"fsl,usbmisc\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"#index-cells\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Failed to parse property fsl,usbmisc, errno %d\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"disable-over-current\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"over-current-active-high\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"over-current-active-low\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"No over current polarity defined\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"power-active-high\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"external-vbus-divider\00", align 1
@USBPHY_INTERFACE_MODE_ULPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imx_usbmisc_data* (%struct.device*)* @usbmisc_get_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imx_usbmisc_data* @usbmisc_get_init_data(%struct.device* %0) #0 {
  %2 = alloca %struct.imx_usbmisc_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_phandle_args, align 8
  %7 = alloca %struct.imx_usbmisc_data*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32 @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.imx_usbmisc_data* null, %struct.imx_usbmisc_data** %2, align 8
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.imx_usbmisc_data* @devm_kzalloc(%struct.device* %17, i32 48, i32 %18)
  store %struct.imx_usbmisc_data* %19, %struct.imx_usbmisc_data** %7, align 8
  %20 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %21 = icmp ne %struct.imx_usbmisc_data* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.imx_usbmisc_data* @ERR_PTR(i32 %24)
  store %struct.imx_usbmisc_data* %25, %struct.imx_usbmisc_data** %2, align 8
  br label %112

26:                                               ; preds = %16
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = call i32 @of_parse_phandle_with_args(%struct.device_node* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %6)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.imx_usbmisc_data* @ERR_PTR(i32 %35)
  store %struct.imx_usbmisc_data* %36, %struct.imx_usbmisc_data** %2, align 8
  br label %112

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %43 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.platform_device* @of_find_device_by_node(i32 %45)
  store %struct.platform_device* %46, %struct.platform_device** %4, align 8
  %47 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @of_node_put(i32 %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = icmp ne %struct.platform_device* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %37
  %53 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %54 = call i32 @platform_get_drvdata(%struct.platform_device* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %37
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.imx_usbmisc_data* @ERR_PTR(i32 %58)
  store %struct.imx_usbmisc_data* %59, %struct.imx_usbmisc_data** %2, align 8
  br label %112

60:                                               ; preds = %52
  %61 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %64 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %63, i32 0, i32 6
  store i32* %62, i32** %64, align 8
  %65 = load %struct.device_node*, %struct.device_node** %5, align 8
  %66 = call i64 @of_find_property(%struct.device_node* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %70 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  br label %94

71:                                               ; preds = %60
  %72 = load %struct.device_node*, %struct.device_node** %5, align 8
  %73 = call i64 @of_find_property(%struct.device_node* %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* null)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %77 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  %78 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %79 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %78, i32 0, i32 2
  store i32 1, i32* %79, align 8
  br label %93

80:                                               ; preds = %71
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i64 @of_find_property(%struct.device_node* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %86 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %88 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %87, i32 0, i32 2
  store i32 1, i32* %88, align 8
  br label %92

89:                                               ; preds = %80
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = call i32 @dev_warn(%struct.device* %90, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %68
  %95 = load %struct.device_node*, %struct.device_node** %5, align 8
  %96 = call i8* @of_property_read_bool(%struct.device_node* %95, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %97 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %98 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  %99 = load %struct.device_node*, %struct.device_node** %5, align 8
  %100 = call i8* @of_property_read_bool(%struct.device_node* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %101 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %102 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.device_node*, %struct.device_node** %5, align 8
  %104 = call i64 @of_usb_get_phy_mode(%struct.device_node* %103)
  %105 = load i64, i64* @USBPHY_INTERFACE_MODE_ULPI, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %94
  %108 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  %109 = getelementptr inbounds %struct.imx_usbmisc_data, %struct.imx_usbmisc_data* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %94
  %111 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %7, align 8
  store %struct.imx_usbmisc_data* %111, %struct.imx_usbmisc_data** %2, align 8
  br label %112

112:                                              ; preds = %110, %56, %31, %22, %15
  %113 = load %struct.imx_usbmisc_data*, %struct.imx_usbmisc_data** %2, align 8
  ret %struct.imx_usbmisc_data* %113
}

declare dso_local i32 @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.imx_usbmisc_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.imx_usbmisc_data* @ERR_PTR(i32) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_usb_get_phy_mode(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
