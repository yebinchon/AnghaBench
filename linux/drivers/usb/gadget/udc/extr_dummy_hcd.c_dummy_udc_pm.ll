; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_pm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_dummy_hcd.c_dummy_udc_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dummy = type { i32, i32 }
%struct.dummy_hcd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dummy*, %struct.dummy_hcd*, i32)* @dummy_udc_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dummy_udc_pm(%struct.dummy* %0, %struct.dummy_hcd* %1, i32 %2) #0 {
  %4 = alloca %struct.dummy*, align 8
  %5 = alloca %struct.dummy_hcd*, align 8
  %6 = alloca i32, align 4
  store %struct.dummy* %0, %struct.dummy** %4, align 8
  store %struct.dummy_hcd* %1, %struct.dummy_hcd** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dummy*, %struct.dummy** %4, align 8
  %8 = getelementptr inbounds %struct.dummy, %struct.dummy* %7, i32 0, i32 1
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.dummy*, %struct.dummy** %4, align 8
  %12 = getelementptr inbounds %struct.dummy, %struct.dummy* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.dummy_hcd*, %struct.dummy_hcd** %5, align 8
  %14 = call i32 @set_link_state(%struct.dummy_hcd* %13)
  %15 = load %struct.dummy*, %struct.dummy** %4, align 8
  %16 = getelementptr inbounds %struct.dummy, %struct.dummy* %15, i32 0, i32 1
  %17 = call i32 @spin_unlock_irq(i32* %16)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @set_link_state(%struct.dummy_hcd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
