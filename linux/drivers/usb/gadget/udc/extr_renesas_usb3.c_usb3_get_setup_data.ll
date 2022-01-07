; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_get_setup_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_get_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }
%struct.usb_ctrlrequest = type { i32 }
%struct.renesas_usb3_ep = type { i32 }

@USB3_STUP_DAT_0 = common dso_local global i32 0, align 4
@USB3_STUP_DAT_1 = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, %struct.usb_ctrlrequest*)* @usb3_get_setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_get_setup_data(%struct.renesas_usb3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.renesas_usb3_ep*, align 8
  %6 = alloca i8**, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %7 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %8 = call %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3* %7, i32 0)
  store %struct.renesas_usb3_ep* %8, %struct.renesas_usb3_ep** %5, align 8
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %10 = bitcast %struct.usb_ctrlrequest* %9 to i8**
  store i8** %10, i8*** %6, align 8
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %12 = load i32, i32* @USB3_STUP_DAT_0, align 4
  %13 = call i8* @usb3_read(%struct.renesas_usb3* %11, i32 %12)
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** %6, align 8
  store i8* %13, i8** %14, align 8
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %17 = load i32, i32* @USB3_STUP_DAT_1, align 4
  %18 = call i8* @usb3_read(%struct.renesas_usb3* %16, i32 %17)
  %19 = load i8**, i8*** %6, align 8
  store i8* %18, i8** %19, align 8
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %5, align 8
  %30 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret void
}

declare dso_local %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3*, i32) #1

declare dso_local i8* @usb3_read(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
