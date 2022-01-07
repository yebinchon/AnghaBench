; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_check_media.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_flash_check_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }
%struct.usbat_info = type { i32, i32, i32 }

@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USBAT_FLASH_MEDIA_NONE = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USBAT_FLASH_MEDIA_CHANGED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.usbat_info*)* @usbat_flash_check_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_flash_check_media(%struct.us_data* %0, %struct.usbat_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.usbat_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.usbat_info* %1, %struct.usbat_info** %5, align 8
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = getelementptr inbounds %struct.us_data, %struct.us_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.us_data*, %struct.us_data** %4, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @usbat_read_user_io(%struct.us_data* %11, i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.us_data*, %struct.us_data** %4, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @usbat_flash_check_media_present(%struct.us_data* %20, i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @USBAT_FLASH_MEDIA_NONE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %19
  %27 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %28 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %27, i32 0, i32 0
  store i32 2, i32* %28, align 4
  %29 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %30 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %29, i32 0, i32 1
  store i32 58, i32* %30, align 4
  %31 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %32 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %31, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %19
  %35 = load %struct.us_data*, %struct.us_data** %4, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @usbat_flash_check_media_changed(%struct.us_data* %35, i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @USBAT_FLASH_MEDIA_CHANGED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %34
  %42 = load %struct.us_data*, %struct.us_data** %4, align 8
  %43 = call i32 @usbat_device_reset(%struct.us_data* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %78

49:                                               ; preds = %41
  %50 = load %struct.us_data*, %struct.us_data** %4, align 8
  %51 = call i32 @usbat_device_enable_cdt(%struct.us_data* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %49
  %58 = call i32 @msleep(i32 50)
  %59 = load %struct.us_data*, %struct.us_data** %4, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @usbat_read_user_io(%struct.us_data* %59, i8* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %66, i32* %3, align 4
  br label %78

67:                                               ; preds = %57
  %68 = load i32, i32* @UNIT_ATTENTION, align 4
  %69 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %70 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %72 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %71, i32 0, i32 1
  store i32 40, i32* %72, align 4
  %73 = load %struct.usbat_info*, %struct.usbat_info** %5, align 8
  %74 = getelementptr inbounds %struct.usbat_info, %struct.usbat_info* %73, i32 0, i32 2
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %34
  %77 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %67, %65, %55, %47, %26, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @usbat_read_user_io(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_flash_check_media_present(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_flash_check_media_changed(%struct.us_data*, i8*) #1

declare dso_local i32 @usbat_device_reset(%struct.us_data*) #1

declare dso_local i32 @usbat_device_enable_cdt(%struct.us_data*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
