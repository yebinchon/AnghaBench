; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_free_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_free_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32 }
%struct.uhci_td = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"td %p still in list!\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"td %p still in fl_list!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*, %struct.uhci_td*)* @uhci_free_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uhci_free_td(%struct.uhci_hcd* %0, %struct.uhci_td* %1) #0 {
  %3 = alloca %struct.uhci_hcd*, align 8
  %4 = alloca %struct.uhci_td*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %3, align 8
  store %struct.uhci_td* %1, %struct.uhci_td** %4, align 8
  %5 = load %struct.uhci_td*, %struct.uhci_td** %4, align 8
  %6 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %5, i32 0, i32 2
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %11 = call i32 @uhci_dev(%struct.uhci_hcd* %10)
  %12 = load %struct.uhci_td*, %struct.uhci_td** %4, align 8
  %13 = call i32 @dev_WARN(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.uhci_td* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.uhci_td*, %struct.uhci_td** %4, align 8
  %16 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %21 = call i32 @uhci_dev(%struct.uhci_hcd* %20)
  %22 = load %struct.uhci_td*, %struct.uhci_td** %4, align 8
  %23 = call i32 @dev_WARN(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.uhci_td* %22)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.uhci_hcd*, %struct.uhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uhci_td*, %struct.uhci_td** %4, align 8
  %29 = load %struct.uhci_td*, %struct.uhci_td** %4, align 8
  %30 = getelementptr inbounds %struct.uhci_td, %struct.uhci_td* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dma_pool_free(i32 %27, %struct.uhci_td* %28, i32 %31)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_WARN(i32, i8*, %struct.uhci_td*) #1

declare dso_local i32 @uhci_dev(%struct.uhci_hcd*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.uhci_td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
