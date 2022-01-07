; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_do_unreserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_do_unreserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_qh = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qh*)* @dwc2_do_unreserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_do_unreserve(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %5, i32 0, i32 3
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %9 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %16 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %18 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %17, i32 0, i32 2
  %19 = call i32 @list_empty(i32* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %27 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %26, i32 0, i32 2
  %28 = call i32 @list_del_init(i32* %27)
  br label %29

29:                                               ; preds = %25, %2
  %30 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %31 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %40 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %46 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %47 = call i32 @dwc2_uframe_unschedule(%struct.dwc2_hsotg* %45, %struct.dwc2_qh* %46)
  br label %53

48:                                               ; preds = %29
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %48, %44
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dwc2_uframe_unschedule(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
