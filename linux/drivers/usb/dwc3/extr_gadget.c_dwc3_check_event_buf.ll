; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_check_event_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_check_event_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_event_buffer = type { i32, i64, i64, i64, i64, i32, %struct.dwc3* }
%struct.dwc3 = type { i32, i32, i32, i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@DWC3_EVENT_PENDING = common dso_local global i32 0, align 4
@DWC3_GEVNTCOUNT_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@DWC3_GEVNTSIZ_INTMASK = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_event_buffer*)* @dwc3_check_event_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_check_event_buf(%struct.dwc3_event_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_event_buffer*, align 8
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc3_event_buffer* %0, %struct.dwc3_event_buffer** %3, align 8
  %8 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %8, i32 0, i32 6
  %10 = load %struct.dwc3*, %struct.dwc3** %9, align 8
  store %struct.dwc3* %10, %struct.dwc3** %4, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @pm_runtime_suspended(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %18 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get(i32 %19)
  %21 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @disable_irq_nosync(i32 %23)
  %25 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %27, i32* %2, align 4
  br label %120

28:                                               ; preds = %1
  %29 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DWC3_EVENT_PENDING, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %2, align 4
  br label %120

37:                                               ; preds = %28
  %38 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DWC3_GEVNTCOUNT(i32 0)
  %42 = call i32 @dwc3_readl(i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @DWC3_GEVNTCOUNT_MASK, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  %49 = load i32, i32* @IRQ_NONE, align 4
  store i32 %49, i32* %2, align 4
  br label %120

50:                                               ; preds = %37
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @DWC3_EVENT_PENDING, align 4
  %55 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %56 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @DWC3_GEVNTSIZ(i32 0)
  %63 = call i32 @dwc3_readl(i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @DWC3_GEVNTSIZ_INTMASK, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %68 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DWC3_GEVNTSIZ(i32 0)
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dwc3_writel(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %75 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %78 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = call i32 @min(i32 %73, i64 %80)
  store i32 %81, i32* %5, align 4
  %82 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %83 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %86 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %90 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %93 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @memcpy(i64 %88, i64 %95, i32 %96)
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %50
  %102 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %103 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %3, align 8
  %106 = getelementptr inbounds %struct.dwc3_event_buffer, %struct.dwc3_event_buffer* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %5, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @memcpy(i64 %104, i64 %107, i32 %110)
  br label %112

112:                                              ; preds = %101, %50
  %113 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %114 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DWC3_GEVNTCOUNT(i32 0)
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @dwc3_writel(i32 %115, i32 %116, i32 %117)
  %119 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %112, %48, %35, %16
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i64 @pm_runtime_suspended(i32) #1

declare dso_local i32 @pm_runtime_get(i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GEVNTCOUNT(i32) #1

declare dso_local i32 @DWC3_GEVNTSIZ(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
