; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_unlink_empty_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_unlink_empty_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ehci_qh* }
%struct.ehci_qh = type { i64, i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ehci_qh* }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_UNLINK_QUEUE_EMPTY = common dso_local global i32 0, align 4
@EHCI_HRTIMER_ASYNC_UNLINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @unlink_empty_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_empty_async(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca %struct.ehci_qh*, align 8
  %4 = alloca %struct.ehci_qh*, align 8
  %5 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  store %struct.ehci_qh* null, %struct.ehci_qh** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ehci_qh*, %struct.ehci_qh** %10, align 8
  store %struct.ehci_qh* %11, %struct.ehci_qh** %3, align 8
  br label %12

12:                                               ; preds = %40, %1
  %13 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %14 = icmp ne %struct.ehci_qh* %13, null
  br i1 %14, label %15, label %45

15:                                               ; preds = %12
  %16 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %17 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %16, i32 0, i32 3
  %18 = call i64 @list_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %22 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QH_STATE_LINKED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %30 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %33 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  store %struct.ehci_qh* %37, %struct.ehci_qh** %4, align 8
  br label %38

38:                                               ; preds = %36, %26
  br label %39

39:                                               ; preds = %38, %20, %15
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %42 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.ehci_qh*, %struct.ehci_qh** %43, align 8
  store %struct.ehci_qh* %44, %struct.ehci_qh** %3, align 8
  br label %12

45:                                               ; preds = %12
  %46 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %47 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %46, i32 0, i32 1
  %48 = call i64 @list_empty(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %52 = icmp ne %struct.ehci_qh* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* @QH_UNLINK_QUEUE_EMPTY, align 4
  %55 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %56 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %60 = load %struct.ehci_qh*, %struct.ehci_qh** %4, align 8
  %61 = call i32 @start_unlink_async(%struct.ehci_hcd* %59, %struct.ehci_qh* %60)
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %53, %50, %45
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %69 = load i32, i32* @EHCI_HRTIMER_ASYNC_UNLINKS, align 4
  %70 = call i32 @ehci_enable_event(%struct.ehci_hcd* %68, i32 %69, i32 1)
  %71 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %72 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %67, %64
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @ehci_enable_event(%struct.ehci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
