; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_core_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_core_exit(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %3 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %4 = call i32 @dwc3_event_buffers_cleanup(%struct.dwc3* %3)
  %5 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usb_phy_shutdown(i32 %7)
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @usb_phy_shutdown(i32 %11)
  %13 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %14 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_exit(i32 %15)
  %17 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @phy_exit(i32 %19)
  %21 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_phy_set_suspend(i32 %23, i32 1)
  %25 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_phy_set_suspend(i32 %27, i32 1)
  %29 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @phy_power_off(i32 %31)
  %33 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_power_off(i32 %35)
  %37 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %38 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_bulk_disable_unprepare(i32 %39, i32 %42)
  %44 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @reset_control_assert(i32 %46)
  ret void
}

declare dso_local i32 @dwc3_event_buffers_cleanup(%struct.dwc3*) #1

declare dso_local i32 @usb_phy_shutdown(i32) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @usb_phy_set_suspend(i32, i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
