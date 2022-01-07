; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_decimals_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbsevseg.c_decimals_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_sevsegdev = type { i32* }

@EINVAL = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @decimals_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decimals_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_sevsegdev*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %17 = call %struct.usb_sevsegdev* @usb_get_intfdata(%struct.usb_interface* %16)
  store %struct.usb_sevsegdev* %17, %struct.usb_sevsegdev** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @my_memlen(i8* %18, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ugt i64 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %92

26:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %52, %26
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 48
  br i1 %39, label %40, label %51

40:                                               ; preds = %32
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 49
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* @EINVAL, align 8
  %50 = sub i64 0, %49
  store i64 %50, i64* %5, align 8
  br label %92

51:                                               ; preds = %40, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %27

55:                                               ; preds = %27
  %56 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %11, align 8
  %57 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @memset(i32* %58, i32 0, i32 8)
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %84, %55
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %12, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %60
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 49
  br i1 %72, label %73, label %83

73:                                               ; preds = %65
  %74 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %11, align 8
  %75 = getelementptr inbounds %struct.usb_sevsegdev, %struct.usb_sevsegdev* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = sub i64 %77, 1
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 %78, %80
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %60

87:                                               ; preds = %60
  %88 = load %struct.usb_sevsegdev*, %struct.usb_sevsegdev** %11, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32 @update_display_visual(%struct.usb_sevsegdev* %88, i32 %89)
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %87, %48, %23
  %93 = load i64, i64* %5, align 8
  ret i64 %93
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_sevsegdev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i64 @my_memlen(i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @update_display_visual(%struct.usb_sevsegdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
