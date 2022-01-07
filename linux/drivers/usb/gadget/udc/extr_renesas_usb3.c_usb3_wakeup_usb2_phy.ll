; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_wakeup_usb2_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_wakeup_usb2_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }

@USB3_USB20_CON = common dso_local global i32 0, align 4
@USB20_CON_B2_SUSPEND = common dso_local global i32 0, align 4
@USB_INT_1_B2_RSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3*)* @usb3_wakeup_usb2_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_wakeup_usb2_phy(%struct.renesas_usb3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.renesas_usb3*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  %4 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %5 = load i32, i32* @USB3_USB20_CON, align 4
  %6 = call i32 @usb3_read(%struct.renesas_usb3* %4, i32 %5)
  %7 = load i32, i32* @USB20_CON_B2_SUSPEND, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %13 = load i32, i32* @USB20_CON_B2_SUSPEND, align 4
  %14 = load i32, i32* @USB3_USB20_CON, align 4
  %15 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %12, i32 %13, i32 %14)
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %17 = load i32, i32* @USB_INT_1_B2_RSUM, align 4
  %18 = call i32 @usb3_enable_irq_1(%struct.renesas_usb3* %16, i32 %17)
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %10
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @usb3_read(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_enable_irq_1(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
