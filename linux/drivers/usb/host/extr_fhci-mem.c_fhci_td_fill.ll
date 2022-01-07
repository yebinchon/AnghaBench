; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-mem.c_fhci_td_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-mem.c_fhci_td_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td = type { i32, i32, i64, i64, i64, i32, i32, i32, i32*, %struct.ed*, %struct.urb* }
%struct.fhci_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.urb_priv = type { %struct.td** }
%struct.ed = type { i32 }

@USB_TD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.td* @fhci_td_fill(%struct.fhci_hcd* %0, %struct.urb* %1, %struct.urb_priv* %2, %struct.ed* %3, i64 %4, i32 %5, i32 %6, i32* %7, i32 %8, i64 %9, i64 %10, i32 %11) #0 {
  %13 = alloca %struct.td*, align 8
  %14 = alloca %struct.fhci_hcd*, align 8
  %15 = alloca %struct.urb*, align 8
  %16 = alloca %struct.urb_priv*, align 8
  %17 = alloca %struct.ed*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.td*, align 8
  store %struct.fhci_hcd* %0, %struct.fhci_hcd** %14, align 8
  store %struct.urb* %1, %struct.urb** %15, align 8
  store %struct.urb_priv* %2, %struct.urb_priv** %16, align 8
  store %struct.ed* %3, %struct.ed** %17, align 8
  store i64 %4, i64* %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32* %7, i32** %21, align 8
  store i32 %8, i32* %22, align 4
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i32 %11, i32* %25, align 4
  %27 = load %struct.fhci_hcd*, %struct.fhci_hcd** %14, align 8
  %28 = call %struct.td* @get_empty_td(%struct.fhci_hcd* %27)
  store %struct.td* %28, %struct.td** %26, align 8
  %29 = load %struct.td*, %struct.td** %26, align 8
  %30 = icmp ne %struct.td* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %12
  store %struct.td* null, %struct.td** %13, align 8
  br label %73

32:                                               ; preds = %12
  %33 = load %struct.urb*, %struct.urb** %15, align 8
  %34 = load %struct.td*, %struct.td** %26, align 8
  %35 = getelementptr inbounds %struct.td, %struct.td* %34, i32 0, i32 10
  store %struct.urb* %33, %struct.urb** %35, align 8
  %36 = load %struct.ed*, %struct.ed** %17, align 8
  %37 = load %struct.td*, %struct.td** %26, align 8
  %38 = getelementptr inbounds %struct.td, %struct.td* %37, i32 0, i32 9
  store %struct.ed* %36, %struct.ed** %38, align 8
  %39 = load i32, i32* %19, align 4
  %40 = load %struct.td*, %struct.td** %26, align 8
  %41 = getelementptr inbounds %struct.td, %struct.td* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %20, align 4
  %43 = load %struct.td*, %struct.td** %26, align 8
  %44 = getelementptr inbounds %struct.td, %struct.td* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %21, align 8
  %46 = load %struct.td*, %struct.td** %26, align 8
  %47 = getelementptr inbounds %struct.td, %struct.td* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  %48 = load i32, i32* %22, align 4
  %49 = load %struct.td*, %struct.td** %26, align 8
  %50 = getelementptr inbounds %struct.td, %struct.td* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %18, align 8
  %52 = load %struct.td*, %struct.td** %26, align 8
  %53 = getelementptr inbounds %struct.td, %struct.td* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %23, align 8
  %55 = load %struct.td*, %struct.td** %26, align 8
  %56 = getelementptr inbounds %struct.td, %struct.td* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %24, align 8
  %58 = load %struct.td*, %struct.td** %26, align 8
  %59 = getelementptr inbounds %struct.td, %struct.td* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %25, align 4
  %61 = load %struct.td*, %struct.td** %26, align 8
  %62 = getelementptr inbounds %struct.td, %struct.td* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @USB_TD_OK, align 4
  %64 = load %struct.td*, %struct.td** %26, align 8
  %65 = getelementptr inbounds %struct.td, %struct.td* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.td*, %struct.td** %26, align 8
  %67 = load %struct.urb_priv*, %struct.urb_priv** %16, align 8
  %68 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %67, i32 0, i32 0
  %69 = load %struct.td**, %struct.td*** %68, align 8
  %70 = load i64, i64* %18, align 8
  %71 = getelementptr inbounds %struct.td*, %struct.td** %69, i64 %70
  store %struct.td* %66, %struct.td** %71, align 8
  %72 = load %struct.td*, %struct.td** %26, align 8
  store %struct.td* %72, %struct.td** %13, align 8
  br label %73

73:                                               ; preds = %32, %31
  %74 = load %struct.td*, %struct.td** %13, align 8
  ret %struct.td* %74
}

declare dso_local %struct.td* @get_empty_td(%struct.fhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
