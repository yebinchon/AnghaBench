; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_get_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_atmel_usba_udc.c_usba_udc_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.usba_udc = type { i32 }

@FRAME_NUMBER = common dso_local global i32 0, align 4
@FNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @usba_udc_get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usba_udc_get_frame(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.usba_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %4 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %5 = call %struct.usba_udc* @to_usba_udc(%struct.usb_gadget* %4)
  store %struct.usba_udc* %5, %struct.usba_udc** %3, align 8
  %6 = load i32, i32* @FRAME_NUMBER, align 4
  %7 = load %struct.usba_udc*, %struct.usba_udc** %3, align 8
  %8 = load i32, i32* @FNUM, align 4
  %9 = call i32 @usba_readl(%struct.usba_udc* %7, i32 %8)
  %10 = call i32 @USBA_BFEXT(i32 %6, i32 %9)
  ret i32 %10
}

declare dso_local %struct.usba_udc* @to_usba_udc(%struct.usb_gadget*) #1

declare dso_local i32 @USBA_BFEXT(i32, i32) #1

declare dso_local i32 @usba_readl(%struct.usba_udc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
