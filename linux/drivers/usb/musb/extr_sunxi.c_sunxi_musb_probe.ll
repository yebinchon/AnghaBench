; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_sunxi.c_sunxi_musb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.musb_hdrc_platform_data = type { i8*, i32, %struct.musb_hdrc_platform_data*, i32, i32, %struct.TYPE_11__*, i32, i32*, i32*, i32 }
%struct.platform_device_info = type { i8*, i32, %struct.platform_device_info*, i32, i32, %struct.TYPE_11__*, i32, i32*, i32*, i32 }
%struct.sunxi_glue = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Error no device tree node found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid or missing 'dr_mode' property\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@MUSB_HOST = common dso_local global i32 0, align 4
@MUSB_OTG = common dso_local global i32 0, align 4
@MUSB_PERIPHERAL = common dso_local global i32 0, align 4
@PHY_MODE_USB_DEVICE = common dso_local global i32 0, align 4
@PHY_MODE_USB_HOST = common dso_local global i32 0, align 4
@PHY_MODE_USB_OTG = common dso_local global i32 0, align 4
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@SUNXI_MUSB_FL_HAS_RESET = common dso_local global i32 0, align 4
@SUNXI_MUSB_FL_HAS_SRAM = common dso_local global i32 0, align 4
@SUNXI_MUSB_FL_NO_CONFIGDATA = common dso_local global i32 0, align 4
@USB_PHY_TYPE_USB2 = common dso_local global i32 0, align 4
@sunxi_musb_hdrc_config = common dso_local global i32 0, align 4
@sunxi_musb_hdrc_config_h3 = common dso_local global i32 0, align 4
@sunxi_musb_host_notifier = common dso_local global i32 0, align 4
@sunxi_musb_ops = common dso_local global i32 0, align 4
@sunxi_musb_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sunxi_musb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_musb_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.musb_hdrc_platform_data, align 8
  %5 = alloca %struct.platform_device_info, align 8
  %6 = alloca %struct.sunxi_glue*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %49

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.sunxi_glue* @devm_kzalloc(%struct.TYPE_11__* %23, i32 56, i32 %24)
  store %struct.sunxi_glue* %25, %struct.sunxi_glue** %6, align 8
  %26 = load %struct.sunxi_glue*, %struct.sunxi_glue** %6, align 8
  %27 = icmp ne %struct.sunxi_glue* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %21
  %32 = bitcast %struct.musb_hdrc_platform_data* %4 to %struct.platform_device_info*
  %33 = call i32 @memset(%struct.platform_device_info* %32, i32 0, i32 72)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @usb_get_dr_mode(%struct.TYPE_11__* %35)
  switch i32 %36, label %37 [
  ]

37:                                               ; preds = %31
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 (%struct.TYPE_11__*, i8*, ...) @dev_err(%struct.TYPE_11__* %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; No predecessors!
  %44 = load %struct.sunxi_glue*, %struct.sunxi_glue** %6, align 8
  %45 = getelementptr inbounds %struct.sunxi_glue, %struct.sunxi_glue* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @usb_phy_generic_unregister(i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %37, %28, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.sunxi_glue* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @memset(%struct.platform_device_info*, i32, i32) #1

declare dso_local i32 @usb_get_dr_mode(%struct.TYPE_11__*) #1

declare dso_local i32 @usb_phy_generic_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
