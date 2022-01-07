; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_hub_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32, i32, %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i64, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.usb_hub = type { i32, i32, i32, i32, i32, i32, %struct.usb_device*, i32*, i32 }
%struct.hc_driver = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.hc_driver* }

@MAX_TOPO_LEVEL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unsupported bus topology: hub nested too deep\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"bad descriptor, ignoring hub\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"USB hub found\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@led_work = common dso_local global i32* null, align 8
@hub_event = common dso_local global i32 0, align 4
@hub_retry_irq_urb = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@highspeed_hubs = common dso_local global i32 0, align 4
@HUB_QUIRK_CHECK_PORT_AUTOSUSPEND = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @hub_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_hub*, align 8
  %9 = alloca %struct.hc_driver*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %10, i32 0, i32 2
  %12 = load %struct.usb_host_interface*, %struct.usb_host_interface** %11, align 8
  store %struct.usb_host_interface* %12, %struct.usb_host_interface** %6, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %7, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %21 = call i32 @usb_enable_autosuspend(%struct.usb_device* %20)
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.TYPE_8__* @bus_to_hcd(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load %struct.hc_driver*, %struct.hc_driver** %27, align 8
  store %struct.hc_driver* %28, %struct.hc_driver** %9, align 8
  %29 = load %struct.hc_driver*, %struct.hc_driver** %9, align 8
  %30 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load %struct.hc_driver*, %struct.hc_driver** %9, align 8
  %35 = getelementptr inbounds %struct.hc_driver, %struct.hc_driver* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %40 = call i32 @usb_enable_autosuspend(%struct.usb_device* %39)
  br label %41

41:                                               ; preds = %38, %33, %22
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %44 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAX_TOPO_LEVEL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %50 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @E2BIG, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %149

54:                                               ; preds = %42
  %55 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %56 = call i32 @hub_descriptor_is_sane(%struct.usb_host_interface* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %60 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %59, i32 0, i32 1
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %149

64:                                               ; preds = %54
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 1
  %67 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.usb_hub* @kzalloc(i32 48, i32 %68)
  store %struct.usb_hub* %69, %struct.usb_hub** %8, align 8
  %70 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %71 = icmp ne %struct.usb_hub* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %149

75:                                               ; preds = %64
  %76 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %77 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %76, i32 0, i32 8
  %78 = call i32 @kref_init(i32* %77)
  %79 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %80 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %79, i32 0, i32 1
  %81 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %82 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %81, i32 0, i32 7
  store i32* %80, i32** %82, align 8
  %83 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %84 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %85 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %84, i32 0, i32 6
  store %struct.usb_device* %83, %struct.usb_device** %85, align 8
  %86 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %87 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %86, i32 0, i32 5
  %88 = load i32*, i32** @led_work, align 8
  %89 = call i32 @INIT_DELAYED_WORK(i32* %87, i32* %88)
  %90 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %91 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %90, i32 0, i32 4
  %92 = call i32 @INIT_DELAYED_WORK(i32* %91, i32* null)
  %93 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %94 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %93, i32 0, i32 3
  %95 = load i32, i32* @hub_event, align 4
  %96 = call i32 @INIT_WORK(i32* %94, i32 %95)
  %97 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %98 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %97, i32 0, i32 2
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %101 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %100, i32 0, i32 1
  %102 = load i32, i32* @hub_retry_irq_urb, align 4
  %103 = call i32 @timer_setup(i32* %101, i32 %102, i32 0)
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = call i32 @usb_get_intf(%struct.usb_interface* %104)
  %106 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %107 = call i32 @usb_get_dev(%struct.usb_device* %106)
  %108 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %109 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %110 = call i32 @usb_set_intfdata(%struct.usb_interface* %108, %struct.usb_hub* %109)
  %111 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %112 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  %113 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %114 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %113, i32 0, i32 1
  %115 = call i32 @pm_suspend_ignore_children(i32* %114, i32 1)
  %116 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %117 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @USB_SPEED_HIGH, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %75
  %122 = load i32, i32* @highspeed_hubs, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @highspeed_hubs, align 4
  br label %124

124:                                              ; preds = %121, %75
  %125 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %126 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HUB_QUIRK_CHECK_PORT_AUTOSUSPEND, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %124
  %132 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %133 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %124
  %135 = load %struct.usb_hub*, %struct.usb_hub** %8, align 8
  %136 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %137 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = call i64 @hub_configure(%struct.usb_hub* %135, i32* %140)
  %142 = icmp sge i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %149

144:                                              ; preds = %134
  %145 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %146 = call i32 @hub_disconnect(%struct.usb_interface* %145)
  %147 = load i32, i32* @ENODEV, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %144, %143, %72, %58, %48
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usb_enable_autosuspend(%struct.usb_device*) #1

declare dso_local %struct.TYPE_8__* @bus_to_hcd(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hub_descriptor_is_sane(%struct.usb_host_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local %struct.usb_hub* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @usb_get_intf(%struct.usb_interface*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.usb_hub*) #1

declare dso_local i32 @pm_suspend_ignore_children(i32*, i32) #1

declare dso_local i64 @hub_configure(%struct.usb_hub*, i32*) #1

declare dso_local i32 @hub_disconnect(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
