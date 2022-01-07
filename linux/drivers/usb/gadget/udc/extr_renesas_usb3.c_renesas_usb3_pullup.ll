; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.renesas_usb3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @renesas_usb3_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_usb3_pullup(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usb3*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.renesas_usb3* @gadget_to_renesas_usb3(%struct.usb_gadget* %6)
  store %struct.renesas_usb3* %7, %struct.renesas_usb3** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %14 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret i32 0
}

declare dso_local %struct.renesas_usb3* @gadget_to_renesas_usb3(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
