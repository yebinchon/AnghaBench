; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_qh_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-mem.c_qh_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i32 }
%struct.ehci_qh = type { i32, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"unused qh not empty!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*, %struct.ehci_qh*)* @qh_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qh_destroy(%struct.ehci_hcd* %0, %struct.ehci_qh* %1) #0 {
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  store %struct.ehci_qh* %1, %struct.ehci_qh** %4, align 8
  %5 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %6 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %5, i32 0, i32 4
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %11 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %2
  %16 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %17 = call i32 @ehci_dbg(%struct.ehci_hcd* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @BUG()
  br label %19

19:                                               ; preds = %15, %9
  %20 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %21 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %26 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %27 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ehci_qtd_free(%struct.ehci_hcd* %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %32 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %35 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %38 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dma_pool_free(i32 %33, i32 %36, i32 %39)
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %42 = call i32 @kfree(%struct.ehci_qh* %41)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @ehci_dbg(%struct.ehci_hcd*, i8*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ehci_qtd_free(%struct.ehci_hcd*, i64) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ehci_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
