; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_hcd_qh_free_ddma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_hcd_qh_free_ddma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_qh = type { i64, i64 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_hcd_qh_free_ddma(%struct.dwc2_hsotg* %0, %struct.dwc2_qh* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_qh*, align 8
  %5 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_qh* %1, %struct.dwc2_qh** %4, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %8 = call i32 @dwc2_desc_list_free(%struct.dwc2_hsotg* %6, %struct.dwc2_qh* %7)
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %9, i32 0, i32 3
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %14 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %20 = call i32 @dwc2_release_channel_ddma(%struct.dwc2_hsotg* %18, %struct.dwc2_qh* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 3
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %27 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %21
  %32 = load %struct.dwc2_qh*, %struct.dwc2_qh** %4, align 8
  %33 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31, %21
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43, %37
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %55 = call i32 @dwc2_per_sched_disable(%struct.dwc2_hsotg* %54)
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %57 = call i32 @dwc2_frame_list_free(%struct.dwc2_hsotg* %56)
  br label %58

58:                                               ; preds = %53, %48, %43, %31
  ret void
}

declare dso_local i32 @dwc2_desc_list_free(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dwc2_release_channel_ddma(%struct.dwc2_hsotg*, %struct.dwc2_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_per_sched_disable(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_frame_list_free(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
