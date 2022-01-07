; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_silence_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_silence_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32, i32 }

@FOTG210_RH_HALTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @fotg210_silence_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_silence_controller(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %3 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %4 = call i32 @fotg210_halt(%struct.fotg210_hcd* %3)
  %5 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load i32, i32* @FOTG210_RH_HALTED, align 4
  %9 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %12 = call i32 @fotg210_turn_off_all_ports(%struct.fotg210_hcd* %11)
  %13 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_irq(i32* %14)
  ret void
}

declare dso_local i32 @fotg210_halt(%struct.fotg210_hcd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @fotg210_turn_off_all_ports(%struct.fotg210_hcd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
