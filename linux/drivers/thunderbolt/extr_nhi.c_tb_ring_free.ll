; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_tb_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_nhi.c_tb_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ring = type { i64, i32, i32, %struct.TYPE_4__*, i64, i32*, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32**, i32** }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s %d still running\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"freeing %s %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tb_ring_free(%struct.tb_ring* %0) #0 {
  %2 = alloca %struct.tb_ring*, align 8
  store %struct.tb_ring* %0, %struct.tb_ring** %2, align 8
  %3 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %4 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %3, i32 0, i32 3
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %9 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %14 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %19 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  store i32* null, i32** %21, align 8
  br label %32

22:                                               ; preds = %1
  %23 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %24 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %29 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %22, %12
  %33 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %34 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %39 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %45 = call i32 @RING_TYPE(%struct.tb_ring* %44)
  %46 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %47 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dev_WARN(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %37, %32
  %51 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %52 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %57 = call i32 @ring_release_msix(%struct.tb_ring* %56)
  %58 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %59 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %65 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %71 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %74 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @dma_free_coherent(i32* %63, i32 %69, i32* %72, i64 %75)
  %77 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %78 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %77, i32 0, i32 5
  store i32* null, i32** %78, align 8
  %79 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %80 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %82 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %88 = call i32 @RING_TYPE(%struct.tb_ring* %87)
  %89 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %90 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @dev_dbg(i32* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %91)
  %93 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %94 = getelementptr inbounds %struct.tb_ring, %struct.tb_ring* %93, i32 0, i32 2
  %95 = call i32 @flush_work(i32* %94)
  %96 = load %struct.tb_ring*, %struct.tb_ring** %2, align 8
  %97 = call i32 @kfree(%struct.tb_ring* %96)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_WARN(i32*, i8*, i32, i64) #1

declare dso_local i32 @RING_TYPE(%struct.tb_ring*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @ring_release_msix(%struct.tb_ring*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @kfree(%struct.tb_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
