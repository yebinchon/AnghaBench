; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_process_event_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_process_event_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_event_buffer = type { i32, i32, i32, i32, i64, %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }
%union.dwc3_event = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@DWC3_EVENT_PENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@DWC3_GEVNTSIZ_INTMASK = common dso_local global i32 0, align 4
@DWC3_GEVNTCOUNT_EHB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_event_buffer*)* @dwc3_process_event_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_process_event_buf(%struct.dwc3_event_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_event_buffer*, align 8
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.dwc3_event, align 4
  store %struct.dwc3_event_buffer* %0, %struct.dwc3_event_buffer** %3, align 8
  %9 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %9, i32 0, i32 5
  %11 = load %struct.dwc3*, %struct.dwc3** %10, align 8
  store %struct.dwc3* %11, %struct.dwc3** %4, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DWC3_EVENT_PENDING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %28, %24
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %25
  %29 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.dwc3_event* %8 to i32*
  store i32 %38, i32* %39, align 4
  %40 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %41 = call i32 @dwc3_process_event_entry(%struct.dwc3* %40, %union.dwc3_event* %8)
  %42 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %43 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 4
  %46 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %45, %48
  %50 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %6, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %56 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @DWC3_EVENT_PENDING, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %60 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %63, i32* %5, align 4
  %64 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %65 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DWC3_GEVNTSIZ(i32 0)
  %68 = call i32 @dwc3_readl(i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @DWC3_GEVNTSIZ_INTMASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %74 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DWC3_GEVNTSIZ(i32 0)
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @dwc3_writel(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %80 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %54
  %84 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %85 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DWC3_GEVNTCOUNT(i32 0)
  %88 = load i32, i32* @DWC3_GEVNTCOUNT_EHB, align 4
  %89 = call i32 @dwc3_writel(i32 %86, i32 %87, i32 %88)
  %90 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %91 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DWC3_DEV_IMOD(i32 0)
  %94 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %95 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dwc3_writel(i32 %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %83, %54
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %22
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dwc3_process_event_entry(%struct.dwc3*, %union.dwc3_event*) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GEVNTSIZ(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_GEVNTCOUNT(i32) #1

declare dso_local i32 @DWC3_DEV_IMOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
