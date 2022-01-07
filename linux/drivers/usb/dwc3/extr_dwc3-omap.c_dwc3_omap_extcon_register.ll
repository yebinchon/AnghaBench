; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_extcon_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-omap.c_dwc3_omap_extcon_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_omap = type { %struct.extcon_dev*, %struct.TYPE_5__*, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.extcon_dev = type { i32 }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"extcon\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't get extcon device\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@dwc3_omap_vbus_notifier = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to register notifier for USB\0A\00", align 1
@dwc3_omap_id_notifier = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to register notifier for USB-HOST\0A\00", align 1
@OMAP_DWC3_VBUS_VALID = common dso_local global i32 0, align 4
@OMAP_DWC3_ID_GROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_omap*)* @dwc3_omap_extcon_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_omap_extcon_register(%struct.dwc3_omap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.extcon_dev*, align 8
  store %struct.dwc3_omap* %0, %struct.dwc3_omap** %3, align 8
  %7 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i64 @of_property_read_bool(%struct.device_node* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %92

15:                                               ; preds = %1
  %16 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.TYPE_5__* %18, i32 0)
  store %struct.extcon_dev* %19, %struct.extcon_dev** %6, align 8
  %20 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %21 = call i64 @IS_ERR(%struct.extcon_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @dev_vdbg(%struct.TYPE_5__* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %93

30:                                               ; preds = %15
  %31 = load i32, i32* @dwc3_omap_vbus_notifier, align 4
  %32 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %36 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %39 = load i32, i32* @EXTCON_USB, align 4
  %40 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %41 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %40, i32 0, i32 3
  %42 = call i32 @devm_extcon_register_notifier(%struct.TYPE_5__* %37, %struct.extcon_dev* %38, i32 %39, %struct.TYPE_6__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %30
  %46 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @dev_vdbg(%struct.TYPE_5__* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %30
  %51 = load i32, i32* @dwc3_omap_id_notifier, align 4
  %52 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %56 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %59 = load i32, i32* @EXTCON_USB_HOST, align 4
  %60 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %61 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %60, i32 0, i32 2
  %62 = call i32 @devm_extcon_register_notifier(%struct.TYPE_5__* %57, %struct.extcon_dev* %58, i32 %59, %struct.TYPE_6__* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %67 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = call i32 @dev_vdbg(%struct.TYPE_5__* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %50
  %71 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %72 = load i32, i32* @EXTCON_USB, align 4
  %73 = call i32 @extcon_get_state(%struct.extcon_dev* %71, i32 %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %77 = load i32, i32* @OMAP_DWC3_VBUS_VALID, align 4
  %78 = call i32 @dwc3_omap_set_mailbox(%struct.dwc3_omap* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %81 = load i32, i32* @EXTCON_USB_HOST, align 4
  %82 = call i32 @extcon_get_state(%struct.extcon_dev* %80, i32 %81)
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %86 = load i32, i32* @OMAP_DWC3_ID_GROUND, align 4
  %87 = call i32 @dwc3_omap_set_mailbox(%struct.dwc3_omap* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.extcon_dev*, %struct.extcon_dev** %6, align 8
  %90 = load %struct.dwc3_omap*, %struct.dwc3_omap** %3, align 8
  %91 = getelementptr inbounds %struct.dwc3_omap, %struct.dwc3_omap* %90, i32 0, i32 0
  store %struct.extcon_dev* %89, %struct.extcon_dev** %91, align 8
  br label %92

92:                                               ; preds = %88, %1
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %23
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.extcon_dev* @extcon_get_edev_by_phandle(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.extcon_dev*) #1

declare dso_local i32 @dev_vdbg(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @devm_extcon_register_notifier(%struct.TYPE_5__*, %struct.extcon_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @extcon_get_state(%struct.extcon_dev*, i32) #1

declare dso_local i32 @dwc3_omap_set_mailbox(%struct.dwc3_omap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
