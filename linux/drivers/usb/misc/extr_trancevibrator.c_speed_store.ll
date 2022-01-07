; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_trancevibrator.c_speed_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_trancevibrator.c_speed_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.trancevibrator = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"speed = %d\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_OTHER = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @speed_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @speed_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.trancevibrator*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.usb_interface* @to_usb_interface(%struct.device* %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %10, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %18 = call %struct.trancevibrator* @usb_get_intfdata(%struct.usb_interface* %17)
  store %struct.trancevibrator* %18, %struct.trancevibrator** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @kstrtoint(i8* %19, i32 10, i32* %12)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %82

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 255, i32* %12, align 4
  br label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %36 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %40 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %42 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %46 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %50 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %53 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = call i32 @usb_sndctrlpipe(%struct.TYPE_3__* %54, i32 0)
  %56 = load i32, i32* @USB_DIR_IN, align 4
  %57 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @USB_RECIP_OTHER, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %62 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %65 = call i32 @usb_control_msg(%struct.TYPE_3__* %51, i32 %55, i32 1, i32 %60, i32 %63, i32 0, i32* null, i32 0, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %34
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %71 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.trancevibrator*, %struct.trancevibrator** %11, align 8
  %73 = getelementptr inbounds %struct.trancevibrator, %struct.trancevibrator* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @dev_dbg(i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %34
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %68, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.trancevibrator* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_3__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
