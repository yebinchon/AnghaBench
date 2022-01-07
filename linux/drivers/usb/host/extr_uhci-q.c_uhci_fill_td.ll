; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_fill_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_fill_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.uhci_td = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.uhci_td*, i32, i32, i32)* @uhci_fill_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_fill_td(%struct.uhci_hcd* %0, %struct.uhci_td* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uhci_hcd*, align 8
  %7 = alloca %struct.uhci_td*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %6, align 8
  store %struct.uhci_td* %1, %struct.uhci_td** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i8* @cpu_to_hc32(%struct.uhci_hcd* %11, i32 %12)
  %14 = load %struct.uhci_td*, %struct.uhci_td** %7, align 8
  %15 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i8* @cpu_to_hc32(%struct.uhci_hcd* %16, i32 %17)
  %19 = load %struct.uhci_td*, %struct.uhci_td** %7, align 8
  %20 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.uhci_hcd*, %struct.uhci_hcd** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i8* @cpu_to_hc32(%struct.uhci_hcd* %21, i32 %22)
  %24 = load %struct.uhci_td*, %struct.uhci_td** %7, align 8
  %25 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  ret void
}

declare dso_local i8* @cpu_to_hc32(%struct.uhci_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
