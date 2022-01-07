; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cytherm.c_brightness_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_cytherm.c_brightness_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_cytherm = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WRITE_RAM = common dso_local global i32 0, align 4
@BRIGHTNESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"retval = %d\0A\00", align 1
@BRIGHTNESS_SEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @brightness_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brightness_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_cytherm*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %17 = call %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface* %16)
  store %struct.usb_cytherm* %17, %struct.usb_cytherm** %11, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kmalloc(i32 8, i32 %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %85

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @simple_strtoul(i8* %24, i32* null, i32 10)
  %26 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %27 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %29 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 255
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %34 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %33, i32 0, i32 0
  store i32 255, i32* %34, align 8
  br label %44

35:                                               ; preds = %23
  %36 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %37 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %42 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  %45 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %46 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* @WRITE_RAM, align 4
  %49 = load i32, i32* @BRIGHTNESS, align 4
  %50 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %51 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @vendor_command(%struct.TYPE_2__* %47, i32 %48, i32 %49, i32 %52, i8* %53, i32 8)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %59 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %57, %44
  %65 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %66 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* @WRITE_RAM, align 4
  %69 = load i32, i32* @BRIGHTNESS_SEM, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @vendor_command(%struct.TYPE_2__* %67, i32 %68, i32 %69, i32 1, i8* %70, i32 8)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load %struct.usb_cytherm*, %struct.usb_cytherm** %11, align 8
  %76 = getelementptr inbounds %struct.usb_cytherm, %struct.usb_cytherm* %75, i32 0, i32 1
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %64
  %82 = load i8*, i8** %12, align 8
  %83 = call i32 @kfree(i8* %82)
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %81, %22
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_cytherm* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @vendor_command(%struct.TYPE_2__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
