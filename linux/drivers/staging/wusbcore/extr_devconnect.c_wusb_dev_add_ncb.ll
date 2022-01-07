; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusb_dev_add_ncb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_devconnect.c_wusb_dev_add_ncb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i64, i32, i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.wusb_dev = type { i32 }
%struct.wusbhc = type { i32 }

@USB_STATE_UNAUTHENTICATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot enable security: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Cannot get BOS descriptors: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @wusb_dev_add_ncb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wusb_dev_add_ncb(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca %struct.wusbhc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 4
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  br label %108

20:                                               ; preds = %14
  %21 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %22 = load i32, i32* @USB_STATE_UNAUTHENTICATED, align 4
  %23 = call i32 @usb_set_device_state(%struct.usb_device* %21, i32 %22)
  %24 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %25 = call %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device* %24)
  store %struct.wusbhc* %25, %struct.wusbhc** %5, align 8
  %26 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %27 = icmp eq %struct.wusbhc* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %89

29:                                               ; preds = %20
  %30 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %31 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %35 = call %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc* %33, %struct.usb_device* %34)
  store %struct.wusb_dev* %35, %struct.wusb_dev** %4, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @wusb_port_no_to_idx(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %41 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %44 = icmp eq %struct.wusb_dev* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %89

46:                                               ; preds = %29
  %47 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %48 = call i32 @usb_get_dev(%struct.usb_device* %47)
  %49 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %50 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %52 = call i32 @wusb_dev_get(%struct.wusb_dev* %51)
  %53 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %54 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %57 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %58 = call i32 @wusb_dev_sec_add(%struct.wusbhc* %55, %struct.usb_device* %56, %struct.wusb_dev* %57)
  store i32 %58, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load %struct.device*, %struct.device** %6, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %96

65:                                               ; preds = %46
  %66 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %67 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %68 = call i32 @wusb_dev_bos_add(%struct.usb_device* %66, %struct.wusb_dev* %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %93

75:                                               ; preds = %65
  %76 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %77 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %78 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %79 = call i32 @wusb_dev_sysfs_add(%struct.wusbhc* %76, %struct.usb_device* %77, %struct.wusb_dev* %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %90

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %96, %83
  %85 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %86 = call i32 @wusb_dev_put(%struct.wusb_dev* %85)
  %87 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %88 = call i32 @wusbhc_put(%struct.wusbhc* %87)
  br label %89

89:                                               ; preds = %84, %45, %28
  br label %108

90:                                               ; preds = %82
  %91 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %92 = call i32 @wusb_dev_bos_rm(%struct.wusb_dev* %91)
  br label %93

93:                                               ; preds = %90, %71
  %94 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %95 = call i32 @wusb_dev_sec_rm(%struct.wusb_dev* %94)
  br label %96

96:                                               ; preds = %93, %61
  %97 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %98 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %97, i32 0, i32 0
  %99 = call i32 @mutex_lock(i32* %98)
  %100 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %101 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @wusb_port_by_idx(%struct.wusbhc* %101, i32 %102)
  %104 = call i32 @__wusbhc_dev_disconnect(%struct.wusbhc* %100, i32 %103)
  %105 = load %struct.wusbhc*, %struct.wusbhc** %5, align 8
  %106 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %84

108:                                              ; preds = %89, %19
  ret void
}

declare dso_local i32 @usb_set_device_state(%struct.usb_device*, i32) #1

declare dso_local %struct.wusbhc* @wusbhc_get_by_usb_dev(%struct.usb_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wusb_dev* @__wusb_dev_get_by_usb_dev(%struct.wusbhc*, %struct.usb_device*) #1

declare dso_local i32 @wusb_port_no_to_idx(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_get_dev(%struct.usb_device*) #1

declare dso_local i32 @wusb_dev_get(%struct.wusb_dev*) #1

declare dso_local i32 @wusb_dev_sec_add(%struct.wusbhc*, %struct.usb_device*, %struct.wusb_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wusb_dev_bos_add(%struct.usb_device*, %struct.wusb_dev*) #1

declare dso_local i32 @wusb_dev_sysfs_add(%struct.wusbhc*, %struct.usb_device*, %struct.wusb_dev*) #1

declare dso_local i32 @wusb_dev_put(%struct.wusb_dev*) #1

declare dso_local i32 @wusbhc_put(%struct.wusbhc*) #1

declare dso_local i32 @wusb_dev_bos_rm(%struct.wusb_dev*) #1

declare dso_local i32 @wusb_dev_sec_rm(%struct.wusb_dev*) #1

declare dso_local i32 @__wusbhc_dev_disconnect(%struct.wusbhc*, i32) #1

declare dso_local i32 @wusb_port_by_idx(%struct.wusbhc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
