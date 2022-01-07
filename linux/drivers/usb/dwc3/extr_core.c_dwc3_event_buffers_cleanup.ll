; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_event_buffers_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_event_buffers_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, %struct.dwc3_event_buffer* }
%struct.dwc3_event_buffer = type { i64 }

@DWC3_GEVNTSIZ_INTMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_event_buffers_cleanup(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_event_buffer*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 1
  %6 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %5, align 8
  store %struct.dwc3_event_buffer* %6, %struct.dwc3_event_buffer** %3, align 8
  %7 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @DWC3_GEVNTADRLO(i32 0)
  %13 = call i32 @dwc3_writel(i32 %11, i32 %12, i32 0)
  %14 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DWC3_GEVNTADRHI(i32 0)
  %18 = call i32 @dwc3_writel(i32 %16, i32 %17, i32 0)
  %19 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @DWC3_GEVNTSIZ(i32 0)
  %23 = load i32, i32* @DWC3_GEVNTSIZ_INTMASK, align 4
  %24 = call i32 @DWC3_GEVNTSIZ_SIZE(i32 0)
  %25 = or i32 %23, %24
  %26 = call i32 @dwc3_writel(i32 %21, i32 %22, i32 %25)
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DWC3_GEVNTCOUNT(i32 0)
  %31 = call i32 @dwc3_writel(i32 %29, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_GEVNTADRLO(i32) #1

declare dso_local i32 @DWC3_GEVNTADRHI(i32) #1

declare dso_local i32 @DWC3_GEVNTSIZ(i32) #1

declare dso_local i32 @DWC3_GEVNTSIZ_SIZE(i32) #1

declare dso_local i32 @DWC3_GEVNTCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
