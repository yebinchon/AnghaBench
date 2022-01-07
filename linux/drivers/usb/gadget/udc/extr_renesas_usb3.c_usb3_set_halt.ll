; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i64, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, i32, i32)* @usb3_set_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_set_halt(%struct.renesas_usb3_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usb3_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %13 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %11, %3
  %20 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %21 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @usb3_set_halt_pn(%struct.renesas_usb3_ep* %25, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @usb3_set_halt_p0(%struct.renesas_usb3_ep* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @usb3_set_halt_pn(%struct.renesas_usb3_ep*, i32, i32) #1

declare dso_local i32 @usb3_set_halt_p0(%struct.renesas_usb3_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
