; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.h_hub_is_superspeedplus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.h_hub_is_superspeedplus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@USB_HUB_PR_SS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*)* @hub_is_superspeedplus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_is_superspeedplus(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  %3 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %4 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @USB_HUB_PR_SS, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = icmp sge i32 %14, 784
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %16, %9, %1
  %24 = phi i1 [ false, %9 ], [ false, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
