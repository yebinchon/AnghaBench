; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-q.c_fhci_del_ed_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-q.c_fhci_del_ed_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_hcd = type { i32 }
%struct.ed = type { i32 }
%struct.td = type { i64, %struct.urb* }
%struct.urb = type { %struct.urb_priv* }
%struct.urb_priv = type { i64, i64, i64 }

@URB_DEL = common dso_local global i64 0, align 8
@USB_TD_INPROGRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fhci_del_ed_list(%struct.fhci_hcd* %0, %struct.ed* %1) #0 {
  %3 = alloca %struct.fhci_hcd*, align 8
  %4 = alloca %struct.ed*, align 8
  %5 = alloca %struct.td*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.urb_priv*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %3, align 8
  store %struct.ed* %1, %struct.ed** %4, align 8
  %8 = load %struct.ed*, %struct.ed** %4, align 8
  %9 = call %struct.td* @peek_td_from_ed(%struct.ed* %8)
  store %struct.td* %9, %struct.td** %5, align 8
  %10 = load %struct.td*, %struct.td** %5, align 8
  %11 = getelementptr inbounds %struct.td, %struct.td* %10, i32 0, i32 1
  %12 = load %struct.urb*, %struct.urb** %11, align 8
  store %struct.urb* %12, %struct.urb** %6, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load %struct.urb_priv*, %struct.urb_priv** %14, align 8
  store %struct.urb_priv* %15, %struct.urb_priv** %7, align 8
  %16 = load %struct.urb_priv*, %struct.urb_priv** %7, align 8
  %17 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @URB_DEL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load %struct.ed*, %struct.ed** %4, align 8
  %23 = call %struct.td* @fhci_remove_td_from_ed(%struct.ed* %22)
  store %struct.td* %23, %struct.td** %5, align 8
  %24 = load %struct.td*, %struct.td** %5, align 8
  %25 = getelementptr inbounds %struct.td, %struct.td* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_TD_INPROGRESS, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = load %struct.td*, %struct.td** %5, align 8
  %32 = call i32 @fhci_done_td(%struct.urb* %30, %struct.td* %31)
  br label %33

33:                                               ; preds = %29, %21
  %34 = load %struct.urb_priv*, %struct.urb_priv** %7, align 8
  %35 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.urb_priv*, %struct.urb_priv** %7, align 8
  %39 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.fhci_hcd*, %struct.fhci_hcd** %3, align 8
  %44 = load %struct.urb*, %struct.urb** %6, align 8
  %45 = call i32 @fhci_urb_complete_free(%struct.fhci_hcd* %43, %struct.urb* %44)
  br label %46

46:                                               ; preds = %42, %33
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

declare dso_local %struct.td* @peek_td_from_ed(%struct.ed*) #1

declare dso_local %struct.td* @fhci_remove_td_from_ed(%struct.ed*) #1

declare dso_local i32 @fhci_done_td(%struct.urb*, %struct.td*) #1

declare dso_local i32 @fhci_urb_complete_free(%struct.fhci_hcd*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
