; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_cdid_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_cdid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbaf = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, %struct.wusb_cbaf_device_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_cbaf_device_info = type { i32, i32, i32, i32 }

@CBAF_REQ_GET_ASSOCIATION_REQUEST = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot request device information: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"Not enough data in DEVICE_INFO reply (%zu vs %zu bytes needed)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@CBA_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_cdid_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_cdid_get(%struct.cbaf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbaf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wusb_cbaf_device_info*, align 8
  %7 = alloca i64, align 8
  store %struct.cbaf* %0, %struct.cbaf** %3, align 8
  %8 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %9 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %13 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %12, i32 0, i32 6
  %14 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %13, align 8
  store %struct.wusb_cbaf_device_info* %14, %struct.wusb_cbaf_device_info** %6, align 8
  %15 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %16 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %19 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_rcvctrlpipe(i32 %20, i32 0)
  %22 = load i32, i32* @CBAF_REQ_GET_ASSOCIATION_REQUEST, align 4
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = load i32, i32* @USB_TYPE_CLASS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %29 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %37 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %38 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %41 = call i32 @usb_control_msg(i32 %17, i32 %21, i32 %22, i32 %27, i32 512, i32 %35, %struct.wusb_cbaf_device_info* %36, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %95

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 16
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %61

55:                                               ; preds = %50
  %56 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %57 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = sext i32 %59 to i64
  br label %61

61:                                               ; preds = %55, %54
  %62 = phi i64 [ 16, %54 ], [ %60, %55 ]
  store i64 %62, i64* %7, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %7, align 8
  %72 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %68, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %95

75:                                               ; preds = %61
  %76 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %77 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %80 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @CBA_NAME_LEN, align 4
  %83 = call i32 @strlcpy(i32 %78, i32 %81, i32 %82)
  %84 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %85 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %88 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wusb_cbaf_device_info*, %struct.wusb_cbaf_device_info** %6, align 8
  %90 = getelementptr inbounds %struct.wusb_cbaf_device_info, %struct.wusb_cbaf_device_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %94 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %75, %67, %44
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_device_info*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
