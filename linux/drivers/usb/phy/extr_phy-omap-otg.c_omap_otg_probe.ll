; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-omap-otg.c_omap_otg_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-omap-otg.c_omap_otg_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.omap_usb_config* }
%struct.omap_usb_config = type { i32 }
%struct.otg_device = type { i8*, i8*, i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.extcon_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.extcon_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@omap_otg_id_notifier = common dso_local global i32 0, align 4
@omap_otg_vbus_notifier = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"OMAP USB OTG controller rev %d.%d (%s, id=%d, vbus=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_otg_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_otg_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_usb_config*, align 8
  %5 = alloca %struct.otg_device*, align 8
  %6 = alloca %struct.extcon_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.omap_usb_config*, %struct.omap_usb_config** %11, align 8
  store %struct.omap_usb_config* %12, %struct.omap_usb_config** %4, align 8
  %13 = load %struct.omap_usb_config*, %struct.omap_usb_config** %4, align 8
  %14 = icmp ne %struct.omap_usb_config* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.omap_usb_config*, %struct.omap_usb_config** %4, align 8
  %17 = getelementptr inbounds %struct.omap_usb_config, %struct.omap_usb_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %135

23:                                               ; preds = %15
  %24 = load %struct.omap_usb_config*, %struct.omap_usb_config** %4, align 8
  %25 = getelementptr inbounds %struct.omap_usb_config, %struct.omap_usb_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.extcon_dev* @extcon_get_extcon_dev(i32 %26)
  store %struct.extcon_dev* %27, %struct.extcon_dev** %6, align 8
  %28 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %29 = icmp ne %struct.extcon_dev* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EPROBE_DEFER, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %135

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.otg_device* @devm_kzalloc(%struct.TYPE_6__* %35, i32 40, i32 %36)
  store %struct.otg_device* %37, %struct.otg_device** %5, align 8
  %38 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %39 = icmp ne %struct.otg_device* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %135

43:                                               ; preds = %33
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = call i32 @devm_ioremap_resource(%struct.TYPE_6__* %45, i32* %49)
  %51 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %52 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %54 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %60 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %135

63:                                               ; preds = %43
  %64 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %65 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %66 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %65, i32 0, i32 5
  store %struct.extcon_dev* %64, %struct.extcon_dev** %66, align 8
  %67 = load i32, i32* @omap_otg_id_notifier, align 4
  %68 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %69 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32, i32* @omap_otg_vbus_notifier, align 4
  %72 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %73 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %78 = load i32, i32* @EXTCON_USB_HOST, align 4
  %79 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %80 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %79, i32 0, i32 4
  %81 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %76, %struct.extcon_dev* %77, i32 %78, %struct.TYPE_7__* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %63
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %135

86:                                               ; preds = %63
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %90 = load i32, i32* @EXTCON_USB, align 4
  %91 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %92 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %91, i32 0, i32 3
  %93 = call i32 @devm_extcon_register_notifier(%struct.TYPE_6__* %88, %struct.extcon_dev* %89, i32 %90, %struct.TYPE_7__* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %135

98:                                               ; preds = %86
  %99 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %100 = load i32, i32* @EXTCON_USB_HOST, align 4
  %101 = call i8* @extcon_get_state(%struct.extcon_dev* %99, i32 %100)
  %102 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %103 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %105 = load i32, i32* @EXTCON_USB, align 4
  %106 = call i8* @extcon_get_state(%struct.extcon_dev* %104, i32 %105)
  %107 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %108 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %110 = call i32 @omap_otg_set_mode(%struct.otg_device* %109)
  %111 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %112 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @readl(i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 4
  %119 = and i32 %118, 15
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 15
  %122 = load %struct.omap_usb_config*, %struct.omap_usb_config** %4, align 8
  %123 = getelementptr inbounds %struct.omap_usb_config, %struct.omap_usb_config* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %126 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %129 = getelementptr inbounds %struct.otg_device, %struct.otg_device* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @dev_info(%struct.TYPE_6__* %116, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %119, i32 %121, i32 %124, i8* %127, i8* %130)
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = load %struct.otg_device*, %struct.otg_device** %5, align 8
  %134 = call i32 @platform_set_drvdata(%struct.platform_device* %132, %struct.otg_device* %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %98, %96, %84, %58, %40, %30, %20
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.extcon_dev* @extcon_get_extcon_dev(i32) #1

declare dso_local %struct.otg_device* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_extcon_register_notifier(%struct.TYPE_6__*, %struct.extcon_dev*, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @extcon_get_state(%struct.extcon_dev*, i32) #1

declare dso_local i32 @omap_otg_set_mode(%struct.otg_device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.otg_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
