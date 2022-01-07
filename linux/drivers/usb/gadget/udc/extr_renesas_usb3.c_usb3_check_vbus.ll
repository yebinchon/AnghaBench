; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_check_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_check_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32, i32, i64 }

@USB3_USB_STA = common dso_local global i32 0, align 4
@USB_STA_VBUS_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*)* @usb3_check_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_check_vbus(%struct.renesas_usb3* %0) #0 {
  %2 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %2, align 8
  %3 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %4 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %9 = call i32 @usb3_connect(%struct.renesas_usb3* %8)
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %12 = load i32, i32* @USB3_USB_STA, align 4
  %13 = call i32 @usb3_read(%struct.renesas_usb3* %11, i32 %12)
  %14 = load i32, i32* @USB_STA_VBUS_STA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %21 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %23 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %10
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %28 = call i32 @usb3_connect(%struct.renesas_usb3* %27)
  br label %32

29:                                               ; preds = %10
  %30 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %31 = call i32 @usb3_disconnect(%struct.renesas_usb3* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.renesas_usb3*, %struct.renesas_usb3** %2, align 8
  %34 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %33, i32 0, i32 1
  %35 = call i32 @schedule_work(i32* %34)
  br label %36

36:                                               ; preds = %32, %7
  ret void
}

declare dso_local i32 @usb3_connect(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_disconnect(%struct.renesas_usb3*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
