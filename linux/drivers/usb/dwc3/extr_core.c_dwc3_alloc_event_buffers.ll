; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_alloc_event_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_alloc_event_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.dwc3_event_buffer*, i32 }
%struct.dwc3_event_buffer = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"can't allocate event buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, i32)* @dwc3_alloc_event_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_alloc_event_buffers(%struct.dwc3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3_event_buffer*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.dwc3_event_buffer* @dwc3_alloc_one_event_buffer(%struct.dwc3* %7, i32 %8)
  store %struct.dwc3_event_buffer* %9, %struct.dwc3_event_buffer** %6, align 8
  %10 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %11 = call i64 @IS_ERR(%struct.dwc3_event_buffer* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %15 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.dwc3_event_buffer* %18)
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.dwc3_event_buffer*, %struct.dwc3_event_buffer** %6, align 8
  %22 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %23 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 0
  store %struct.dwc3_event_buffer* %21, %struct.dwc3_event_buffer** %23, align 8
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.dwc3_event_buffer* @dwc3_alloc_one_event_buffer(%struct.dwc3*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dwc3_event_buffer*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.dwc3_event_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
