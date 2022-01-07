; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_perio_tx_fifo_empty_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_perio_tx_fifo_empty_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"--Periodic TxFIFO Empty Interrupt--\0A\00", align 1
@DWC2_TRANSACTION_PERIODIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_perio_tx_fifo_empty_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_perio_tx_fifo_empty_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %3 = call i64 (...) @dbg_perio()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_vdbg(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %5, %1
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %12 = load i32, i32* @DWC2_TRANSACTION_PERIODIC, align 4
  %13 = call i32 @dwc2_hcd_queue_transactions(%struct.dwc2_hsotg* %11, i32 %12)
  ret void
}

declare dso_local i64 @dbg_perio(...) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @dwc2_hcd_queue_transactions(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
