; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_feature_is_dev_remote_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_feature_is_dev_remote_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ctrlrequest = type { i64 }

@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ctrlrequest*)* @feature_is_dev_remote_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feature_is_dev_remote_wakeup(%struct.usb_ctrlrequest* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usb_ctrlrequest* %0, %struct.usb_ctrlrequest** %3, align 8
  %4 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %5 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %8 = call i64 @cpu_to_le16(i32 %7)
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
