; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_queue_transactions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hcd_queue_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32 }

@DWC2_TRANSACTION_PERIODIC = common dso_local global i32 0, align 4
@DWC2_TRANSACTION_ALL = common dso_local global i32 0, align 4
@DWC2_TRANSACTION_NON_PERIODIC = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_NPTXFEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_queue_transactions(%struct.dwc2_hsotg* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DWC2_TRANSACTION_PERIODIC, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DWC2_TRANSACTION_ALL, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %15 = call i32 @dwc2_process_periodic_channels(%struct.dwc2_hsotg* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DWC2_TRANSACTION_NON_PERIODIC, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DWC2_TRANSACTION_ALL, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20, %16
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 0
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %31 = call i32 @dwc2_process_non_periodic_channels(%struct.dwc2_hsotg* %30)
  br label %44

32:                                               ; preds = %24
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = load i32, i32* @GINTMSK, align 4
  %35 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @GINTSTS_NPTXFEMP, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @GINTMSK, align 4
  %43 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %29
  br label %45

45:                                               ; preds = %44, %20
  ret void
}

declare dso_local i32 @dwc2_process_periodic_channels(%struct.dwc2_hsotg*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dwc2_process_non_periodic_channels(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
