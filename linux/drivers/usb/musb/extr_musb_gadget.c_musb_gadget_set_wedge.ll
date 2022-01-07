; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_set_wedge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget.c_musb_gadget_set_wedge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.musb_ep = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @musb_gadget_set_wedge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musb_gadget_set_wedge(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.musb_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %5 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %6 = call %struct.musb_ep* @to_musb_ep(%struct.usb_ep* %5)
  store %struct.musb_ep* %6, %struct.musb_ep** %4, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = icmp ne %struct.usb_ep* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.musb_ep*, %struct.musb_ep** %4, align 8
  %14 = getelementptr inbounds %struct.musb_ep, %struct.musb_ep* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %16 = call i32 @usb_ep_set_halt(%struct.usb_ep* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.musb_ep* @to_musb_ep(%struct.usb_ep*) #1

declare dso_local i32 @usb_ep_set_halt(%struct.usb_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
