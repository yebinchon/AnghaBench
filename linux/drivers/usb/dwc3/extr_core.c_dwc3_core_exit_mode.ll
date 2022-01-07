; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_exit_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_exit_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_core_exit_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_core_exit_mode(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %3 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %4 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 130, label %9
    i32 129, label %12
  ]

6:                                                ; preds = %1
  %7 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %8 = call i32 @dwc3_gadget_exit(%struct.dwc3* %7)
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %11 = call i32 @dwc3_host_exit(%struct.dwc3* %10)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %14 = call i32 @dwc3_drd_exit(%struct.dwc3* %13)
  br label %16

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %12, %9, %6
  ret void
}

declare dso_local i32 @dwc3_gadget_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_host_exit(%struct.dwc3*) #1

declare dso_local i32 @dwc3_drd_exit(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
