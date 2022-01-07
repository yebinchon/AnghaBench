; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_ring_request_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_ring_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ring = type { i32, i64, %struct.tb_nhi* }
%struct.tb_nhi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MSIX_MAX_VECS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i64 0, align 8
@ring_msix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"thunderbolt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ring*, i32)* @ring_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_request_msix(%struct.tb_ring* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tb_nhi*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tb_ring* %0, %struct.tb_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %10 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %9, i32 0, i32 2
  %11 = load %struct.tb_nhi*, %struct.tb_nhi** %10, align 8
  store %struct.tb_nhi* %11, %struct.tb_nhi** %6, align 8
  %12 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %13 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.tb_nhi*, %struct.tb_nhi** %6, align 8
  %21 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %20, i32 0, i32 1
  %22 = load i32, i32* @MSIX_MAX_VECS, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @ida_simple_get(i32* %21, i32 0, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %32 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %34 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %33, i32 0, i32 2
  %35 = load %struct.tb_nhi*, %struct.tb_nhi** %34, align 8
  %36 = getelementptr inbounds %struct.tb_nhi, %struct.tb_nhi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %39 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @pci_irq_vector(%struct.TYPE_2__* %37, i32 %40)
  %42 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %43 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %45 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %29
  %49 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %50 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %29
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* @IRQF_NO_SUSPEND, align 8
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i64 [ %57, %56 ], [ 0, %58 ]
  store i64 %60, i64* %7, align 8
  %61 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %62 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @ring_msix, align 4
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.tb_ring*, %struct.tb_ring** %4, align 8
  %68 = call i32 @request_irq(i32 %64, i32 %65, i64 %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.tb_ring* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %59, %48, %27, %18
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i64 @pci_irq_vector(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i64, i8*, %struct.tb_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
