; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_disable_pipe_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_disable_pipe_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i32 }
%struct.renesas_usb3 = type { i32 }

@USB3_PN_INT_ENA = common dso_local global i32 0, align 4
@USB3_PN_RAMMAP = common dso_local global i32 0, align 4
@PN_CON_EN = common dso_local global i32 0, align 4
@USB3_PN_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*)* @usb3_disable_pipe_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_disable_pipe_n(%struct.renesas_usb3_ep* %0) #0 {
  %2 = alloca %struct.renesas_usb3_ep*, align 8
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca i64, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %2, align 8
  %5 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %6 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %5)
  store %struct.renesas_usb3* %6, %struct.renesas_usb3** %3, align 8
  %7 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %8 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %10 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %14 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %2, align 8
  %15 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb3_pn_change(%struct.renesas_usb3* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %21 = load i32, i32* @USB3_PN_INT_ENA, align 4
  %22 = call i32 @usb3_write(%struct.renesas_usb3* %20, i32 0, i32 %21)
  %23 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %24 = load i32, i32* @USB3_PN_RAMMAP, align 4
  %25 = call i32 @usb3_write(%struct.renesas_usb3* %23, i32 0, i32 %24)
  %26 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %27 = load i32, i32* @PN_CON_EN, align 4
  %28 = load i32, i32* @USB3_PN_CON, align 4
  %29 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %32 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %31, i32 0, i32 0
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  ret i32 0
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_write(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
