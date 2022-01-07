; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_qcserial.c_qc_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_qcserial.c_qc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial = type { i32 }
%struct.usb_wwan_intf_private = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial*)* @qc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qc_attach(%struct.usb_serial* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_serial*, align 8
  %4 = alloca %struct.usb_wwan_intf_private*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_serial* %0, %struct.usb_serial** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.usb_wwan_intf_private* @kzalloc(i32 8, i32 %6)
  store %struct.usb_wwan_intf_private* %7, %struct.usb_wwan_intf_private** %4, align 8
  %8 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %4, align 8
  %9 = icmp ne %struct.usb_wwan_intf_private* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %15 = call i64 @usb_get_serial_data(%struct.usb_serial* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %4, align 8
  %24 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %13
  %26 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %4, align 8
  %27 = getelementptr inbounds %struct.usb_wwan_intf_private, %struct.usb_wwan_intf_private* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.usb_serial*, %struct.usb_serial** %3, align 8
  %30 = load %struct.usb_wwan_intf_private*, %struct.usb_wwan_intf_private** %4, align 8
  %31 = call i32 @usb_set_serial_data(%struct.usb_serial* %29, %struct.usb_wwan_intf_private* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %25, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.usb_wwan_intf_private* @kzalloc(i32, i32) #1

declare dso_local i64 @usb_get_serial_data(%struct.usb_serial*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @usb_set_serial_data(%struct.usb_serial*, %struct.usb_wwan_intf_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
