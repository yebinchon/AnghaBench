; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_usb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl8192_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { i32, i32, i32, i32*, i32* }
%struct.r8192_priv = type { i32*, %struct.usb_device*, i32 }
%struct.usb_device = type { i32 }

@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Oops: i'm coming\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@rtl8192_netdev_ops = common dso_local global i32 0, align 4
@r8192_wx_handlers_def = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ifname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Oops: devname already taken! Trying wlan%%d...\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Driver probe completed1\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Initialization failed\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"dev name=======> %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Driver probe completed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"wlan driver load failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @rtl8192_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8192_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store %struct.net_device* null, %struct.net_device** %6, align 8
  store %struct.r8192_priv* null, %struct.r8192_priv** %7, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %8, align 8
  %12 = load i32, i32* @COMP_INIT, align 4
  %13 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = call %struct.net_device* @alloc_ieee80211(i32 24)
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %107

20:                                               ; preds = %2
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call i32 @usb_set_intfdata(%struct.usb_interface* %21, %struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %26 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %25, i32 0, i32 0
  %27 = call i32 @SET_NETDEV_DEV(%struct.net_device* %24, i32* %26)
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %28)
  store %struct.r8192_priv* %29, %struct.r8192_priv** %7, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @netdev_priv(%struct.net_device* %30)
  %32 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %33 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %35 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %36 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %35, i32 0, i32 1
  store %struct.usb_device* %34, %struct.usb_device** %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 4
  store i32* @rtl8192_netdev_ops, i32** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 3
  store i32* @r8192_wx_handlers_def, i32** %40, align 8
  %41 = load i32, i32* @ARPHRD_ETHER, align 4
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @HZ, align 4
  %45 = mul nsw i32 %44, 3
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load i8*, i8** @ifname, align 8
  %50 = call i64 @dev_alloc_name(%struct.net_device* %48, i8* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %20
  %53 = load i32, i32* @COMP_INIT, align 4
  %54 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %53, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** @ifname, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load i8*, i8** @ifname, align 8
  %57 = call i64 @dev_alloc_name(%struct.net_device* %55, i8* %56)
  br label %58

58:                                               ; preds = %52, %20
  %59 = load i32, i32* @COMP_INIT, align 4
  %60 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = call i64 @rtl8192_init(%struct.net_device* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32, i32* @COMP_ERR, align 4
  %66 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %92

69:                                               ; preds = %58
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = call i32 @netif_carrier_off(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = call i32 @netif_stop_queue(%struct.net_device* %72)
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 @register_netdev(%struct.net_device* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %89

79:                                               ; preds = %69
  %80 = load i32, i32* @COMP_INIT, align 4
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  %85 = load %struct.net_device*, %struct.net_device** %6, align 8
  %86 = call i32 @rtl8192_proc_init_one(%struct.net_device* %85)
  %87 = load i32, i32* @COMP_INIT, align 4
  %88 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %107

89:                                               ; preds = %78
  %90 = load %struct.net_device*, %struct.net_device** %6, align 8
  %91 = call i32 @rtl8192_down(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %89, %64
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %98 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = call i32 @rtl8192_usb_deleteendpoints(%struct.net_device* %99)
  %101 = call i32 @msleep(i32 10)
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = call i32 @free_ieee80211(%struct.net_device* %102)
  %104 = load i32, i32* @COMP_ERR, align 4
  %105 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %104, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %92, %79, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local %struct.net_device* @alloc_ieee80211(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @dev_alloc_name(%struct.net_device*, i8*) #1

declare dso_local i64 @rtl8192_init(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @rtl8192_proc_init_one(%struct.net_device*) #1

declare dso_local i32 @rtl8192_down(%struct.net_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @rtl8192_usb_deleteendpoints(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @free_ieee80211(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
