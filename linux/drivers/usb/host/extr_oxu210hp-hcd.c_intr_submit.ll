; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_intr_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_intr_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32 }
%struct.urb = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.list_head = type { i32 }
%struct.ehci_qh = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QH_STATE_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxu_hcd*, %struct.urb*, %struct.list_head*, i32)* @intr_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intr_submit(%struct.oxu_hcd* %0, %struct.urb* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.oxu_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.ehci_qh*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.list_head, align 4
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.urb*, %struct.urb** %6, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %21 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %25 = call %struct.TYPE_9__* @oxu_to_hcd(%struct.oxu_hcd* %24)
  %26 = call i32 @HCD_HW_ACCESSIBLE(%struct.TYPE_9__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @ESHUTDOWN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %84

35:                                               ; preds = %4
  %36 = call i32 @INIT_LIST_HEAD(%struct.list_head* %13)
  %37 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.urb*, %struct.urb** %6, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call %struct.ehci_qh* @qh_append_tds(%struct.oxu_hcd* %37, %struct.urb* %38, %struct.list_head* %13, i32 %39, i32* %43)
  store %struct.ehci_qh* %44, %struct.ehci_qh** %11, align 8
  %45 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %46 = icmp eq %struct.ehci_qh* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %84

50:                                               ; preds = %35
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %52 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QH_STATE_IDLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %58 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %59 = call i32 @qh_schedule(%struct.oxu_hcd* %57, %struct.ehci_qh* %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %84

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %50
  %65 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = load %struct.list_head*, %struct.list_head** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call %struct.ehci_qh* @qh_append_tds(%struct.oxu_hcd* %65, %struct.urb* %66, %struct.list_head* %67, i32 %68, i32* %72)
  store %struct.ehci_qh* %73, %struct.ehci_qh** %11, align 8
  %74 = load %struct.ehci_qh*, %struct.ehci_qh** %11, align 8
  %75 = icmp eq %struct.ehci_qh* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %79 = call %struct.TYPE_9__* @oxu_to_hcd(%struct.oxu_hcd* %78)
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %64, %62, %47, %32
  %85 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %86 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %85, i32 0, i32 0
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.oxu_hcd*, %struct.oxu_hcd** %5, align 8
  %93 = load %struct.urb*, %struct.urb** %6, align 8
  %94 = load %struct.list_head*, %struct.list_head** %7, align 8
  %95 = call i32 @qtd_list_free(%struct.oxu_hcd* %92, %struct.urb* %93, %struct.list_head* %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @oxu_to_hcd(%struct.oxu_hcd*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.ehci_qh* @qh_append_tds(%struct.oxu_hcd*, %struct.urb*, %struct.list_head*, i32, i32*) #1

declare dso_local i32 @qh_schedule(%struct.oxu_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qtd_list_free(%struct.oxu_hcd*, %struct.urb*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
