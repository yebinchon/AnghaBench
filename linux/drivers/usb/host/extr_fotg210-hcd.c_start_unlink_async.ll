; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_start_unlink_async.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_start_unlink_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%struct.fotg210_qh = type { i64, i32 }

@QH_STATE_LINKED = common dso_local global i64 0, align 8
@QH_STATE_COMPLETING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_qh*)* @start_unlink_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_unlink_async(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.fotg210_qh*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %4, align 8
  %5 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %6 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @QH_STATE_LINKED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %12 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QH_STATE_COMPLETING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %18 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %17, i32 0, i32 1
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %16, %10
  br label %26

20:                                               ; preds = %2
  %21 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %22 = load %struct.fotg210_qh*, %struct.fotg210_qh** %4, align 8
  %23 = call i32 @single_unlink_async(%struct.fotg210_hcd* %21, %struct.fotg210_qh* %22)
  %24 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %25 = call i32 @start_iaa_cycle(%struct.fotg210_hcd* %24, i32 0)
  br label %26

26:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @single_unlink_async(%struct.fotg210_hcd*, %struct.fotg210_qh*) #1

declare dso_local i32 @start_iaa_cycle(%struct.fotg210_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
