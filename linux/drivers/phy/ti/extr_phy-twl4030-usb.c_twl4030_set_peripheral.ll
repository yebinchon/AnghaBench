; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_set_peripheral.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-twl4030-usb.c_twl4030_set_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { i32, %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@OTG_STATE_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, %struct.usb_gadget*)* @twl4030_set_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_set_peripheral(%struct.usb_otg* %0, %struct.usb_gadget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_otg*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  store %struct.usb_otg* %0, %struct.usb_otg** %4, align 8
  store %struct.usb_gadget* %1, %struct.usb_gadget** %5, align 8
  %6 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %7 = icmp ne %struct.usb_otg* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %13 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %14 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %13, i32 0, i32 1
  store %struct.usb_gadget* %12, %struct.usb_gadget** %14, align 8
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %16 = icmp ne %struct.usb_gadget* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @OTG_STATE_UNDEFINED, align 4
  %19 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %20 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %11
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %8
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
