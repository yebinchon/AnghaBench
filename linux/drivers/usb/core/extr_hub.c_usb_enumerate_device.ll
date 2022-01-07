; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_enumerate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_enumerate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i8*, i8*, i8*, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.usb_hcd = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"can't read configurations, error %d\0A\00", align 1
@CONFIG_USB_OTG_WHITELIST = common dso_local global i32 0, align 4
@CONFIG_USB_OTG = common dso_local global i32 0, align 4
@PMSG_AUTO_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"HNP fail, %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @usb_enumerate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_enumerate_device(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_4__* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %5, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 6
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = call i32 @usb_get_configuration(%struct.usb_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %112

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @usb_cache_string(%struct.usb_device* %33, i32 %37)
  %39 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @usb_cache_string(%struct.usb_device* %41, i32 %45)
  %47 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 4
  store i8* %46, i8** %48, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %51 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @usb_cache_string(%struct.usb_device* %49, i32 %53)
  %55 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %56 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %58 = call i32 @usb_enumerate_device_otg(%struct.usb_device* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %32
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %112

63:                                               ; preds = %32
  %64 = load i32, i32* @CONFIG_USB_OTG_WHITELIST, align 4
  %65 = call i64 @IS_ENABLED(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %63
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %69 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %109

72:                                               ; preds = %67
  %73 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %74 = call i32 @is_targeted(%struct.usb_device* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %109, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @CONFIG_USB_OTG, align 4
  %78 = call i64 @IS_ENABLED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %76
  %81 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %82 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %80
  %88 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %89 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87, %80
  %95 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %96 = load i32, i32* @PMSG_AUTO_SUSPEND, align 4
  %97 = call i32 @usb_port_suspend(%struct.usb_device* %95, i32 %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %94
  %101 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %102 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %101, i32 0, i32 0
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %100, %94
  br label %106

106:                                              ; preds = %105, %87, %76
  %107 = load i32, i32* @ENOTSUPP, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %112

109:                                              ; preds = %72, %67, %63
  %110 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %111 = call i32 @usb_detect_interface_quirks(%struct.usb_device* %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %109, %106, %61, %29
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_get_configuration(%struct.usb_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i8* @usb_cache_string(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_enumerate_device_otg(%struct.usb_device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @is_targeted(%struct.usb_device*) #1

declare dso_local i32 @usb_port_suspend(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_detect_interface_quirks(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
