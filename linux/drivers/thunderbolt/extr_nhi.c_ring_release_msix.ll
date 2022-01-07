; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_ring_release_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_ring_release_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ring = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_ring*)* @ring_release_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ring_release_msix(%struct.tb_ring* %0) #0 {
  %2 = alloca %struct.tb_ring*, align 8
  store %struct.tb_ring* %0, %struct.tb_ring** %2, align 8
  %3 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %4 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sle i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %10 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %13 = call i32 @free_irq(i64 %11, %struct.tb_ring* %12)
  %14 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %15 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %19 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ida_simple_remove(i32* %17, i64 %20)
  %22 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %23 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %25 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.tb_ring*) #1

declare dso_local i32 @ida_simple_remove(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
