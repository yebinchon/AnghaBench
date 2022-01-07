; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_event_queue_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_debugfs.c_dwc3_event_queue_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.dwc3_ep* }
%struct.dwc3_ep = type { %struct.dwc3* }
%struct.dwc3 = type { i32 }

@DWC3_EVENTQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @dwc3_event_queue_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_event_queue_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  store %struct.dwc3_ep* %11, %struct.dwc3_ep** %5, align 8
  %12 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %13 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %12, i32 0, i32 0
  %14 = load %struct.dwc3*, %struct.dwc3** %13, align 8
  store %struct.dwc3* %14, %struct.dwc3** %6, align 8
  %15 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %20 = load i32, i32* @DWC3_EVENTQ, align 4
  %21 = call i32 @dwc3_core_fifo_space(%struct.dwc3_ep* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc3_core_fifo_space(%struct.dwc3_ep*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
