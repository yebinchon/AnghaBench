; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_set_wedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_set_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64 }

@ep0name = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @dummy_set_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_set_wedge(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %4 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %5 = icmp ne %struct.usb_ep* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ep0name, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6, %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %6
  %16 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %17 = call i32 @dummy_set_halt_and_wedge(%struct.usb_ep* %16, i32 1, i32 1)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @dummy_set_halt_and_wedge(%struct.usb_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
