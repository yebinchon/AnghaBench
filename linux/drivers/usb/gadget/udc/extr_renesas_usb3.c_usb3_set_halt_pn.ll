; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_halt_pn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_set_halt_pn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { i32, i32, i32 }
%struct.renesas_usb3 = type { i32 }

@PN_CON_EN = common dso_local global i32 0, align 4
@USB3_PN_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, i32, i32)* @usb3_set_halt_pn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_set_halt_pn(%struct.renesas_usb3_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.renesas_usb3_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.renesas_usb3*, align 8
  %8 = alloca i64, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %10 = call %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep* %9)
  store %struct.renesas_usb3* %10, %struct.renesas_usb3** %7, align 8
  %11 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %12 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %16 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb3_pn_change(%struct.renesas_usb3* %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %24 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %29 = call i32 @usb3_pn_stall(%struct.renesas_usb3* %28)
  br label %48

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %35 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %40 = call i32 @usb3_pn_con_clear(%struct.renesas_usb3* %39)
  %41 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %42 = load i32, i32* @PN_CON_EN, align 4
  %43 = load i32, i32* @USB3_PN_CON, align 4
  %44 = call i32 @usb3_set_bit(%struct.renesas_usb3* %41, i32 %42, i32 %43)
  %45 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %46 = call i32 @usb3_pn_stop(%struct.renesas_usb3* %45)
  br label %47

47:                                               ; preds = %38, %33
  br label %48

48:                                               ; preds = %47, %27
  br label %49

49:                                               ; preds = %48, %3
  %50 = load %struct.renesas_usb3*, %struct.renesas_usb3** %7, align 8
  %51 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  ret i32 0
}

declare dso_local %struct.renesas_usb3* @usb3_ep_to_usb3(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb3_pn_change(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_pn_stall(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_pn_con_clear(%struct.renesas_usb3*) #1

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_pn_stop(%struct.renesas_usb3*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
