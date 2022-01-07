; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_free_qh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_free_qh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.uhci_qh = type { i64, i32, i64, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@QH_STATE_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"qh %p list not empty!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.uhci_qh*)* @uhci_free_qh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_free_qh(%struct.uhci_hcd* %0, %struct.uhci_qh* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca %struct.uhci_qh*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store %struct.uhci_qh* %1, %struct.uhci_qh** %4, align 8
  %5 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %6 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QH_STATE_IDLE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %12 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i1 [ false, %2 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %20 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %19, i32 0, i32 6
  %21 = call i32 @list_empty(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %25 = call i32 @uhci_dev(%struct.uhci_hcd* %24)
  %26 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %27 = call i32 @dev_WARN(i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.uhci_qh* %26)
  br label %28

28:                                               ; preds = %23, %15
  %29 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %30 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %29, i32 0, i32 5
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %33 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %38 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %42 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %47 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %48 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @uhci_free_td(%struct.uhci_hcd* %46, i64 %49)
  br label %51

51:                                               ; preds = %45, %36
  br label %52

52:                                               ; preds = %51, %28
  %53 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %54 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %57 = load %struct.uhci_qh*, %struct.uhci_qh** %4, align 8
  %58 = getelementptr inbounds %struct.uhci_qh, %struct.uhci_qh* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dma_pool_free(i32 %55, %struct.uhci_qh* %56, i32 %59)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_WARN(i32, i8*, %struct.uhci_qh*) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @uhci_free_td(%struct.uhci_hcd*, i64) #1

declare dso_local i32 @dma_pool_free(i32, %struct.uhci_qh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
