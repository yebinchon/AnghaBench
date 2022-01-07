; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_unlink_empty_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_unlink_empty_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.fotg210_qh* }
%struct.fotg210_qh = type { i64, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.fotg210_qh* }

@FOTG210_RH_RUNNING = common dso_local global i64 0, align 8
@QH_STATE_LINKED = common dso_local global i64 0, align 8
@FOTG210_HRTIMER_ASYNC_UNLINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*)* @unlink_empty_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unlink_empty_async(%struct.fotg210_hcd* %0) #0 {
  %2 = alloca %struct.fotg210_hcd*, align 8
  %3 = alloca %struct.fotg210_qh*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %2, align 8
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %8 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @FOTG210_RH_RUNNING, align 8
  %11 = icmp slt i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.fotg210_qh*, %struct.fotg210_qh** %17, align 8
  store %struct.fotg210_qh* %18, %struct.fotg210_qh** %4, align 8
  br label %19

19:                                               ; preds = %55, %1
  %20 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %21 = icmp ne %struct.fotg210_qh* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  store %struct.fotg210_qh* %23, %struct.fotg210_qh** %3, align 8
  %24 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %25 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.fotg210_qh*, %struct.fotg210_qh** %26, align 8
  store %struct.fotg210_qh* %27, %struct.fotg210_qh** %4, align 8
  %28 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %29 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %28, i32 0, i32 2
  %30 = call i64 @list_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %22
  %33 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %34 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @QH_STATE_LINKED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %43 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %46 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 1, i32* %6, align 4
  br label %54

50:                                               ; preds = %41, %38
  %51 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %52 = load %struct.fotg210_qh*, %struct.fotg210_qh** %3, align 8
  %53 = call i32 @single_unlink_async(%struct.fotg210_hcd* %51, %struct.fotg210_qh* %52)
  br label %54

54:                                               ; preds = %50, %49
  br label %55

55:                                               ; preds = %54, %32, %22
  br label %19

56:                                               ; preds = %19
  %57 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %58 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %63 = call i32 @start_iaa_cycle(%struct.fotg210_hcd* %62, i32 0)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %69 = load i32, i32* @FOTG210_HRTIMER_ASYNC_UNLINKS, align 4
  %70 = call i32 @fotg210_enable_event(%struct.fotg210_hcd* %68, i32 %69, i32 1)
  %71 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %2, align 8
  %72 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %67, %64
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @single_unlink_async(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @start_iaa_cycle(%struct.fotg210_hcd*, i32) #1

declare dso_local i32 @fotg210_enable_event(%struct.fotg210_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
