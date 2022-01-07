; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hcd_qh_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_dwc2_hcd_qh_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32 }
%struct.dwc2_qh = type { i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_qh_free(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %6 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %7 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %6, i32 0, i32 4
  %8 = call i64 @del_timer_sync(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %16 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %17 = call i32 @dwc2_do_unreserve(%struct.dwc2_hsotg* %15, %struct.dwc2_qh* %16)
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 1
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %24 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %23, i32 0, i32 3
  %25 = call i32 @hrtimer_cancel(i32* %24)
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %27 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %28 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dwc2_host_put_tt_info(%struct.dwc2_hsotg* %26, i32 %29)
  %31 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %32 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %37 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %38 = call i32 @dwc2_hcd_qh_free_ddma(%struct.dwc2_hsotg* %36, %struct.dwc2_qh* %37)
  br label %58

39:                                               ; preds = %22
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %41 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %46 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %54 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @kmem_cache_free(i64 %52, i64 %55)
  br label %57

57:                                               ; preds = %49, %44, %39
  br label %58

58:                                               ; preds = %57, %35
  %59 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %60 = call i32 @kfree(%struct.dwc2_qh* %59)
  ret void
}

declare dso_local i64 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_do_unreserve(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @dwc2_host_put_tt_info(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_hcd_qh_free_ddma(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @kmem_cache_free(i64, i64) #1

declare dso_local i32 @kfree(%struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
