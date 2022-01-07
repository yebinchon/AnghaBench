; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_deinit_shared_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/hw/mscc/extr_ntb_hw_switchtec.c_switchtec_ntb_deinit_shared_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_ntb = type { i32, i32, i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@LUT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.switchtec_ntb*)* @switchtec_ntb_deinit_shared_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @switchtec_ntb_deinit_shared_mw(%struct.switchtec_ntb* %0) #0 {
  %2 = alloca %struct.switchtec_ntb*, align 8
  store %struct.switchtec_ntb* %0, %struct.switchtec_ntb** %2, align 8
  %3 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %4 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %9 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %8, i32 0, i32 3
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %14 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @pci_iounmap(%struct.TYPE_4__* %12, i64 %15)
  br label %17

17:                                               ; preds = %7, %1
  %18 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %19 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %24 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* @LUT_SIZE, align 4
  %30 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %31 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %34 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_free_coherent(i32* %28, i32 %29, i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %22, %17
  %38 = load %struct.switchtec_ntb*, %struct.switchtec_ntb** %2, align 8
  %39 = getelementptr inbounds %struct.switchtec_ntb, %struct.switchtec_ntb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  ret void
}

declare dso_local i32 @pci_iounmap(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
