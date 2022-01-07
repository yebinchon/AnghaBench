; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_shuttle_usbat.c_usbat_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@USBAT_UIO_DRVRST = common dso_local global i32 0, align 4
@USBAT_UIO_OE1 = common dso_local global i32 0, align 4
@USBAT_UIO_OE0 = common dso_local global i32 0, align 4
@USBAT_UIO_EPAD = common dso_local global i32 0, align 4
@USBAT_UIO_1 = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @usbat_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_device_reset(%struct.us_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  %5 = load %struct.us_data*, %struct.us_data** %3, align 8
  %6 = load i32, i32* @USBAT_UIO_DRVRST, align 4
  %7 = load i32, i32* @USBAT_UIO_OE1, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @USBAT_UIO_OE0, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @USBAT_UIO_EPAD, align 4
  %12 = load i32, i32* @USBAT_UIO_1, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @usbat_write_user_io(%struct.us_data* %5, i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.us_data*, %struct.us_data** %3, align 8
  %22 = load i32, i32* @USBAT_UIO_OE1, align 4
  %23 = load i32, i32* @USBAT_UIO_OE0, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @USBAT_UIO_EPAD, align 4
  %26 = load i32, i32* @USBAT_UIO_1, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @usbat_write_user_io(%struct.us_data* %21, i32 %24, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @usbat_write_user_io(%struct.us_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
