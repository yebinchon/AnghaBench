; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_pzl.c_pzl_urb_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/host/whci/extr_pzl.c_pzl_urb_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.whc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }
%struct.whc_qset = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pzl_urb_enqueue(%struct.whc* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.whc*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.whc_qset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.whc* %0, %struct.whc** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.whc*, %struct.whc** %5, align 8
  %12 = getelementptr inbounds %struct.whc, %struct.whc* %11, i32 0, i32 2
  %13 = load i64, i64* %10, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.whc*, %struct.whc** %5, align 8
  %16 = getelementptr inbounds %struct.whc, %struct.whc* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = call i32 @usb_hcd_link_urb_to_ep(i32* %17, %struct.urb* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.whc*, %struct.whc** %5, align 8
  %24 = getelementptr inbounds %struct.whc, %struct.whc* %23, i32 0, i32 2
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %84

28:                                               ; preds = %3
  %29 = load %struct.whc*, %struct.whc** %5, align 8
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.whc_qset* @get_qset(%struct.whc* %29, %struct.urb* %30, i32 %31)
  store %struct.whc_qset* %32, %struct.whc_qset** %8, align 8
  %33 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %34 = icmp eq %struct.whc_qset* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load %struct.whc*, %struct.whc** %5, align 8
  %40 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %41 = load %struct.urb*, %struct.urb** %6, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call i32 @qset_add_urb(%struct.whc* %39, %struct.whc_qset* %40, %struct.urb* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %49 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %54 = getelementptr inbounds %struct.whc_qset, %struct.whc_qset* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.whc*, %struct.whc** %5, align 8
  %59 = load %struct.whc_qset*, %struct.whc_qset** %8, align 8
  %60 = call i32 @qset_insert_in_sw_list(%struct.whc* %58, %struct.whc_qset* %59)
  br label %61

61:                                               ; preds = %57, %52, %47
  br label %68

62:                                               ; preds = %44
  %63 = load %struct.whc*, %struct.whc** %5, align 8
  %64 = getelementptr inbounds %struct.whc, %struct.whc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = call i32 @usb_hcd_unlink_urb_from_ep(i32* %65, %struct.urb* %66)
  br label %68

68:                                               ; preds = %62, %61
  %69 = load %struct.whc*, %struct.whc** %5, align 8
  %70 = getelementptr inbounds %struct.whc, %struct.whc* %69, i32 0, i32 2
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.whc*, %struct.whc** %5, align 8
  %77 = getelementptr inbounds %struct.whc, %struct.whc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.whc*, %struct.whc** %5, align 8
  %80 = getelementptr inbounds %struct.whc, %struct.whc* %79, i32 0, i32 0
  %81 = call i32 @queue_work(i32 %78, i32* %80)
  br label %82

82:                                               ; preds = %75, %68
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_link_urb_to_ep(i32*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.whc_qset* @get_qset(%struct.whc*, %struct.urb*, i32) #1

declare dso_local i32 @qset_add_urb(%struct.whc*, %struct.whc_qset*, %struct.urb*, i32) #1

declare dso_local i32 @qset_insert_in_sw_list(%struct.whc*, %struct.whc_qset*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32*, %struct.urb*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
