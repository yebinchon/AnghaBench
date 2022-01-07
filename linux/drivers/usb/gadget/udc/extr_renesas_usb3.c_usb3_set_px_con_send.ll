; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_px_con_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_px_con_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i64 }
%struct.renesas_usb3 = type { i32 }

@USB3_PN_CON = common dso_local global i32 0, align 4
@USB3_P0_CON = common dso_local global i32 0, align 4
@PX_CON_SEND = common dso_local global i32 0, align 4
@PN_CON_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3_ep*, i32, i32)* @usb3_set_px_con_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_set_px_con_send(%struct.renesas_usb3_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.renesas_usb3_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.renesas_usb3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %11 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %10)
  store %struct.renesas_usb3* %11, %struct.renesas_usb3** %7, align 8
  %12 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %13 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @USB3_PN_CON, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @USB3_P0_CON, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %8, align 4
  %22 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @usb3_read(%struct.renesas_usb3* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @PX_CON_SEND, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @PX_CON_BYTE_EN_BYTES(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %32 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %20
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @PN_CON_LAST, align 4
  br label %41

40:                                               ; preds = %35, %20
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @usb3_write(%struct.renesas_usb3* %45, i32 %46, i32 %47)
  ret void
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @PX_CON_BYTE_EN_BYTES(i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
