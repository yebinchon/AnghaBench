; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_fifo_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_renesas_usb3_ep_fifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.renesas_usb3_ep = type { i64 }
%struct.renesas_usb3 = type { i32 }

@PN_CON_EN = common dso_local global i32 0, align 4
@USB3_PN_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*)* @renesas_usb3_ep_fifo_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renesas_usb3_ep_fifo_flush(%struct.usb_ep* %0) #0 {
  %2 = alloca %struct.usb_ep*, align 8
  %3 = alloca %struct.renesas_usb3_ep*, align 8
  %4 = alloca %struct.renesas_usb3*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %2, align 8
  %6 = load %struct.usb_ep*, %struct.usb_ep** %2, align 8
  %7 = call %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep* %6)
  store %struct.renesas_usb3_ep* %7, %struct.renesas_usb3_ep** %3, align 8
  %8 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %9 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %8)
  store %struct.renesas_usb3* %9, %struct.renesas_usb3** %4, align 8
  %10 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %11 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %16 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %20 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %3, align 8
  %21 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @usb3_pn_change(%struct.renesas_usb3* %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %14
  %26 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %27 = call i32 @usb3_pn_con_clear(%struct.renesas_usb3* %26)
  %28 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %29 = load i32, i32* @PN_CON_EN, align 4
  %30 = load i32, i32* @USB3_PN_CON, align 4
  %31 = call i32 @usb3_set_bit(%struct.renesas_usb3* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %14
  %33 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %34 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %39 = call i32 @usb3_p0_con_clear_buffer(%struct.renesas_usb3* %38)
  br label %40

40:                                               ; preds = %37, %32
  ret void
}

declare dso_local %struct.renesas_usb3_ep* @usb_ep_to_usb3_ep(%struct.usb_ep*) #1

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb3_pn_change(%struct.renesas_usb3*, i64) #1

declare dso_local i32 @usb3_pn_con_clear(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb3_p0_con_clear_buffer(%struct.renesas_usb3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
