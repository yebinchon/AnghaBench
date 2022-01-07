; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sl811h_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_sl811-hcd.c_sl811h_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.sl811 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @sl811h_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl811h_stop(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.sl811*, align 8
  %4 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.sl811* @hcd_to_sl811(%struct.usb_hcd* %5)
  store %struct.sl811* %6, %struct.sl811** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 0
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.sl811*, %struct.sl811** %3, align 8
  %11 = getelementptr inbounds %struct.sl811, %struct.sl811* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.sl811*, %struct.sl811** %3, align 8
  %15 = call i32 @port_power(%struct.sl811* %14, i32 0)
  %16 = load %struct.sl811*, %struct.sl811** %3, align 8
  %17 = getelementptr inbounds %struct.sl811, %struct.sl811* %16, i32 0, i32 0
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  ret void
}

declare dso_local %struct.sl811* @hcd_to_sl811(%struct.usb_hcd*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @port_power(%struct.sl811*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
