; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_fill_async_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-dbg.c_fill_async_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_buffer = type { i64, %struct.ohci_hcd* }
%struct.ohci_hcd = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.debug_buffer*)* @fill_async_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fill_async_buffer(%struct.debug_buffer* %0) #0 {
  %2 = alloca %struct.debug_buffer*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.debug_buffer* %0, %struct.debug_buffer** %2, align 8
  %7 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %7, i32 0, i32 1
  %9 = load %struct.ohci_hcd*, %struct.ohci_hcd** %8, align 8
  store %struct.ohci_hcd* %9, %struct.ohci_hcd** %3, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %16 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %17 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @show_list(%struct.ohci_hcd* %15, i64 %18, i64 %19, i32 %22)
  store i64 %23, i64* %4, align 8
  %24 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %25 = load %struct.debug_buffer*, %struct.debug_buffer** %2, align 8
  %26 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %27, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = sub i64 %30, %31
  %33 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @show_list(%struct.ohci_hcd* %24, i64 %29, i64 %32, i32 %35)
  %37 = load i64, i64* %4, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %4, align 8
  %39 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @show_list(%struct.ohci_hcd*, i64, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
