; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_hwa-rc.c_hwarc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_hwa-rc.c_hwarc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_6__*, %struct.device }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.uwb_rc = type { i32*, i32*, i32, i32, i32, i32, i32 }
%struct.hwarc = type { i32, %struct.uwb_rc*, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to allocate RC instance\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"unable to allocate HWA RC instance\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@hwarc_neep_init = common dso_local global i32 0, align 4
@hwarc_neep_release = common dso_local global i32 0, align 4
@hwarc_cmd = common dso_local global i32 0, align 4
@hwarc_reset = common dso_local global i32 0, align 4
@WUSB_QUIRK_WHCI_CMD_EVT = common dso_local global i32 0, align 4
@hwarc_filter_cmd = common dso_local global i32* null, align 8
@hwarc_filter_event = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot retrieve version of RC \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hwarc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwarc_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uwb_rc*, align 8
  %8 = alloca %struct.hwarc*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %9, align 8
  %12 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %13 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %137

22:                                               ; preds = %2
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @usb_endpoint_xfer_int(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %137

35:                                               ; preds = %22
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  %38 = call %struct.uwb_rc* (...) @uwb_rc_alloc()
  store %struct.uwb_rc* %38, %struct.uwb_rc** %7, align 8
  %39 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %40 = icmp eq %struct.uwb_rc* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.device*, %struct.device** %9, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %135

44:                                               ; preds = %35
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.hwarc* @kzalloc(i32 24, i32 %45)
  store %struct.hwarc* %46, %struct.hwarc** %8, align 8
  %47 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %48 = icmp eq %struct.hwarc* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %9, align 8
  %51 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %132

52:                                               ; preds = %44
  %53 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %54 = call i32 @hwarc_init(%struct.hwarc* %53)
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = call i32 @interface_to_usbdev(%struct.usb_interface* %55)
  %57 = call i32 @usb_get_dev(i32 %56)
  %58 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %59 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = call i32 @usb_get_intf(%struct.usb_interface* %60)
  %62 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %63 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %65 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %66 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %65, i32 0, i32 1
  store %struct.uwb_rc* %64, %struct.uwb_rc** %66, align 8
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %69 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* @hwarc_neep_init, align 4
  %71 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %72 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @hwarc_neep_release, align 4
  %74 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %75 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @hwarc_cmd, align 4
  %77 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %78 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @hwarc_reset, align 4
  %80 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %81 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %83 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @WUSB_QUIRK_WHCI_CMD_EVT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %52
  %89 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %90 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  %91 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %92 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %100

93:                                               ; preds = %52
  %94 = load i32*, i32** @hwarc_filter_cmd, align 8
  %95 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %96 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load i32*, i32** @hwarc_filter_event, align 8
  %98 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %99 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %98, i32 0, i32 0
  store i32* %97, i32** %99, align 8
  br label %100

100:                                              ; preds = %93, %88
  %101 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %102 = load %struct.device*, %struct.device** %9, align 8
  %103 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %104 = call i32 @uwb_rc_add(%struct.uwb_rc* %101, %struct.device* %102, %struct.hwarc* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %123

108:                                              ; preds = %100
  %109 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %110 = call i32 @hwarc_get_version(%struct.uwb_rc* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.device*, %struct.device** %9, align 8
  %115 = call i32 @dev_err(%struct.device* %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %120

116:                                              ; preds = %108
  %117 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %118 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %119 = call i32 @usb_set_intfdata(%struct.usb_interface* %117, %struct.hwarc* %118)
  store i32 0, i32* %3, align 4
  br label %137

120:                                              ; preds = %113
  %121 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %122 = call i32 @uwb_rc_rm(%struct.uwb_rc* %121)
  br label %123

123:                                              ; preds = %120, %107
  %124 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %125 = call i32 @usb_put_intf(%struct.usb_interface* %124)
  %126 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %127 = getelementptr inbounds %struct.hwarc, %struct.hwarc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @usb_put_dev(i32 %128)
  %130 = load %struct.hwarc*, %struct.hwarc** %8, align 8
  %131 = call i32 @kfree(%struct.hwarc* %130)
  br label %132

132:                                              ; preds = %123, %49
  %133 = load %struct.uwb_rc*, %struct.uwb_rc** %7, align 8
  %134 = call i32 @uwb_rc_put(%struct.uwb_rc* %133)
  br label %135

135:                                              ; preds = %132, %41
  %136 = load i32, i32* %6, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %135, %116, %32, %19
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @usb_endpoint_xfer_int(i32*) #1

declare dso_local %struct.uwb_rc* @uwb_rc_alloc(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.hwarc* @kzalloc(i32, i32) #1

declare dso_local i32 @hwarc_init(%struct.hwarc*) #1

declare dso_local i32 @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @uwb_rc_add(%struct.uwb_rc*, %struct.device*, %struct.hwarc*) #1

declare dso_local i32 @hwarc_get_version(%struct.uwb_rc*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.hwarc*) #1

declare dso_local i32 @uwb_rc_rm(%struct.uwb_rc*) #1

declare dso_local i32 @usb_put_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @kfree(%struct.hwarc*) #1

declare dso_local i32 @uwb_rc_put(%struct.uwb_rc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
