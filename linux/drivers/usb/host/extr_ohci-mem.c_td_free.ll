; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_td_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-mem.c_td_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ohci_hcd = type { i32, %struct.td** }
%struct.td = type { i32, i32, %struct.td* }
%struct.usb_hcd = type { i64 }

@TD_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"no hash for td %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ohci_hcd*, %struct.td*)* @td_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td_free(%struct.ohci_hcd* %0, %struct.td* %1) #0 {
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca %struct.td*, align 8
  %5 = alloca %struct.td**, align 8
  %6 = alloca %struct.usb_hcd*, align 8
  store %struct.ohci_hcd* %0, %struct.ohci_hcd** %3, align 8
  store %struct.td* %1, %struct.td** %4, align 8
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %7, i32 0, i32 1
  %9 = load %struct.td**, %struct.td*** %8, align 8
  %10 = load %struct.td*, %struct.td** %4, align 8
  %11 = getelementptr inbounds %struct.td, %struct.td* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @TD_HASH_FUNC(i32 %12)
  %14 = getelementptr inbounds %struct.td*, %struct.td** %9, i64 %13
  store %struct.td** %14, %struct.td*** %5, align 8
  %15 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %16 = call %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd* %15)
  store %struct.usb_hcd* %16, %struct.usb_hcd** %6, align 8
  br label %17

17:                                               ; preds = %28, %2
  %18 = load %struct.td**, %struct.td*** %5, align 8
  %19 = load %struct.td*, %struct.td** %18, align 8
  %20 = icmp ne %struct.td* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.td**, %struct.td*** %5, align 8
  %23 = load %struct.td*, %struct.td** %22, align 8
  %24 = load %struct.td*, %struct.td** %4, align 8
  %25 = icmp ne %struct.td* %23, %24
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i1 [ false, %17 ], [ %25, %21 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.td**, %struct.td*** %5, align 8
  %30 = load %struct.td*, %struct.td** %29, align 8
  %31 = getelementptr inbounds %struct.td, %struct.td* %30, i32 0, i32 2
  store %struct.td** %31, %struct.td*** %5, align 8
  br label %17

32:                                               ; preds = %26
  %33 = load %struct.td**, %struct.td*** %5, align 8
  %34 = load %struct.td*, %struct.td** %33, align 8
  %35 = icmp ne %struct.td* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load %struct.td*, %struct.td** %4, align 8
  %38 = getelementptr inbounds %struct.td, %struct.td* %37, i32 0, i32 2
  %39 = load %struct.td*, %struct.td** %38, align 8
  %40 = load %struct.td**, %struct.td*** %5, align 8
  store %struct.td* %39, %struct.td** %40, align 8
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.td*, %struct.td** %4, align 8
  %43 = getelementptr inbounds %struct.td, %struct.td* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %46 = load i32, i32* @TD_DONE, align 4
  %47 = call i32 @cpu_to_hc32(%struct.ohci_hcd* %45, i32 %46)
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %52 = load %struct.td*, %struct.td** %4, align 8
  %53 = call i32 @ohci_dbg(%struct.ohci_hcd* %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.td* %52)
  br label %54

54:                                               ; preds = %50, %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %57 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %62 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.td*, %struct.td** %4, align 8
  %65 = ptrtoint %struct.td* %64 to i64
  %66 = call i32 @gen_pool_free(i64 %63, i64 %65, i32 16)
  br label %76

67:                                               ; preds = %55
  %68 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %69 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.td*, %struct.td** %4, align 8
  %72 = load %struct.td*, %struct.td** %4, align 8
  %73 = getelementptr inbounds %struct.td, %struct.td* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dma_pool_free(i32 %70, %struct.td* %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %60
  ret void
}

declare dso_local i64 @TD_HASH_FUNC(i32) #1

declare dso_local %struct.usb_hcd* @ohci_to_hcd(%struct.ohci_hcd*) #1

declare dso_local i32 @cpu_to_hc32(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @ohci_dbg(%struct.ohci_hcd*, i8*, %struct.td*) #1

declare dso_local i32 @gen_pool_free(i64, i64, i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
