; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_reset_gadget.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_reset_gadget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_reset_gadget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_reset_gadget(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %3 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %4 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 2
  %21 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_gadget_udc_reset(%struct.TYPE_2__* %20, i32 %23)
  %25 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  br label %28

28:                                               ; preds = %7, %15, %8
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_gadget_udc_reset(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
