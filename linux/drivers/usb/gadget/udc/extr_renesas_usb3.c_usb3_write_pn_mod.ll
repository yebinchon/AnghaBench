; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_write_pn_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_write_pn_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i64 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.renesas_usb3 = type { i32 }

@PN_MOD_DIR = common dso_local global i32 0, align 4
@USB3_PN_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, %struct.usb_endpoint_descriptor*)* @usb3_write_pn_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_write_pn_mod(%struct.renesas_usb3_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %7 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %8 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %7)
  store %struct.renesas_usb3* %8, %struct.renesas_usb3** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %10 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @PN_MOD_DIR, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %21 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %20)
  %22 = call i32 @PN_MOD_TYPE(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %26 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %25)
  %27 = call i32 @PN_MOD_EPNUM(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @USB3_PN_MOD, align 4
  %33 = call i32 @usb3_write(%struct.renesas_usb3* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @PN_MOD_TYPE(i32) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @PN_MOD_EPNUM(i32) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
