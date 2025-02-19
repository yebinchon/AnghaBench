; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_usb_nci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_usb_nci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.nfcmrvl_usb_drv_data* }
%struct.nfcmrvl_usb_drv_data = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NFCMRVL_USB_BULK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfcmrvl_private*)* @nfcmrvl_usb_nci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_usb_nci_open(%struct.nfcmrvl_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfcmrvl_private*, align 8
  %4 = alloca %struct.nfcmrvl_usb_drv_data*, align 8
  %5 = alloca i32, align 4
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %3, align 8
  %6 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %7 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %6, i32 0, i32 0
  %8 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  store %struct.nfcmrvl_usb_drv_data* %8, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %9 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %10 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %19 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @nfcmrvl_submit_bulk_urb(%struct.nfcmrvl_usb_drv_data* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %40

28:                                               ; preds = %17
  %29 = load i32, i32* @NFCMRVL_USB_BULK_RUNNING, align 4
  %30 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %31 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @nfcmrvl_submit_bulk_urb(%struct.nfcmrvl_usb_drv_data* %33, i32 %34)
  %36 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %37 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %38)
  store i32 0, i32* %2, align 4
  br label %46

40:                                               ; preds = %27
  %41 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %42 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %43)
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %40, %28, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @nfcmrvl_submit_bulk_urb(%struct.nfcmrvl_usb_drv_data*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
