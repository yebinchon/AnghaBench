; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_mode_by_role_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_mode_by_role_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32, i32, i64 }

@USB_ROLE_HOST = common dso_local global i32 0, align 4
@USB_ROLE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, i32)* @usb3_set_mode_by_role_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_set_mode_by_role_sw(%struct.renesas_usb3* %0, i32 %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %6 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @USB_ROLE_HOST, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @USB_ROLE_DEVICE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %19 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %21 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %20, i32 0, i32 0
  %22 = call i32 @schedule_work(i32* %21)
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @usb3_set_mode(%struct.renesas_usb3* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usb3_set_mode(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
