; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas-detect.h_uas_is_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas-detect.h_uas_is_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_host_interface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@USB_CLASS_MASS_STORAGE = common dso_local global i64 0, align 8
@USB_SC_SCSI = common dso_local global i64 0, align 8
@USB_PR_UAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_host_interface*)* @uas_is_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_is_interface(%struct.usb_host_interface* %0) #0 {
  %2 = alloca %struct.usb_host_interface*, align 8
  store %struct.usb_host_interface* %0, %struct.usb_host_interface** %2, align 8
  %3 = load %struct.usb_host_interface*, %struct.usb_host_interface** %2, align 8
  %4 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_CLASS_MASS_STORAGE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.usb_host_interface*, %struct.usb_host_interface** %2, align 8
  %11 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_SC_SCSI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.usb_host_interface*, %struct.usb_host_interface** %2, align 8
  %18 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @USB_PR_UAS, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %16, %9, %1
  %24 = phi i1 [ false, %9 ], [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
