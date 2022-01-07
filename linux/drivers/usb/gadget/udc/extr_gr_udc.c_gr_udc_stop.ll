; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_udc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_udc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.gr_udc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*)* @gr_udc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gr_udc_stop(%struct.usb_gadget* %0) #0 {
  %2 = alloca %struct.usb_gadget*, align 8
  %3 = alloca %struct.gr_udc*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %2, align 8
  %5 = load %struct.usb_gadget*, %struct.usb_gadget** %2, align 8
  %6 = call %struct.gr_udc* @to_gr_udc(%struct.usb_gadget* %5)
  store %struct.gr_udc* %6, %struct.gr_udc** %3, align 8
  %7 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %8 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %12 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %14 = call i32 @gr_stop_activity(%struct.gr_udc* %13)
  %15 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %16 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  ret i32 0
}

declare dso_local %struct.gr_udc* @to_gr_udc(%struct.usb_gadget*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gr_stop_activity(%struct.gr_udc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
