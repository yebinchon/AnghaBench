; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_scan_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-q.c_scan_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64, i32, i32, %struct.ehci_qh*, %struct.TYPE_5__* }
%struct.ehci_qh = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ehci_qh* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ehci_qh* }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@EHCI_RH_RUNNING = common dso_local global i64 0, align 8
@EHCI_HRTIMER_ASYNC_UNLINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehci_hcd*)* @scan_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_async(%struct.ehci_hcd* %0) #0 {
  %2 = alloca %struct.ehci_hcd*, align 8
  %3 = alloca %struct.ehci_qh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %7 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %6, i32 0, i32 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ehci_qh*, %struct.ehci_qh** %10, align 8
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %13 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %12, i32 0, i32 3
  store %struct.ehci_qh* %11, %struct.ehci_qh** %13, align 8
  br label %14

14:                                               ; preds = %63, %1
  %15 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %16 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %15, i32 0, i32 3
  %17 = load %struct.ehci_qh*, %struct.ehci_qh** %16, align 8
  %18 = icmp ne %struct.ehci_qh* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %21 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %20, i32 0, i32 3
  %22 = load %struct.ehci_qh*, %struct.ehci_qh** %21, align 8
  store %struct.ehci_qh* %22, %struct.ehci_qh** %3, align 8
  %23 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %24 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.ehci_qh*, %struct.ehci_qh** %25, align 8
  %27 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %28 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %27, i32 0, i32 3
  store %struct.ehci_qh* %26, %struct.ehci_qh** %28, align 8
  %29 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %30 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %29, i32 0, i32 2
  %31 = call i64 @list_empty(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %19
  %34 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %35 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %36 = call i32 @qh_completions(%struct.ehci_hcd* %34, %struct.ehci_qh* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %42 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %43 = call i32 @start_unlink_async(%struct.ehci_hcd* %41, %struct.ehci_qh* %42)
  br label %62

44:                                               ; preds = %33
  %45 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %46 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %45, i32 0, i32 2
  %47 = call i64 @list_empty(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %51 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QH_STATE_LINKED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ehci_qh*, %struct.ehci_qh** %3, align 8
  %60 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  store i32 1, i32* %4, align 4
  br label %61

61:                                               ; preds = %55, %49, %44
  br label %62

62:                                               ; preds = %61, %40
  br label %63

63:                                               ; preds = %62, %19
  br label %14

64:                                               ; preds = %14
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %64
  %68 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %69 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @EHCI_RH_RUNNING, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %75 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @EHCI_HRTIMER_ASYNC_UNLINKS, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %73
  %82 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %83 = load i32, i32* @EHCI_HRTIMER_ASYNC_UNLINKS, align 4
  %84 = call i32 @ehci_enable_event(%struct.ehci_hcd* %82, i32 %83, i32 1)
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %2, align 8
  %86 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %73, %67, %64
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @qh_completions(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ehci_enable_event(%struct.ehci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
