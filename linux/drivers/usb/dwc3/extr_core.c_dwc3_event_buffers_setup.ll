; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_event_buffers_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_event_buffers_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, %struct.dwc3_event_buffer* }
%struct.dwc3_event_buffer = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_event_buffers_setup(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca %struct.dwc3_event_buffer*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 1
  %6 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %5, align 8
  store %struct.dwc3_event_buffer* %6, %struct.dwc3_event_buffer** %3, align 8
  %7 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %10 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @DWC3_GEVNTADRLO(i32 0)
  %13 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = call i32 @dwc3_writel(i32 %11, i32 %12, i32 %16)
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @DWC3_GEVNTADRHI(i32 0)
  %22 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @upper_32_bits(i32 %24)
  %26 = call i32 @dwc3_writel(i32 %20, i32 %21, i32 %25)
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @DWC3_GEVNTSIZ(i32 0)
  %31 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DWC3_GEVNTSIZ_SIZE(i32 %33)
  %35 = call i32 @dwc3_writel(i32 %29, i32 %30, i32 %34)
  %36 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %37 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DWC3_GEVNTCOUNT(i32 0)
  %40 = call i32 @dwc3_writel(i32 %38, i32 %39, i32 0)
  ret i32 0
}

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_GEVNTADRLO(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @DWC3_GEVNTADRHI(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DWC3_GEVNTSIZ(i32) #1

declare dso_local i32 @DWC3_GEVNTSIZ_SIZE(i32) #1

declare dso_local i32 @DWC3_GEVNTCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
