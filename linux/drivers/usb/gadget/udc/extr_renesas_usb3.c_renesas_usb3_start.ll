; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usb_gadget_driver = type { i64, i32 }
%struct.renesas_usb3 = type { i64, %struct.usb_gadget_driver* }

@USB_SPEED_FULL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, %struct.usb_gadget_driver*)* @renesas_usb3_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_start(%struct.usb_gadget* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.usb_gadget_driver*, align 8
  %6 = alloca %struct.renesas_usb3*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %5, align 8
  %7 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %8 = icmp ne %struct.usb_gadget_driver* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %11 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_FULL, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %17 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %9, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %15
  %24 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %25 = call %struct.renesas_usb3* @gadget_to_renesas_usb3(%struct.usb_gadget* %24)
  store %struct.renesas_usb3* %25, %struct.renesas_usb3** %6, align 8
  %26 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %5, align 8
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %28 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %27, i32 0, i32 1
  store %struct.usb_gadget_driver* %26, %struct.usb_gadget_driver** %28, align 8
  %29 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %30 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %35 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @phy_init(i64 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %40 = call i32 @usb3_to_dev(%struct.renesas_usb3* %39)
  %41 = call i32 @pm_runtime_get_sync(i32 %40)
  %42 = load %struct.renesas_usb3*, %struct.renesas_usb3** %6, align 8
  %43 = call i32 @renesas_usb3_init_controller(%struct.renesas_usb3* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.renesas_usb3* @gadget_to_renesas_usb3(%struct.usb_gadget*) #1

declare dso_local i32 @phy_init(i64) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @usb3_to_dev(%struct.renesas_usb3*) #1

declare dso_local i32 @renesas_usb3_init_controller(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
