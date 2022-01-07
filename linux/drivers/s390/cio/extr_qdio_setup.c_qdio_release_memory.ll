; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_release_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_setup.c_qdio_release_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { i64, i64, %struct.qdio_q**, %struct.qdio_q** }
%struct.qdio_q = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.qaob**, i64 }
%struct.qaob = type { i32 }

@QDIO_MAX_QUEUES_PER_IRQ = common dso_local global i32 0, align 4
@qdio_q_cache = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdio_release_memory(%struct.qdio_irq* %0) #0 {
  %2 = alloca %struct.qdio_irq*, align 8
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qaob*, align 8
  store %struct.qdio_irq* %0, %struct.qdio_irq** %2, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @QDIO_MAX_QUEUES_PER_IRQ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %13 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %12, i32 0, i32 3
  %14 = load %struct.qdio_q**, %struct.qdio_q*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %14, i64 %16
  %18 = load %struct.qdio_q*, %struct.qdio_q** %17, align 8
  store %struct.qdio_q* %18, %struct.qdio_q** %3, align 8
  %19 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %20 = icmp ne %struct.qdio_q* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %11
  %22 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %23 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @free_page(i64 %24)
  %26 = load i32, i32* @qdio_q_cache, align 4
  %27 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %28 = call i32 @kmem_cache_free(i32 %26, %struct.qdio_q* %27)
  br label %29

29:                                               ; preds = %21, %11
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %7

33:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %101, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @QDIO_MAX_QUEUES_PER_IRQ, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %104

38:                                               ; preds = %34
  %39 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %40 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %39, i32 0, i32 2
  %41 = load %struct.qdio_q**, %struct.qdio_q*** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %41, i64 %43
  %45 = load %struct.qdio_q*, %struct.qdio_q** %44, align 8
  store %struct.qdio_q* %45, %struct.qdio_q** %3, align 8
  %46 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %47 = icmp ne %struct.qdio_q* %46, null
  br i1 %47, label %48, label %100

48:                                               ; preds = %38
  %49 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %50 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %62 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.qaob**, %struct.qaob*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.qaob*, %struct.qaob** %65, i64 %67
  %69 = load %struct.qaob*, %struct.qaob** %68, align 8
  store %struct.qaob* %69, %struct.qaob** %6, align 8
  %70 = load %struct.qaob*, %struct.qaob** %6, align 8
  %71 = icmp ne %struct.qaob* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %60
  %73 = load %struct.qaob*, %struct.qaob** %6, align 8
  %74 = call i32 @qdio_release_aob(%struct.qaob* %73)
  %75 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %76 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.qaob**, %struct.qaob*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.qaob*, %struct.qaob** %79, i64 %81
  store %struct.qaob* null, %struct.qaob** %82, align 8
  br label %83

83:                                               ; preds = %72, %60
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %56

87:                                               ; preds = %56
  %88 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %89 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @qdio_disable_async_operation(%struct.TYPE_4__* %90)
  br label %92

92:                                               ; preds = %87, %48
  %93 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %94 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @free_page(i64 %95)
  %97 = load i32, i32* @qdio_q_cache, align 4
  %98 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %99 = call i32 @kmem_cache_free(i32 %97, %struct.qdio_q* %98)
  br label %100

100:                                              ; preds = %92, %38
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %34

104:                                              ; preds = %34
  %105 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %106 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @free_page(i64 %107)
  %109 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %110 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @free_page(i64 %111)
  %113 = load %struct.qdio_irq*, %struct.qdio_irq** %2, align 8
  %114 = ptrtoint %struct.qdio_irq* %113 to i64
  %115 = call i32 @free_page(i64 %114)
  ret void
}

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.qdio_q*) #1

declare dso_local i32 @qdio_release_aob(%struct.qaob*) #1

declare dso_local i32 @qdio_disable_async_operation(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
